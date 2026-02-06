import 'package:bake_repository/src/models/models.dart';

abstract class BakeRepo {
    Future<List<Bake>> getBakes();
    
}