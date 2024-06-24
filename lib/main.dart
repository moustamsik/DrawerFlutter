import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      home: Scaffold(
      
        appBar: AppBar(
          title: Text("Drawer"),
        ),
        drawer: Drawer(
          child: Container(
            padding: EdgeInsets.all(16),
            child: ListView(
              children: [
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset("assets/images/p2.jpg",fit: BoxFit.cover,),
                        ),
                    ),
                    Expanded(
                      child: ListTile(
                        title: Text("Moustamsik"),
                        subtitle: Text("moustamsik@gmail.com"),
                      ))
                  ],
                ),
                Divider(
                  thickness: 7,
                ),
                ListTile(
                  onTap: (){
                  
                  },
                  leading: Icon(Icons.home),
                  title: Text("Home"),
                ),
                    Divider(
                  thickness: 7,
                ),
                ListTile(
                  onTap: (){
                    print("About us");
                  },
                  leading: Icon(Icons.help),
                  title: Text("About us"),
                ),
                    Divider(
                  thickness: 7,
                ),
                ListTile(
                  onTap: (){
                    print("Contact us");
                  },
                  leading: Icon(Icons.phone),
                  title: Text("Contact us"),
                ),
                    Divider(
                  thickness: 7,
                ),
                ListTile(
                  onTap: (){
                    print("Log out");
                  },
                  leading: Icon(Icons.exit_to_app),
                  title: Text("Logout"),
                )
              ],
            ),
          ),
        ),
    
        

      ),
    );
  }
}