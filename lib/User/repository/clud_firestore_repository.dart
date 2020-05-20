import 'package:coopwork/User/repository/cloud_firestore_API.dart';
import 'package:flutter/material.dart';
import 'package:coopwork/User/model/user.dart';
import 'package:coopwork/Board/model/place.dart';
import 'package:coopwork/User/bloc/bloc_user.dart';

class CloudFirestoreRepository {
  final _cloudFirestoreAPI = CloudFirestoreAPI();

  void updateUserDataFirestore(User user) => _cloudFirestoreAPI.updateUserData(user);
  Future<void> updatePlaceData(Place place) => _cloudFirestoreAPI.updatePlaceData(place);
}