import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(DevicePreview(
      enabled: !kReleaseMode,
      builder: (context){
        return MaterialApp(
          useInheritedMediaQuery: true,
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          home: List_custom(),);
      }
  ));
}


class List_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: const Text("List_Custom"),
       leading: const Icon(Icons.arrow_back_ios_new_outlined),
       actions: const [
         Icon(Icons.shopping_cart),
       ],
     ),
     body: ListView.custom(
         // childrenDelegate: SliverChildListDelegate(
         //   ///creating list of card way - 1
         //   List.generate(30, (index) {
         //     return const Card(
         //       color: Colors.purple,
         //       child: Text("Card1"),
         //
         //     );
         //   })

           ///creating list of card way - 2
      // const [
      //    Card(
      //      color: Colors.purple,
      //      child: Text("Card 1"),
      //    ),
      //    Card(
      //      color: Colors.red,
      //      child: Text("Card1"),
      //    ),
      //    Card(
      //      color: Colors.green,
      //      child: Text("Card1"),
      //    ),
      //    Card(
      //      color: Colors.yellow,
      //      child: Text("Card1"),
      //    ),
      //    Card(
      //      color: Colors.orange,
      //      child: Text("Card1"),
      //    ),
      //  ])
       childrenDelegate: SliverChildBuilderDelegate(
           (context, index){
             return const Card(
               color: Colors.yellow,
               child: Text("Card 1"),
             );

           }
       ),


     ),
   );
  }
}
