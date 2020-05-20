import 'package:coopwork/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:coopwork/Board/model/titulo.dart';
import 'package:coopwork/Board/model/subtitulo.dart';
import 'package:coopwork/Board/model/cajatextonombre.dart';
import 'package:coopwork/Board/model/cajatextoclave.dart';
import 'package:coopwork/Board/model/botonforgot.dart';
import 'package:coopwork/Board/model/botonlogin.dart';
import 'package:coopwork/Board/model/registro.dart';
import 'package:coopwork/User/model/user.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coopwork/Board/model/botonSubmit.dart';
import 'package:coopwork/Board/model/place.dart';

class LoginPage extends StatelessWidget {

  UserBloc _userbloc;
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    _userbloc = BlocProvider.of<UserBloc>(context);

    return Scaffold(
      backgroundColor: Colors.yellowAccent,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                titulo(),
                subtitulo(),
                cajanombre(nameController: nameController,),
                cajaclave(passwordController: passwordController,),
                Container (
                  height: 60,
                  margin: EdgeInsets.only(top:20),
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child:BotonSubmit(
                    onPress: () {
                    _userbloc.updatePlaceData(Place(
                      name: nameController.text,
                      description: passwordController.text,
                      //uriImage: downloadUrl,
                    ), )
                        .whenComplete(() {
                      print('Cargado!');
                    });
                  },),),
                botonLogin(),
                botonForgot(),
                register(),
              ],
            )));
  }
}