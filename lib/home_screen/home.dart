import 'package:flutter/material.dart';
class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  List folderList=[
    "Android",
    "Audiobook",
    "DCIM",
    "Document",
    "Download",
    "Movies",
    "Music",
    "Notification",
    "Podcast",
    "Rington",
    "Subtitles",
    "Xender",
    "VidMate",
    "Samsung",
    "Pictures",
    "Telegram",
    "Linkdin",
    "Images",
    "Data",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("hello"),
            centerTitle: true,
          ),
          body: Center(
            child: Scrollbar(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisExtent: 70,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ), itemBuilder: (context, index) => folder(folderList[index]),itemCount: folderList.length,),
            ),
          ),
        ),
    );
  }
  Widget folder(String name)
  {
    return Container(
      height: 25,
      width: 25,
      color: Colors.cyanAccent.shade100,
      child:Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Icon(Icons.folder,color: Colors.amberAccent,size: 25),
            Text("${name}"),
          ],
        ),
      ),
    );
  }
}
