
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/music_provider.dart';

class FavorateScreen extends StatefulWidget {
  const FavorateScreen({super.key});

  @override
  State<FavorateScreen> createState() => _FavorateScreenState();
}
class _FavorateScreenState extends State<FavorateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Favorite List"),
      ),
      body: Consumer<MusicProvider>(builder: (BuildContext context, value, Widget? child) {
        var data = value.getAllFavoriteMusic();
        return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
              child: SizedBox(
                width: 380,
                height: 100,
                child: Container(


                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Title :-${data[index].title}"),
                          Text("produser :-${data[index].producer}"),
                          Text("Artist :-${data[index].artist}"),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [

                          IconButton(onPressed: () {
                            value.removeFromFavorite(data[index]);
                            // provider.removeItem(index);
                            // Navigator.pop(context);
                          }, icon: Icon(Icons.delete,color: Colors.red,),)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (c) => AddMusic(context: context)));
      //   },
      //   child: Icon(Icons.add),
      // ),

    );
  }
}
