import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:cloud_firestore/cloud_firestore.dart';


// ignore: must_be_immutable, camel_case_types
class widgets extends StatelessWidget {
   widgets({Key? key}) : super(key: key);

  CollectionReference users = FirebaseFirestore.instance.collection('users');
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:  [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter your name '
            ),
          ),

          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter your age '
            ),
          ),

          const TextField(
            decoration: InputDecoration(
              hintText: 'Enter your city '
            ),
          ),

          ElevatedButton(
            onPressed: () async {
              await users.add({
                'name' : 'Yougesh',
                'age' : '23',
                'city' : 'punjab'
              // ignore: avoid_print
              }).then((value) => print("User added"));



            }, child: const Text("Submit Data" )),
        ],
      ),
    );
  }
}