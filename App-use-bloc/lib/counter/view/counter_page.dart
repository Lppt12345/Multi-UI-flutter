import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter.dart';
import '../cubit/counter_cubit.dart';
import 'counter_view.dart';

/// {@template counter_page}
/// A [StatelessWidget] which is responsible for providing a
/// [CounterCubit] instance to the [CounterView].
/// {@endtemplate}
class CounterPage extends StatelessWidget {
  /// {@macro counter_page}
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: CounterView(),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../cubit/counter_cubit.dart';
//
// class CounterPage extends StatelessWidget {
//   const CounterPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Counter'),
//       ),
//       body: BlocBuilder<CounterCubit, int>(
//         builder: (context, count) => Center(
//           child: Text('$count'),
//         ),
//       ),
//       floatingActionButton:
//           Column(mainAxisAlignment: MainAxisAlignment.end, children: [
//         FloatingActionButton(
//           child: const Icon(Icons.add),
//           onPressed: () => context.read<CounterCubit>().increment(),
//         ),
//         const SizedBox(height: 10),
//         FloatingActionButton(
//             child: const Icon(Icons.remove),
//             onPressed: () => context.read<CounterCubit>().decrement())
//       ]),
//     );
//   }
// }