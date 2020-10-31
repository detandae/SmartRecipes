import 'package:flutter/material.dart';
import 'frigiderAdd.dart';

// Uncomment lines 7 and 10 to view the visua
class FrigiderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FrigiderState();
  }
}

class Frigider extends StatelessWidget{

  final leftSection = new Container(
  );

  final rightSection = new Container(
  );

  @override
  Widget build(BuildContext context) {
   return new Container(
     /*
      child: new Row(
        children: <Widget>[
          Expanded(
            flex: 5,
            child: FrigiderContent()
          ),
          Expanded(
            flex: 5,
            child: Container(color: Colors.blue),
          )
        ],
      )
      */
       child: FrigiderContent(),
      );
  }
}
class Ingredient{
  Ingredient(String name,String quantity,String quantity_type)
  {
  this.name=name;
  this.quantity=quantity;
  this.quantity_type =quantity_type;
  }
  String  name;
  String  quantity;
  String  quantity_type;

}
// #docregion RWS-var
class _FrigiderContent extends State<FrigiderContent> {

  final ingredientList = <Ingredient>[];
  final _biggerFont = TextStyle(fontSize: 18.0,color:Colors.blue);
  _FrigiderContent()
  {
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
    ingredientList.add(new Ingredient("apple","5","dkg"));
  }

  // #enddocregion RWS-var

  // #docregion _buildSuggestions
  Widget _buildSuggestions() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: ingredientList.length,
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          return _buildRow(ingredientList[index]);
        });
  }
  // #enddocregion _buildSuggestions

  // #docregion _buildRow
  Widget _buildRow(Ingredient i) {
    return ListTile(
      title: Text(
         i.name+" "+i.quantity+" "+i.quantity_type,
        style: _biggerFont,
      ),
    );
  }
  // #enddocregion _buildRow

  // #docregion RWS-build
  @override
  Widget build(BuildContext context) {
     return _buildSuggestions();
  }
// #enddocregion RWS-build
// #docregion RWS-var
}
// #enddocregion RWS-var

class FrigiderContent extends StatefulWidget {
  @override
  State<FrigiderContent> createState() => _FrigiderContent();
}

class FrigiderState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FrigiderState();
  }
}

class _FrigiderState extends State<FrigiderState> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    FrigiderContent(),
    AddIngredient()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ingredients'),
      ),
      body: Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage("images/frigider2.jpg"),
      fit: BoxFit.cover,
      )
      ),
      child: _children[_currentIndex], // new /* add child content here */,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.auto_awesome_motion),
            title: Text('Ingredients'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            title: Text('Add'),
          )
        ],
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}

class example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}