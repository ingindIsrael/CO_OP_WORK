import 'package:coopwork/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:coopwork/Board/model/titulo.dart';
import 'package:coopwork/Board/model/subtitulo.dart';
import 'package:coopwork/Board/model/cajatextonombre.dart';
import 'package:coopwork/Board/model/cajatextoclave.dart';
import 'package:coopwork/Board/model/botonforgot.dart';
import 'package:coopwork/Board/model/botonlogin.dart';
import 'package:coopwork/Board/model/registro.dart';
import 'package:coopwork/User/bloc/bloc_user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coopwork/Board/model/botonSubmit.dart';

class LoginPage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellowAccent,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                titulo(),
                subtitulo(),
                cajanombre(),
                cajaclave(),
                BotonSubmit(),
                botonLogin(),
                botonForgot(),
                register(),
              ],
            )));
  }
}