import 'package:flutter/material.dart';

import 'counter/view/counter_page.dart';

/// {@template counter_app}
/// A [MaterialApp] which sets the `home` to [CounterPage].
/// {@contemplate}
class CounterApp extends MaterialApp {

  const CounterApp({Key? key}) : super(key: key, home: const CounterPage());
}