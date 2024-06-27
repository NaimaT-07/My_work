
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Lottery.dart';
import 'package:untitled/wattsapp.dart';

class calculater extends StatefulWidget {
  static const String id = "cal";
  const calculater({super.key});

  @override
  State<calculater> createState() => _calculaterState();
}

class _calculaterState extends State<calculater> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          //backgroundColor: Colors.teal,
          child: ListView(
            children: [
              //DrawerHeader(child: Text("This is My App")),
              const UserAccountsDrawerHeader(
                // currentAccountPicture: CircleAvatar(
                //   backgroundImage: Image(
                //       image: NetworkImage("https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.simplilearn.com%2Fimage-processing-article&psig=AOvVaw3rW0Z3WB-blz_muBRIjouD&ust=1719482886007000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCODihImD-YYDFQAAAAAdAAAAABAE")),
                // ),
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
                  accountName:Text("Naima Tajammal"),
                  accountEmail: Text("naima@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_filled),
                title: const Text("Lottery App"),
                onTap: (){
                  Navigator.pushNamed(context, LotteryApp.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.calculate),
                title: const Text("Calculator"),
                onTap: ()
                {
                  Navigator.pushNamed(context, calculater.id);
                },
              ),
              ListTile(
                leading: Icon(Icons.call),
                title: const Text("WattsApp"),
                onTap: (){
                  Navigator.pushNamed(context, wattsapp.id);
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(child: Text("Calculator")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.teal,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, LotteryApp.id);
                  },
                  child: const Center(child: Text("Go to Lottery App",
                  style: TextStyle(color: Colors.black,
                  ),),),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
