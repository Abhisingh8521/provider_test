import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/sqflite_with_provider_test/provider/music_provider.dart';
import 'package:provider_test/sqflite_with_provider_test/upadte_music_details.dart';

import 'add_music_details.dart';
import 'favrouits/favrouits_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    if (!mounted) return;
    Provider.of<MusicProvider>(context, listen: false).getAllMusics();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Read Data"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => FavorateScreen()));
            },
            icon: Icon(Icons.favorite),
            color: Colors.lightGreen,
            iconSize: 30,
          )
        ],
      ),
      body: Consumer<MusicProvider>(
        builder: (BuildContext context, value, Widget? child) {
          var data = value.musics;
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.blue),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Title :-${data[index].title}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Text("produser :-${data[index].producer}",
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18)),
                          Text("Artist :-${data[index].artist}"),
                          Text("company Details :-${data[index].company}"),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {

                             Navigator.push(context, MaterialPageRoute(builder: (c) => UpdateDetails(data[index])));
                            },
                            icon: Icon(Icons.update, color: Colors.green),
                          ),
                          IconButton(
                            onPressed: () {

                              value.delete(index);
                            },
                            icon: Icon(Icons.delete, color: Colors.red),
                          ),
                          Consumer<MusicProvider>(
                            builder: (BuildContext context, value, Widget? child) {
                              return IconButton(
                                onPressed: () {
                                  if (data[index].isFavorite == 1) {
                                    value.removeFromFavorite(data[index]);
                                  } else {
                                    value.addIntoFavorite(data[index]);
                                  }
                                },
                                icon: data[index].isFavorite == 1
                                    ? const Icon(Icons.favorite, color: Colors.red)
                                    : Icon(Icons.favorite_border),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (c) => AddData()));
            },
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
