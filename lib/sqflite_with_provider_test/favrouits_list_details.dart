import 'package:flutter/material.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({super.key});

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Favorite List'),
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Title"),
                        SizedBox(width: 150,),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.delete_rounded,color: Colors.redAccent,)),
                        IconButton(onPressed: () {}, icon: Icon(Icons.favorite,color: Colors.grey,)),
                      ],
                    ),
                    Text("Artist"),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Producer"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Company details"),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text("Relese date"),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}