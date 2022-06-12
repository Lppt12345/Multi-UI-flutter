import 'package:bloc/bloc.dart';
import 'package:demo_bloc_1/counter/view/counter_page.dart';
import 'package:flutter/widgets.dart';

import 'app.dart';
import 'counter_observer.dart';

void main() {
  // chạy CounterApp và theo dõi sự thay đổi của state
  // Phải chạy Counter App vì nó có MaterialApp
  BlocOverrides.runZoned(
        () => runApp(const CounterApp()),
    blocObserver: CounterObserver(),
  );
}