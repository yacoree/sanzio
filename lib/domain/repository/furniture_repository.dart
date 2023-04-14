import '/domain/model/furniture.dart';

abstract class FurnitureRepository {
  Future<Furniture> getFurniture(int id);
}
