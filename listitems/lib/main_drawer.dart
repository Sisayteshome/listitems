import 'package:flutter/material.dart';
import 'package:listitems/main.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    margin: const EdgeInsets.only(top: 20, bottom: 10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  const Text(
                    "Sisay Teshome",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  const Text(
                    "sislovebestmanwithdare@gmail.com",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(
                Icons.dashboard,
                size: 30,
              ),
              onPressed: () {
                
              },
            ),
            title: const Text(
              "Dashboard",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemListScreen()));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(
                Icons.data_object,
                size: 30,
              ),
              onPressed: () {},
            ),
            title: const Text(
              "Items",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemListScreen()));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(
                Icons.settings,
                size: 30,
              ),
              onPressed: () {},
            ),
            title: const Text(
              "Settings",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemListScreen()));
            },
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(
                Icons.person,
                size: 30,
              ),
              onPressed: () {},
            ),
            title: const Text(
              "Account",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ItemListScreen()));
            },
          ),
        ],
      ),
    );
  }
}