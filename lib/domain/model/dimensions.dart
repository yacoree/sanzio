import 'dart:ffi';

base class Dimensions extends Struct {
  @Int32()
  external int length;
  @Int32()
  external int width;
  @Int32()
  external int height;
}
