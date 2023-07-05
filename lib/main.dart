import 'package:demo_app/features/counter/counter_page.dart';
import 'package:demo_app/features/people/presentation/bloc/people_bloc.dart';
import 'package:demo_app/features/people/presentation/pages/people_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'injection_container.dart' as di;
import 'injection_container.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          sl.get<PeopleBloc>()..add(const PeopleEvent.getPeople()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const LandingPage(),
      ),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<Widget> bottomTabs = [
    const CounterPage(),
    const PeoplePage(),
  ];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomTabs[index],
      bottomNavigationBar: NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (value) => setState(() => index = value),
          destinations: const [
            NavigationDestination(icon: Icon(Icons.timer), label: "TIMER"),
            NavigationDestination(icon: Icon(Icons.people), label: "PEOPLE")
          ]),
    );
  }
}
