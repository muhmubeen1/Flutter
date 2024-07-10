import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.teal,
          title: const Text(
            "Whatsapp",
            style: TextStyle(color: Colors.white),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
            Tab(child: Text("Chats", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Status", style: TextStyle(color: Colors.white))),
            Tab(child: Text("Calls", style: TextStyle(color: Colors.white))),
          ]),
          actions: [
            const Icon(Icons.search, color: Colors.white),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon:
                    const Icon(Icons.more_horiz_outlined, color: Colors.white),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("Group"),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text("Settings"),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text("Logout"),
                      ),
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(
          children: [
            const Text("Camera"),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => const ListTile(
                title: Text("Emily"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/3764119/pexels-photo-3764119.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                subtitle: Text("Hey how are you ?"),
                trailing: Text("3:30PM"),
              ),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                title: const Text("Emily"),
                leading: const CircleAvatar(
                  radius: 60,
                  backgroundColor: Color.fromARGB(255, 82, 194, 60),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/3764119/pexels-photo-3764119.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                ),
                subtitle: Text(index % 2 == 0 ? "3:00AM" : "10:00AM"),
              ),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => ListTile(
                title: const Text("Emily"),
                leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/3764119/pexels-photo-3764119.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                subtitle:
                    Text(index % 2 == 0 ? "Today at 10pm" : "Yesterday at 3pm"),
                trailing: Icon(index % 2 == 0 ? Icons.video_call : Icons.call,
                    color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
