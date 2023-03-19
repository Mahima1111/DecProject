import 'package:flutter/material.dart';

class PhoneList extends StatelessWidget {
  var phone    = <String>['Phone 1', 'Phone 2', 'Phone 3', 'Phone 4', 'Phone 5'];
  var phoneimg = <String>["https://images.firstpost.com/fpimages/1200x800/fixed/jpg/2017/09/Max-380.jpg",
    "https://images.bewakoof.com/t320/i-m-lazy-xiaomi-redmi-9-power-mobile-cover-465397-1642688782-1.jpg",
    "https://i0.wp.com/www.mobilebd.co/wp-content/uploads/2021/04/Apple-iPhone-13-Pro-Max-Official-Image--500x500.jpg",
    "https://priceintanzania.com/wp-content/uploads/2022/05/OnePlus-Ace-Racing-edition-300x300.jpg",
    "https://static.toiimg.com/thumb/resizemode-4,msid-80635360,width-250,imgv-1/80635360.jpg"
  ];
  var price    = <int>[800, 700, 500, 300, 100];
  var color    = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Tech Shop"),
      ),
      body: ListView.builder(
        itemCount:phone.length,
        itemBuilder: (context,index) {
      return Card(
        color: color[index],
        child: ListTile(
          leading: Container(
            width: 80,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
              image: NetworkImage(phoneimg[index]),
            ),),
          ),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(phone [index],textAlign: TextAlign.center,),
          ),
          subtitle: Text("Amazing Phone",textAlign: TextAlign.center),
          trailing: Text(" \$${price[index]} "),
        ),
      );
    },

          ),
    );
  }
}

