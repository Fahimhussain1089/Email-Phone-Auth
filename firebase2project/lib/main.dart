import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase2project/firebase_options.dart';
import 'package:firebase2project/screecns/email_auth/login_auth.dart';
import 'package:firebase2project/screecns/home_screen.dart';
import 'package:firebase2project/screecns/phone_auth/sign_in_with_phone.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  // QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("users").get();
  // for(var doc in snapshot.docs){
  //   log(doc.data().toString()); //ye sab doc ke data ko dega
  // }
  // //log(snapshot.docs.toString()); //ye doc. to dega

// particular doc. ke data ko nikalte hain
//   DocumentSnapshot snapshot = await FirebaseFirestore
//       .instance.collection("users").doc("2UE1Q9SdZJYejJVY6h5P").get();
//       log(snapshot.data().toString());

//ab data add krna hai
//    FirebaseFirestore _firestore= FirebaseFirestore.instance;
//     Map<String ,dynamic> newUserData = {
//       "name" : "pappucoder",
//       "email" : "pappucoder@gmail.com",
//       "name"  : "raju khattri",
//       "phone"  : "9213035834",
//      };
//     await _firestore.collection("users").add(newUserData);
//     log("new user save ho gya hai");

// // ab doc. ki id hum khud denge
//   FirebaseFirestore _firestore= FirebaseFirestore.instance;
//   Map<String ,dynamic> newUserData = {
//     "name" : "india",
//     "email" : "udan@gmail.com",
//   };
//   await _firestore.collection("users").doc("123_fahim_id").set(newUserData);
//   log("new user save ho gya hai");

  //jab id ko update krna hai tu
  // FirebaseFirestore _firestore= FirebaseFirestore.instance;
  // Map<String ,dynamic> newUserData = {
  //   "name" : "india",
  //   "email" : "udan@gmail.com",
  // };
  // await _firestore.collection("users").doc("4ihZS6yTkyDuZcCEzSfo")
  //     .update({
  //       "email" : "raj@gmail.com",
  //       "name" : "rajsha01",
  //       "phone " : "7210645543",
  // });
  // log("new user save ho gya hai");

  // //ab delete kise krenge
  // FirebaseFirestore _firestore= FirebaseFirestore.instance;
  // Map<String ,dynamic> newUserData = {
  //   "name" : "india",
  //   "email" : "udan@gmail.com",
  // };
  // await _firestore.collection("users").doc("4ihZS6yTkyDuZcCEzSfo")
  //     .delete();
  // log("new user delete ho gya hai");


  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:(FirebaseAuth.instance.currentUser != null) ? HomeScreen() :
      //LoginScreen(),
      SignInWithPhone(),
    );
  }
}
