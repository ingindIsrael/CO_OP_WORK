import 'package:flutter/material.dart';


class cajanombre extends StatelessWidget {

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Container(
     padding: EdgeInsets.all(10),
     child: TextField(
       controller: nameController,
       decoration: InputDecoration(
         border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
         labelText: 'Cooperativist Name',
       ),
     ),
   );


    //throw UnimplementedError();
  }


}


