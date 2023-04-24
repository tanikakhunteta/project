import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:regex_test/provider/live_provider.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<LiveScreen> {
  List selectedItem = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider Use"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.favorite_outline),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Consumer<LiveProvider>(
            builder: (context, value, child) {
              return ListTile(
                onTap: () {
                  if (value.selectedItem.contains(index)) {
                    value.remove_favourite(index);
                  } else {
                    value.add_favourite(index);
                  }
                },
                trailing: Icon(value.selectedItem.contains(index)
                    ? Icons.favorite
                    : Icons.favorite_outline),
                title: Text("Item No " + index.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
