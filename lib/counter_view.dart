import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_counter_bloc_my_default/counter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Counter with Default Bloc')),
      body: Center(
        child: BlocBuilder<CounterBloc, int>(
          builder: (context, state) {
            return Text('$state', style: textTheme.headline2);
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            key: const Key('counterView_increment_floatingActionButton'),
            child: const Icon(Icons.add),
            onPressed: () =>
                context.read<CounterBloc>().add(CounterIncremented()),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_decrement_floatingActionButton'),
            child: const Icon(Icons.remove),
            onPressed: () =>
                context.read<CounterBloc>().add(CounterDecremented()),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            key: const Key('counterView_restore_floatingActionButton'),
            child: const Icon(Icons.loop),
            onPressed: () => context.read<CounterBloc>().add(CounterRestored()),
          ),
        ],
      ),
    );
  }
}
