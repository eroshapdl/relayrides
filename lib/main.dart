//relayrides

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'app_theme.dart';
import 'RelayRides/homescreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Relay Rides',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      
      home: HomeScreen(),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   // final AuthService _auth =AuthService();
//   final _formKey = GlobalKey<FormState>();
//   String email = '';
//   String password = '';
//   String error = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Container(
//         padding:EdgeInsets.symmetric(vertical: 30),
//         width:double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin:Alignment.topCenter,
//             colors: [
//               Colors.blue[900],
//               Colors.blue[800],
//               Colors.blue[200]
//             ]
//           )
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(height:10 ,),
//             Padding(
//               padding: EdgeInsets.all(20),
//               child: Column(
//                 children: <Widget>[
//                  Text("Relay Rides",style:TextStyle(color: Colors.white,fontSize:40),),
//                  SizedBox(height: 10,),
//                  Text("Welcome Back",style:TextStyle(color: Colors.white,fontSize:20),)     
//                 ],
//               ),
//             ),
//             SizedBox(height:08 ,),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color:Colors.white ,
//                   borderRadius:BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30)) ,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.all(30),
//                   child: Column(
//                     children: <Widget>[
//                       SizedBox(height: 10,),
//                       Container(
//                         padding: EdgeInsets.all(10),
//                         decoration: BoxDecoration(
//                           color:Colors.white ,
//                           borderRadius: BorderRadius.circular(10),
//                           boxShadow: [BoxShadow(
//                             color: Color.fromRGBO(0, 0, 128, .3),
//                             blurRadius: 20,
//                             offset: Offset(0, 10)
//                           )]
//                         ),
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                 border: Border(bottom:BorderSide(color: Colors.grey[200] ) )
//                               ),
//                               child:Form(
//                                 key: _formKey,
//                                 child: TextField(
//                                 onChanged: (val){
//                                   setState(()=>email=val);
//                                 },
//                                  decoration: InputDecoration(
//                                   hintText: "Enter your Email address",
//                                   hintStyle: TextStyle(color: Colors.grey),
//                                   border:InputBorder.none
//                                 ),
//                                ),
//                               ),
//                             ),
//                             Container(
//                               padding: EdgeInsets.all(10),
//                               decoration: BoxDecoration(
//                                 border: Border(bottom:BorderSide(color: Colors.grey[200] ) )
//                               ),
//                               child:Form(
//                                 child: TextField(
//                                 onChanged: (val){
//                                   setState(()=>password=val);
//                                 },
//                                 obscureText: true,
//                                 decoration: InputDecoration(
//                                   hintText: "Password",
//                                   hintStyle: TextStyle(color: Colors.grey),
//                                   border:InputBorder.none
//                                 ),
//                               ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                       SizedBox(height: 10,),
//                       Text("Forgot Password?",style: TextStyle(color: Colors.grey),),
//                       SizedBox(height: 20,),
//                       Container(
//                         height: 40,
//                         margin:EdgeInsets.symmetric(horizontal: 50),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(50),
//                           color: Colors.blue[900]
//                         ),
//                         child: Center(
//                           child:RaisedButton(color:Colors.blue[900] ,
//                             child: Text("Login",style:TextStyle(color: Colors.white,fontWeight: FontWeight.bold),) ,
//                             onPressed: ()async{
//                               MaterialApp(
//                               title: 'Relay Rides',
//                               debugShowCheckedModeBanner: false,
//                               theme: ThemeData(
//                                 primarySwatch: Colors.blue,
//                                 textTheme: AppTheme.textTheme,
//                                 platform: TargetPlatform.iOS,
//                               ),
                              
//                               home: HomeScreen(),
//                             );
//                               // if(_formKey.currentState.validate()){
//                                 // dynamic result = await _auth.signInWithEmailAndPassword(email,password);
//                                 // if(result== null)
//                                 // {
//                                 //   setState(()=>error = 'please enter valid email or password');
//                                 // }
//                               // }
//                             },
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                  ),
//               )
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }