import 'package:bake_repository/src/entities/entities.dart';
import '../models/models.dart';

class BakeEntity {
  String bakeId;
  String picture;
  bool availability;
  String category;
  String name;
  String description;
  int price;
  int discount;
  Macros macros;

  BakeEntity({
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

  Map<String, Object?> toDocument() {
    return {
      'bakeId': bakeId,
      'picture': picture,
      'availability': availability,
      'category': category,
      'name': name,
      'description': description,
      'price': price,
      'discount': discount,
      'macros': macros.toEntity().toDocument(),
    };
  }

  static BakeEntity fromDocument(Map<String, dynamic> doc) {
    return BakeEntity(
      bakeId: doc['bakeId'],
      picture: doc['picture'],
      availability: doc['availability'],
      category: doc['category'],
      name: doc['name'],
      description: doc['description'],
      price: doc['price'],
      discount: doc['discount'],
      macros: Macros.fromEntity(MacrosEntity.fromDocument(doc['macros'])),
    );
  }
}