import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/counter_provider.dart';

class DecreaseCounterPage extends StatefulWidget {
  const DecreaseCounterPage({super.key});

  @override
  State<DecreaseCounterPage> createState() => _DecreaseCounterPageState();
}

class _DecreaseCounterPageState extends State<DecreaseCounterPage> {
  // var CountProviderObj = CountProvider();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Decrease  Page'),
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
                      onPressed: value.decreaseCounter,
                      tooltip: 'Decreament',
                      child: const Icon(Icons.remove)
                  );
                }
            ),

          ],
        ),
      ),
    );
  }
}
