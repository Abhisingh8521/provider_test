import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/provider/Increase_counter_page.dart';
import 'package:provider_test/provider/counter_provider.dart';
import 'package:provider_test/provider_sqf_lite/add_data.dart';
import 'package:provider_test/provider_sqf_lite/provider.dart';
import 'package:provider_test/provider_sqf_lite/read_data.dart';
import 'package:provider_test/sqflite_with_provider_test/add_music_details.dart';
import 'package:provider_test/sqflite_with_provider_test/provider/music_provider.dart';
import 'package:provider_test/sqflite_with_provider_test/view_music_details.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<MusicProvider>(create: (c) => MusicProvider())
    ],
    child: const MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Consumer<CountProvider>(
//               builder: (BuildContext context, value, Widget? child) {
//                 return Text(
//                   '${value.counter}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Consumer<CountProvider>(
//                     builder: (BuildContext context, value, Widget? child) {
//                   return FloatingActionButton(
//                       onPressed: value.increaseCounter,
//                       tooltip: 'Increment',
//                       child: const Icon(Icons.add));
//                 }),
//                 Consumer<CountProvider>(
//                     builder: (BuildContext context, value, Widget? child) {
//                   return FloatingActionButton(
//                       onPressed: value.decreaseCounter,
//                       tooltip: 'Decrement',
//                       child: const Icon(Icons.remove));
//                 }),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
