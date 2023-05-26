import 'package:flutter/material.dart';
import 'package:listitems/item_detail_screen.dart';
import 'package:provider/provider.dart';
import 'items_provider.dart';
import 'main_drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => Items(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ItemListScreen(),
      ),
    );
  }
}

class ItemListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemsData = Provider.of<Items>(context);
    final items = itemsData.items;

    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        elevation: 19.0,
        centerTitle: true,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.data_object),
              onPressed: () {},
            ),
            const SizedBox(width: 30),
            Container(
              child: const Text("List of items"),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, index) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 201, 201, 201)),
              borderRadius: const BorderRadius.all(Radius.circular(10))
            ),
            margin: const EdgeInsets.all(8.0), 
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                  
                ),
                child: ClipOval(
                  child: Image.network(
                    items[index].imageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                
              ),
              
              title: Text(items[index].name),
              subtitle: Text('Price: \$${items[index].price.toStringAsFixed(2)}'),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {},
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemDetailScreen(item: items[index]),
                  ),
                );
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your code to handle the button press
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
