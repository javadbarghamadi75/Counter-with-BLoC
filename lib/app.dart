import 'package:flutter/material.dart';
import 'package:flutter_counter_bloc_my_default/counter_page.dart';

class App extends MaterialApp {
  const App({Key? key})
      : super(
          key: key,
          home: const CounterPage(),
        );
}
