import 'package:boxcolli_web/pages/bio_page.dart';
import 'package:boxcolli_web/pages/home_page.dart';
import 'package:boxcolli_web/pages/project_page.dart';
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
      backgroundColor: Colors.black,
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            groupAlignment: -1.0,
            leading: Icon(Icons.horizontal_rule,
                color: Theme.of(context).colorScheme.primary),
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.circle_outlined,
                    color: Theme.of(context).colorScheme.primary),
                selectedIcon: Icon(Icons.circle, color: Colors.red),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.circle_outlined,
                    color: Theme.of(context).colorScheme.primary),
                selectedIcon: Icon(Icons.circle, color: Colors.amber),
                label: Text('Bio'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.circle_outlined,
                    color: Theme.of(context).colorScheme.primary),
                selectedIcon: Icon(Icons.circle, color: Colors.green),
                label: Text('Project'),
              ),
            ],
            //onDestinationSelected: (int index) => context.read<HomeCubit>().setTab(HomeTab.values[index]),
            onDestinationSelected: (int index) => setState(() {
              _selectedIndex = index;
            }),
            labelType: NavigationRailLabelType.selected,
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
          VerticalDivider(
            color: Theme.of(context).colorScheme.primary,
            thickness: 1,
          ),
          IndexedStack(
            index: _selectedIndex,
            children: [HomePage(), BioPage(), ProjectPage()],
            alignment: Alignment.topCenter,
          )
        ],
      ),
    );
  }
}
