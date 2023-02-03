import 'package:boxcolli_web/theme.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlutterTheme.dark,
      home: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => AppViewState();
}

class AppViewState extends State<AppView> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: <Widget>[
        NavigationRail(
          selectedIndex: _selectedIndex,
          groupAlignment: -1.0,
          destinations: const [
            NavigationRailDestination(
              icon: Icon(
                Icons.circle_outlined,
              ),
              selectedIcon: Icon(Icons.circle),
              label: Text('Home'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.circle_outlined),
              selectedIcon: Icon(Icons.circle),
              label: Text('Bio'),
            ),
            NavigationRailDestination(
              icon: Icon(Icons.circle_outlined),
              selectedIcon: Icon(Icons.circle),
              label: Text('Project'),
            ),
          ],
          //onDestinationSelected: (int index) => context.read<HomeCubit>().setTab(HomeTab.values[index]),
          onDestinationSelected: (int index) => setState(() {
            _selectedIndex = index;
          }),
          labelType: NavigationRailLabelType.selected,
        ),
        IndexedStack(
          index: _selectedIndex,
          children: [],
        )
      ],
    ));
  }
}
