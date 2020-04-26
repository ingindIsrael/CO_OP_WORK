import 'package:coopwork/User/bloc/bloc_user.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class register extends StatelessWidget {
  UserBloc userBloc;
  @override
  Widget build(BuildContext context) {
    userBloc = BlocProvider.of(context);
   return Container(
       child: Row(
         children: <Widget>[
           Text('Do you want to change account?'),
           FlatButton(
             textColor: Colors.black,
             child: Text(
               'Logout',
               style: TextStyle(fontSize: 20),
             ),
             onPressed: () {
               userBloc.signOut();
             },
           )
         ],
         mainAxisAlignment: MainAxisAlignment.center,
       ));

    //throw UnimplementedError();
  }


}


