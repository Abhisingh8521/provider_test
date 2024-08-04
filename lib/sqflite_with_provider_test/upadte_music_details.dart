import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/sqflite_with_provider_test/model/datamodel.dart';
import 'package:provider_test/sqflite_with_provider_test/provider/music_provider.dart';

class UpdateDetails extends StatefulWidget {
  final MusicModel data;

   UpdateDetails(MusicModel data, {Key? key, required this.data}) : super(key: key);

  @override
  State<UpdateDetails> createState() => _UpdateDetailsState();

}

class _UpdateDetailsState extends State<UpdateDetails> {
  late TextEditingController titleController;
  late TextEditingController producerController;
  late TextEditingController companyDetailsController;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.data.title);
    producerController = TextEditingController(text: widget.data.producer);
    companyDetailsController = TextEditingController(text: widget.data.company);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(hintText: 'Title'),
            ),
            TextField(
              controller: producerController,
              decoration: const InputDecoration(hintText: 'Producer'),
            ),
            TextField(
              controller: companyDetailsController,
              decoration: const InputDecoration(hintText: 'Company Details'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {


                Provider.of<MusicProvider>(context, listen: false).updateData(
                  // widget.data.id,
                  // titleController.text,
                  // producerController.text,
                  // companyDetailsController.text,

                );
                Navigator.pop(context);
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
