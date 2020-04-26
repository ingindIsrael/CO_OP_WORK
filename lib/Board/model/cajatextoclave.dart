import 'package:flutter/material.dart';


class cajaclave extends StatelessWidget {

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
     child: TextField(
       obscureText: true,
       controller: passwordController,
       decoration: InputDecoration(
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
         labelText: 'Password',
       ),
     ),
   );


    //throw UnimplementedError();
  }


}


