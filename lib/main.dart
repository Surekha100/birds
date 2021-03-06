import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main()
{
runApp(new MaterialApp(
   home: new MyApp(),
  debugShowCheckedModeBanner: false,

));
}

class MyApp extends StatefulWidget{
@override

   _State createState()=> new _State();

}
class _State extends State<MyApp>{
  @override
   Widget build (BuildContext context){
    Widget image_carousel=new Container(
      height: 150,//width: 50,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('products/a1.jpg'),
          AssetImage('products/a2.jpg'),
          //AssetImage('products/a3.jpg'),
          //AssetImage('products/a4.jpg'),

        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 200),
        dotSize: 4.0,dotColor: Colors.amber,
        dotSpacing: 10.0,noRadiusForIndicator: true,overlayShadow: false,
        indicatorBgPadding: 8.0,dotBgColor: Colors.white24,
      ),
    );
    return new Scaffold(
        appBar : new AppBar(
          elevation: 0.5,
          backgroundColor: Colors.amber,
          title: new Text("FLYING BIRDS"),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white,),
                onPressed: () {}),
            new IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white,),
                onPressed: () {})
          ],
        ),
       drawer: new Drawer(
         child: new ListView(
           children: <Widget>[
             //header
             new UserAccountsDrawerHeader(accountName: Text('USER'),
               accountEmail: Text('test@flyingbirds.com'),
               currentAccountPicture: GestureDetector(
                 child: new CircleAvatar(
                   backgroundColor: Colors.grey,
                   child: Icon(Icons.person, color: Colors.white,),
                 ),
               ),
               decoration: new BoxDecoration(
                   color: Colors.amber
               ),
             ),
//              Body
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Home'),
                 leading: Icon(Icons.home,color: Colors.black,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('My Account'),
                 leading: Icon(Icons.person,color: Colors.amber,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('My Orders'),
                 leading: Icon(Icons.shopping_basket,color: Colors.amber,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Categories'),
                 leading: Icon(Icons.dashboard,color: Colors.amber,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('My Wishlist'),
                 leading: Icon(Icons.favorite,color: Colors.red,),
               ),
             ),
             Divider(),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Settings'),
                 leading: Icon(Icons.settings,color: Colors.blue,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('Register as a Seller'),
                 leading: Icon(Icons.person, color: Colors.grey,),
               ),
             ),
             InkWell(
               onTap: (){},
               child: ListTile(
                 title: Text('About'),
                 leading: Icon(Icons.help, color: Colors.green,),
               ),
             ),
           ],
         ),
       ),

      body: new ListView(
        children: <Widget>[
          image_carousel,
          new Padding(padding: const EdgeInsets.all(8.0)),
          new Text('   Categories')
        ],
      )

      /*Container(
           padding: new EdgeInsets.all(32.0),
           child: new Center(
              child: new Column(
                 children: <Widget>[
                    new Text('LOOK FORWARD')
                 ],
              ),
           ),
        ),*/
     );
  }
}
