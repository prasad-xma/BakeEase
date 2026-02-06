// import 'package:bake_repository/src/models/macros.dart';

import '../entities/entities.dart';
import 'models.dart';

class Bake {
  String bakeId;
  String picture;
  bool availability;
  String category;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  Bake({
    required this.bakeId,
    required this.picture,
    required this.availability,
    required this.category,
    required this.name,
    required this.description,
    required this.price,
    required this.discount,
    required this.macros,
  });

  BakeEntity toEntity() {
    return BakeEntity(
      bakeId: bakeId,
      picture: picture,
      availability: availability,
      category: category,
      name: name,
      description: description,
      price: price,
      discount: discount,
      macros: macros,
    );
  }

  static Bake fromEntity(BakeEntity entity) {
    return Bake(
      bakeId: entity.bakeId,
      picture: entity.picture,
      availability: entity.availability,
      category: entity.category,
      name: entity.name,
      description: entity.description,
      price: entity.price,
      discount: entity.discount,
      macros: entity.macros,
    );
  }
}