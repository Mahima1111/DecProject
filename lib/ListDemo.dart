import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:   [
          const Center(
      child: Text(
      "My Contacts",
        style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
      )),
          Card(
              color: Colors.red,
              child: ListTile(
              //leading: Icon(Icons.person),
              leading: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1507019403270-cca502add9f8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80")),
              title: const Text("Mahima"),
              subtitle: const Text("7909171194"),
              trailing: Wrap(
                  children: const [
                Icon(Icons.message),
                SizedBox(width: 20,),
                Icon(Icons.phone)
                  ]),
            )),
          
        ],
      ),
    );
  }


}