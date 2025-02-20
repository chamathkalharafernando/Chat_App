import 'package:chat_app/Pages/ChatPage.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem<String>(
                  value: "New Group",
                  child: Text("New Group"),
                ),
                PopupMenuItem<String>(
                  value: "New Broadcast",
                  child: Text("New Broadcast"),
                ),
                PopupMenuItem<String>(
                  value: "WhatsApp Web",
                  child: Text("WhatsApp Web"),
                ),
                PopupMenuItem<String>(
                  value: "Starred Messages",
                  child: Text("Starred Messages"),
                ),
                PopupMenuItem<String>(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          // labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: "CHATS"),
            Tab(text: "STATUS"),
            Tab(text: "CALLS"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Center(child: Icon(Icons.camera_alt, size: 50)),
          ChatPage(),
          Center(child: Text("Status Page")),
          Center(child: Text("Calls Page")),
        ],
      ),
    );
  }
}
