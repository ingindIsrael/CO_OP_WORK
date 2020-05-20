import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:coopwork/User/bloc/bloc_user.dart';
import 'package:coopwork/User/model/user.dart';
import 'package:coopwork/Board/model/place.dart';

class CloudFirestoreAPI {
  final String USERS = "users";
  final String PLACES = "place";

  final Firestore _db = Firestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

//AQUI SE BAJAN DE FIRESTORE LOS DATOS DEL USUARIO

 void updateUserData(User user) async{
    DocumentReference ref = _db.collection(USERS).document(user.uid);
    return await ref.setData({
    'uid': user.uid,
    'name': user.name,
    'email': user.email,
    //'photoURL':user.photoURL,
      'lastSignIn': DateTime.now()

    },

        merge: true);
  }

  //AQUI SE SUBEN A FIRESTORE LOS DATOS DEL USUARIO

    Future<void> updatePlaceData(Place place) async{
    CollectionReference refPlaces = _db.collection(PLACES);

    _auth.currentUser().then((FirebaseUser user){
       refPlaces.add(
          {'name': place.name,
          'description': place.description,
          'userOwner': "${USERS}/${user.uid}",}//reference
      );
    });


  }
}