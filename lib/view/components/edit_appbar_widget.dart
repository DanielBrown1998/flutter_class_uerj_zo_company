import 'package:flutter/material.dart';

class EditAppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const EditAppbarWidget({
    super.key,
    required this.title,
    required this.onClose,
    required this.onDone,
  });

  final void Function() onClose;
  final void Function() onDone;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Material(
      color: theme.colorScheme.inversePrimary,
      child: SafeArea(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(top: 4, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 12,
              children: [
                Flexible(
                  flex: 1,
                  child: IconButton(
                    onPressed: onClose,
                    icon: const Icon(Icons.close, color: Colors.white),
                    tooltip: 'Close AppBar Widget',
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 3,
                        child: Text(
                          title,
                          style: theme.textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: PopupMenuButton<String>(
                          onSelected: (String value) {
                            // Handle menu selection
                          },
                          itemBuilder: (BuildContext context) =>
                              <PopupMenuEntry<String>>[
                                const PopupMenuItem<String>(
                                  value: 'option1',
                                  child: Text('Option 1'),
                                ),
                                const PopupMenuItem<String>(
                                  value: 'option2',
                                  child: Text('Option 2'),
                                ),
                              ],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: IconButton(
                    onPressed: onDone,
                    icon: const Icon(Icons.check, color: Colors.white),
                    tooltip: 'Done',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
