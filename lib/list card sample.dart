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
          home: ListCard(),
        );
      }
  ));
}

class ListCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
          (context, index){
            return Card(
              color: Colors.grey[800],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Image(image: AssetImage("assets/icons/Apple. (1).png"),width: 100,height: 100,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                         maxLines: 1,
                          text: const TextSpan(
                            text: "Name: ",
                            style: TextStyle(color: Colors.yellow),
                            children: [
                              TextSpan(
                                text: "Apple",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              )
                            ])),
                      RichText(
                          maxLines: 1,
                          text: const TextSpan(
                              text: "Unit: ",
                              style: TextStyle(color: Colors.yellow),
                              children: [
                                TextSpan(
                                  text: "20kg",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ])),
                      RichText(
                          maxLines: 1,
                          text: const TextSpan(
                              text: "Price: ",
                              style: TextStyle(color: Colors.yellow),
                              children: [
                                TextSpan(
                                  text: "300",
                                  style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),
                                )
                              ])),

                    ],
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: Text("Add to Cart"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey),
                  )],
              ),
              
            );
          }
      )),
    );
  }

}