part of 'material_cubit.dart';

@immutable
abstract class MaterialStatee {}

class MaterialInitial extends MaterialStatee {}
class MaterialError extends MaterialStatee {
  final String errMessage;
  MaterialError(this.errMessage);


}
class MaterialLoading extends MaterialStatee {}


class Materialtrue extends MaterialStatee {
  final List<MyMaterial> myMaterial;

  Materialtrue(this.myMaterial);

}