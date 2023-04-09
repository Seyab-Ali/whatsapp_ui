import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            bottom: const TabBar(
              tabs: [
                Icon(Icons.camera_alt),
                Text("Chats"),
                Text("Status"),
                Text("Calls"),
              ],
            ),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 15,
              ),
              // Icon(Icons.more_horiz),
              // SizedBox(
              //   width: 15,
              //   )
              PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => [
                  const PopupMenuItem(
                    value: 1,
                    child: Text("New Group"),
                  ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text("Setting"),
                  ),
                  const PopupMenuItem(
                    value: 3,
                    child: Text("Logout"),
                  )
                ],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              const Text("Camera"),
              ListView.builder(
                itemCount: 55,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("Seyab Ali"),
                    subtitle: Text("where is my Laptop"),
                    trailing: Text("10:03 PM"),
                    leading: CircleAvatar(
                      maxRadius: 30,
                      //   backgroundImage:
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 55,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("Seyab Ali"),
                    subtitle: Text("45s ago"),
                    trailing: Text("10:03 PM"),
                    leading: CircleAvatar(
                      maxRadius: 30,
                      //   backgroundImage:
                    ),
                  );
                },
              ),
              ListView.builder(
                itemCount: 55,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text("Seyab Ali"),
                    subtitle: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.phone),
                    ),
                    trailing: Text("10:03 PM"),
                    leading: CircleAvatar(
                      maxRadius: 30,
                      //   backgroundImage:
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }
}
