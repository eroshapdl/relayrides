import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'dart:io';
import 'package:relay_rides/app_theme.dart';

class FormView extends StatefulWidget {
  @override
  FormViewState createState() {
    return FormViewState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class FormViewState extends State<FormView> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  // Future<File> imageFile;
 
  // pickImageFromGallery(ImageSource source) {
  //   setState(() {
  //     imageFile = ImagePicker.pickImage(source: source);
  //   });
  // }

  //  Widget showImage() {
  //   return FutureBuilder<File>(
  //     future: imageFile,
  //     builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
  //       if (snapshot.connectionState == ConnectionState.done &&
  //           snapshot.data != null) {
  //         return Image.file(
  //           snapshot.data,
  //           width: 300,
  //           height: 300,
  //         );
  //       } else if (snapshot.error != null) {
  //         return const Text(
  //           'Error Picking Image',
  //           textAlign: TextAlign.center,
  //         );
  //       } else {
  //         return const Text(
  //           'No Image Selected',
  //           textAlign: TextAlign.center,
  //         );
  //       }
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 16.0,
            height: 16.0,
          ),
          // showImage(),
            RaisedButton(
              child: Text("Select Image from Gallery"),
              onPressed: () {
                // pickImageFromGallery(ImageSource.gallery);
              },
            ),
          // TextFormField(
          //   decoration: InputDecoration(
          //     labelText: "Enter Vehicle Description",
          //     fillColor: Colors.white,
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(25.0),
          //       borderSide: BorderSide(),
          //     ),
          //     //fillColor: Colors.green
          //   ),
          //   validator: (val) {
          //     if (val.length == 0) {
          //       return "This field is required";
          //     } else {
          //       return null;
          //     }
          //   },
          //   keyboardType: TextInputType.emailAddress,
          //   style: new TextStyle(
          //     fontSize: 16.0,
          //   ),
          // ),
          // SizedBox(
          //   width: 16.0,
          //   height: 16.0,
          // ),
          SizedBox(
            width: 16.0,
            height: 16.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Vehicle Number",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(),
              ),
              //fillColor: Colors.green
            ),
            validator: (val) {
              if (val.length == 0) {
                return "This field in required.";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.number,
            style: new TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            width: 16.0,
            height: 16.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Time for Rent in Hours",

              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(),
              ),
              //fillColor: Colors.green
            ),
            validator: (val) {
              if (val.length == 0) {
                return "This field in required.";
              } else if (val.length <= 2) {
                return "Time must be greater than 2 hours.";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.number,
            style: new TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            width: 16.0,
            height: 16.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "Set Price",
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(),
              ),
              //fillColor: Colors.green
            ),
            validator: (val) {
              if (val.length == 0) {
                return "This field in required.";
              } else {
                return null;
              }
            },
            keyboardType: TextInputType.number,
            style: new TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            width: 16.0,
            height: 16.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: GestureDetector(
              onTap: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
             child : Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.0),
              boxShadow: [
              BoxShadow(
                color: Color(0x80000000),
                blurRadius: 30.0,
                offset: Offset(0.0, 5.0),
              ),
              ],
              gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF0000FF),
                Color(0xFFFF3500),
              ],
              
              )
              ),
              child: Center(
          child: Text(
            'Submit',
            style: TextStyle(
                fontSize: 16,
                
                color: Colors.white),
          ),
        ),
              ),

              
            ),
          ),
        ],
      ),
    );
  }
}



//Unused but kept for backup

class RentScreenView extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppTheme.nearlyWhite,
            bottom: TabBar(
              tabs: [
                Tab(
                    icon: Icon(
                  Icons.directions_car,
                  color: AppTheme.grey,
                )),
                Tab(icon: Icon(Icons.clear, color: AppTheme.grey)),
              ],
            ),
            title: Text(
              'Rent',
              style: TextStyle(color: AppTheme.grey, fontSize: 20.0),
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    FormView(),
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        'Your Entries',
                        style: TextStyle(fontSize: 20.0),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
