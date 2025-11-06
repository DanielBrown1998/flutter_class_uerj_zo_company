import 'package:curso/view/components/edit_appbar_widget.dart';
import 'package:curso/viewmodels/home/home_viewmodels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeProvider provider;
  Brightness? _lastBrightness;

  @override
  void initState() {
    super.initState();
    // Access the provider after the first frame is rendered
    provider = context.read<HomeProvider>();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // This is called when the dependencies change (e.g., when the provider updates)
    final brightness = MediaQuery.of(context).platformBrightness;
    if (_lastBrightness != brightness) {
      _lastBrightness = brightness;
      provider.onThemeChanged(brightness);
    }
  }

  @override
  void dispose() {
    provider.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant HomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.title != widget.title) {
      // Handle title change if necessary
    }
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<HomeProvider>();
    final theme = Theme.of(context);
    return Scaffold(
      appBar: EditAppbarWidget(
        title: 'Home Page',
        onClose: () {
          // Handle close action
        },
        onDone: () {
          // Handle done action
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('${provider.counter}', style: theme.textTheme.headlineMedium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: provider.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
