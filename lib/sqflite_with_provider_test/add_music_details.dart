import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/sqflite_with_provider_test/provider/music_provider.dart';
import 'package:provider_test/sqflite_with_provider_test/view_music_details.dart';


import 'db_helper/music_db_helper.dart';
import 'model/datamodel.dart';

class AddData extends StatefulWidget {
  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController titleController = TextEditingController();
  TextEditingController artistController = TextEditingController();
  TextEditingController producerController = TextEditingController();
  TextEditingController companyDetailsController = TextEditingController();
  var time = DateTime.now().toString();
  late DBHelper dbHandler;
  List<MusicModel> items = [];
  @override
  // void initState() {
  //   super.initState();
  //   dbHandler = DBHelper();
  // }

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MusicProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Add Data'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 50),
                TextFormField(
                  controller: titleController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your title',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: artistController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your artist name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a artist name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: producerController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your producer name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a producer name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: companyDetailsController,
                  decoration: const InputDecoration(
                    hintText: 'Enter your companyDetails',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a companyDetails';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 60),
                ElevatedButton(
                    onPressed: () {
                      provider.addMusic(MusicModel(
                          company: companyDetailsController.text,
                          releaseDate: DateTime.now().toString(),
                          title: titleController.text,
                          artist: artistController.text,
                          isFavorite: 0,
                          producer: producerController.text));
                      titleController.clear();
                      artistController.clear();
                      artistController.clear();
                      Navigator.pop(context);
                    },
                    child: Text("Submit")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
