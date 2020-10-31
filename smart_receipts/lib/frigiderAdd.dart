import 'package:flutter/material.dart';
// Create a Form widget.
class AddIngredient extends StatefulWidget {
  @override
  AddIngredientState createState() {
    return AddIngredientState();
  }
}
// Create a corresponding State class.
// This class holds data related to the form.
class AddIngredientState extends State<AddIngredient> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final quantityController = TextEditingController();
  final quantityTypeController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    quantityController.dispose();
    quantityTypeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          new Text('Add ingredient',
            style: new TextStyle(color:Colors.blue, fontSize: 50.0),),
            new Padding(padding: EdgeInsets.only(top: 20.0)),
            new TextFormField(
              controller: nameController ,
            decoration: new InputDecoration(
            labelText: "Enter Name",
            fillColor: Colors.blue,
            border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(
              color: Colors.blue,
            ),
            ),
            //fillColor: Colors.green
            ),
            validator: (val) {
            if(val.length==0) {
            return "Name cannot be empty";
            }else{
            return null;
            }
            },
            keyboardType: TextInputType.emailAddress,
            style: new TextStyle(
            fontFamily: "Poppins",
              color:Colors.blue
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          new TextFormField(
            controller: quantityController,
            decoration: new InputDecoration(
              labelText: "Enter Quantity",
              fillColor: Colors.blue,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide(
                  color: Colors.blue,
                ),
              ),
              //fillColor: Colors.green
            ),
            validator: (val) {
              if(val.length==0) {
                return "Quantity cannot be empty";
              }else{
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            style: new TextStyle(
                fontFamily: "Poppins",
                color:Colors.blue
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          new TextFormField(
            controller: quantityTypeController,
            decoration: new InputDecoration(
              labelText: "Enter Quantity Type",
              fillColor: Colors.blue,
              border: new OutlineInputBorder(
                borderRadius: new BorderRadius.circular(25.0),
                borderSide: new BorderSide(
                  color: Colors.blue,
                ),
              ),
              //fillColor: Colors.green
            ),
            validator: (val) {
              if(val.length==0) {
                return "Quantity type cannot be empty";
              }else{
                return null;
              }
            },
            keyboardType: TextInputType.emailAddress,
            style: new TextStyle(
                fontFamily: "Poppins",
                color:Colors.blue
            ),
          ),
          new Padding(padding: EdgeInsets.only(top: 20.0)),
          ElevatedButton(
            onPressed: () {
              // Validate returns true if the form is valid, or false
              // otherwise.
              if (_formKey.currentState.validate()) {
                // If the form is valid, display a Snackbar.
                Scaffold.of(context)
                    .showSnackBar(SnackBar(content: Text(nameController.text)));
              }
            },
            child: Text('Submit'),
          ),
          ],
    )
    );
  }
}