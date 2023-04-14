import 'colors.dart';
import 'dimensions.dart';
import 'manufacturer.dart';

///class describing a piece of furniture
class Furniture {
  String? id;
  String name;
  Dimensions demensions;
  double cost;
  Manufacturer manufacturer;
  String? description;
  List<Colors>? colors;
  List<String>? images;

  Furniture(
    this.name, {
    required this.demensions,
    required this.cost,
    required this.manufacturer,
    this.id,
    this.description,
    this.colors,
    this.images,
  });
}
