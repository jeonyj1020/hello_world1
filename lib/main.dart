import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Hello World Travel Title",
     home: Scaffold(
       appBar: AppBar(
         title: Text("Hello World Travel App"),
         backgroundColor: Colors.deepPurple,
       ),
       body: Builder(builder:  (context)=> SingleChildScrollView(
         child: Center(
           child: Column(children: [
             Text('Hello World Travel',
               style: TextStyle(
                 fontSize: 26,
                 fontWeight: FontWeight.bold,
                 color: Colors.blue[800],),
             ),
             Text(
               'Discover the World',
               style: TextStyle(
                   fontSize: 20,
                   color: Colors.deepPurple
               ),
             ),
             Image.network('https://image.shutterstock.com/image-vector/illustration-vector-graphic-alarm-icon-600w-1929591077.jpg',
               height: 350,),
             ElevatedButton(
               child: Text("Contact Us"),
               onPressed: ()=>contactUs(context),),
           ],),
         ),
       ))
     )
   );
  }

  void contactUs(BuildContext context){
    showDialog(
      context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('Mail us at hello@world.com'),
          actions: <Widget>[
            TextButton(onPressed: ()=>Navigator.of(context).pop(), child: Text('Close'))
          ],
        );
      }
    );
  }
}

