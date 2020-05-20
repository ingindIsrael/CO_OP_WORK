import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coopwork/User/bloc/bloc_user.dart';
import 'package:coopwork/Board/model/place.dart';
import 'package:coopwork/Board/model/cajatextonombre.dart';
import 'package:coopwork/Board/model/cajatextoclave.dart';

class BotonSubmit extends StatelessWidget {



  final VoidCallback onPress;
  BotonSubmit({this.onPress});

  @override
  Widget build(BuildContext context) {



    return RaisedButton(
      onPressed: this.onPress,
      textColor: Colors.white,
      color: Colors.black,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50)
      ),
      child: Text('Submit Information', style: TextStyle(fontSize: 21 ,fontWeight: FontWeight.bold)),
    );


  }

}