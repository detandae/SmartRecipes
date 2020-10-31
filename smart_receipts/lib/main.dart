import 'package:flutter/material.dart';
import "frigider.dart";
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  runApp(MaterialApp(
    title: 'Smart Recipes',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => HomePage(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/frigider': (context) => FrigiderPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      home: FrigiderPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body:MenuListView(),
    );
  }
}




class MenuListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children:<Widget>[
          MenuItem1(),
          MenuItem2(),
          MenuItem3(),
        ]
    );
  }
}


class MenuItem1 extends StatelessWidget {
  MenuItem1();
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
        onTap: (){
          print("MenuItem1 clicked");
          Navigator.pushNamed(context, '/frigider');
        },
    child: Container(

      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.black26),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child:Center(
        child:
        Stack(

          alignment: Alignment(0.0, 0.0),
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'images/frigider.jpg',
                width: 600,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            Container(
                alignment: Alignment(0.0, 0.0),
                child: Text(
                  'Frigider',
                  style: TextStyle(color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 50.0),
                )),
          ],
        )
      ),

    )
    );
  }
}

class MenuItem2 extends StatelessWidget {
  MenuItem2();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.black26),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child:Center(
          child:
          Stack(
            alignment: Alignment(0.0, 0.0),
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'images/recipes.jpg',
                  width: 600,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  alignment: Alignment(0.0, 0.0),
                  child: Text(
                    'Recipes',
                    style: TextStyle(color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0),
                  )),
            ],
          )
      ),
    );
  }
}

class MenuItem3 extends StatelessWidget {
  MenuItem3();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.black26),
        borderRadius: const BorderRadius.all(const Radius.circular(8)),
      ),
      margin: const EdgeInsets.all(4),
      child:Center(
          child:
          Stack(
            alignment: Alignment(0.0, 0.0),
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'images/shopping_list.jpg',
                  width: 600,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  alignment: Alignment(0.0, 0.0),
                  child: Text(
                    'Shopping List',
                    style: TextStyle(color: Colors.deepOrange ,
                        fontWeight: FontWeight.bold,
                        fontSize: 50.0),
                  )),
            ],
          )
      ),
    );
  }
}