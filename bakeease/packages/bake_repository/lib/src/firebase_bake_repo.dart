import 'dart:developer';

import 'package:bake_repository/src/bake_repo.dart';
import 'package:bake_repository/src/entities/bake_entity.dart';
import 'package:bake_repository/src/models/models.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseBakeRepo implements BakeRepo {
  final pizzaCollection = FirebaseFirestore.instance.collection('bakes');

  @override
  Future<List<Bake>> getBakes() async {
    try {
      return await pizzaCollection.get().then(
        (value) => value.docs
            .map((e) => Bake.fromEntity(BakeEntity.fromDocument(e.data())))
            .toList(),
      );
    } catch (e) {
      log(e.toString());
      rethrow;
    }
  }
}
