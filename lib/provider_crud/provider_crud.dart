//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_test/provider_crud/provider.dart';
//
// class TestScreen extends StatelessWidget {
//   TestScreen({super.key});
//   // var numbers = [1,2,3,4,5,3,2,1,3,4];
//   var numCon = TextEditingController();
//   var upNum = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//               child: Consumer<TestProvider>(builder: (BuildContext context, value, Widget? child) {
//                 var numData = value.getNumber;
//                 return ListView.builder(
//                     itemCount: numData.length,
//                     itemBuilder: (c, i) => ListTile(
//                       leading: IconButton(
//                         onPressed: () {
//                           value.deleteNumber(i);
//                           // numData.removeAt(i);
//                         },
//                         icon: Icon(Icons.delete),
//                       ),
//                       title: Text(numData[i].toString()),
//                       trailing: IconButton(
//                           onPressed: () {
//                             updateNumber(i, context);
//                           }, icon: Icon(Icons.edit)),
//                     ));
//               },)),
//           TextFormField(
//             controller: numCon,
//           ),
//           ElevatedButton(onPressed: (){
//             Provider.of<TestProvider>(context,listen: false).addNumber(int.parse(numCon.text));
//             // numbers.add(int.parse(numCon.text));
//           }, child: Text("Add")),
//           // Expanded(child: updateNumber(0))
//         ],
//       ),
//     );
//   }
//
//   updateNumber(int index,BuildContext context){
//     return showModalBottomSheet(context: context, builder: (c){
//       upNum = TextEditingController(text:"0" );
//       return Column(
//         children: [
//           TextFormField(
//             controller: upNum,
//           ),
//           ElevatedButton(onPressed: (){
//             Provider.of<TestProvider>(context,listen: false).updateNumber(index,int.parse(upNum.text));
//             Navigator.pop(context);
//             // numbers[index] = int.parse(numCon.text);
//             // numbers.add(int.parse(numCon.text));
//           }, child: Text("Update"))
//         ],
//       );
//     });
//   }
// }