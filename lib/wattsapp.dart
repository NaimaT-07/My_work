
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class wattsapp extends StatefulWidget {
  static const String id = "wattsapp";
  const wattsapp({super.key});

  @override
  State<wattsapp> createState() => _wattsappState();
}

class _wattsappState extends State<wattsapp> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WattsApp",
             style: TextStyle(color: Colors.white,
             fontWeight: FontWeight.bold),),
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text("Camera"),
                ),
                Tab(
                  child: Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_horiz_outlined),
                  itemBuilder: (context,) => const[
                      PopupMenuItem(
                          value: 1,
                          child: Text("New Group"),),
                    PopupMenuItem(
                      value: 2,
                      child: Text("Settings"),),
                    PopupMenuItem(
                      value: 1,
                      child: Text("Linked Devices"),),
                    PopupMenuItem(
                      value: 1,
                      child: Text("New BroadCast"),),
                  ]),
              const SizedBox(
                width: 30,
              )

            ],

          ),
          body: TabBarView(
            children: [
              Icon(Icons.camera_enhance),

           //-----------------------------------------
          //                  Chat
         //---------------------------------------

              ListView.builder(
                itemCount: 20,
                  itemBuilder: (context,index){
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"),
                      ),
                      title: Text("Hermes"),
                      subtitle: Text("Waiting fot your reply"),
                      trailing: Text("6:40pm"),
                    );
                  }),
              //-----------------------------------------
              //                  Status
              //---------------------------------------

              Column(
                  children:[
                    const SizedBox(
                      height: 20,
                    ),
                    ListTile(
                      leading: Container(
                        child: Icon(Icons.person,
                        color: Colors.white,
                        size: 30,),
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(100)
                        ),
                      ),
                      title: const Text("My Status",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      subtitle: Text("Tap to add status update"),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text("Recent Updates", style: TextStyle(
                            fontWeight: FontWeight.bold,
                          color: Colors.grey
                        ),),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                          itemCount: 20,
                          itemBuilder: (context, index){
                            return  ListTile(
                              leading: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3
                                ),
                                shape: BoxShape.circle
                              ),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage("https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"),
                              ),),
                              title: Text("David Kalin"),
                              subtitle: Text("50 minutes ago")

                            );
                          }),
                    ),]
              ),

              //-----------------------------------------
              //                  Call
              //---------------------------------------

              Column(
                children:[
                  const SizedBox(
                    height: 20,
                  ),
                  ListTile(
                    leading: Container(
                      child: Icon(Icons.link,
                      color: Colors.white,),
                      height: 100,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(100)
                      ),
                    ),
                    title: const Text("Create Call Link",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                    subtitle: Text("Share a link for your WattsApp Call"),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text("Recent", style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                    itemCount: 20,
                      itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg"),
                      ),
                      title: Text("David Kalin"),
                      subtitle: Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: [
                            Icon(Icons.call_received_outlined,
                            color: Colors.green,),
                            SizedBox(
                              width: 5,
                            ),
                            Text("Today 9:40 am")
                          ],
                        ),
                      ),
                      trailing: Icon(index == 0 ? Icons.call : Icons.video_call,
                      color: Colors.green,),
                    );
                                    }),
                  ),]
              )
            ],
          )
        ));
  }
}
