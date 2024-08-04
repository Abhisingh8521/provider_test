import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/Decrease_counter_page.dart';
import 'package:provider_test/provider/counter_provider.dart';

class IncreaseCounterPage extends StatefulWidget {
  const IncreaseCounterPage({super.key});

  @override
  State<IncreaseCounterPage> createState() => _IncreaseCounterPageState();
}
class _IncreaseCounterPageState extends State<IncreaseCounterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Increase Page'),
        actions: [
          InkWell(
            child: const Icon(Icons.forward),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DecreaseCounterPage(),
                  ));
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CountProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return Text(
                  value.counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            Consumer<CountProvider>(
                builder: (BuildContext context, value, Widget? child) {
              return FloatingActionButton(
                  onPressed: value.increaseCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add));
            }),
          ],
        ),
      ),
    );
  }
}
