import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:coopwork/User/bloc/bloc_user.dart';

class BotonSubmit extends StatelessWidget{

  UserBloc _userbloc;

  @override
  Widget build(BuildContext context) {

    _userbloc = BlocProvider.of<UserBloc>(context);

    return RaisedButton(
      onPressed: (){
      userbloc.updatePlaceData(Place(
          name: _controllerTitlePlace.text,
          description: _controllerDescriptionPlace.text,
          uriImage: downloadUrl,
          ), )
          .whenComplete(() {
        print('Cargado!');
      });
      },
      textColor: Colors.white,
      child: Text('Submit Information'),
    );

  }

}