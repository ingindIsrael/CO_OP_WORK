import 'package:coopwork/Widgets/home.dart';
import 'package:coopwork/Widgets/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coopwork/User/bloc/bloc_user.dart';
import 'package:coopwork/Widgets/login.dart';

class botonLogin extends StatefulWidget {
  @override
  _botonLogin createState() => _botonLogin();
}


class _botonLogin extends State<botonLogin> {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);


    return _handleCurrentSession();
  }
    Widget _handleCurrentSession() {
      return StreamBuilder(
        stream: userBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          //snapshot - data - Object User
          if (!snapshot.hasData || snapshot.hasError) {
            return Logueo();
          } else {
            return GoodToGo();
          }
        }
            );
    }
    Widget GoodToGo() {
      return Container(
          height: 60,
          margin: EdgeInsets.only(top:20),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: RaisedButton(
            textColor: Colors.white,
            color: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50)
            ),
            child: Text('You Are Logged On Just Enter', style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold),),

            onPressed: () {

              Navigator.push(context,MaterialPageRoute(builder: (context) => TabbedAppBar()),);
              //print(nameController.text);
              //print(passwordController.text);
            },
          ));
    }
    Widget Logueo() {
    return  Container(
       height: 60,
       margin: EdgeInsets.only(top:20),
       padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
       child: RaisedButton(
         textColor: Colors.white,
         color: Colors.black,
         shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(50)
         ),
         child: Text('Login With Gmail', style: TextStyle(fontSize: 20 ,fontWeight: FontWeight.bold), ),
         onPressed: () {
           userBloc.signIn().then((FirebaseUser user) => print("El usuario es ${user.displayName}"));

         //  Navigator.push(context,MaterialPageRoute(builder: (context) => TabbedAppBar()),);
                                                                            //print(nameController.text);
                                                                            //print(passwordController.text);
         },
       ));
    //throw UnimplementedError();
  }


}


