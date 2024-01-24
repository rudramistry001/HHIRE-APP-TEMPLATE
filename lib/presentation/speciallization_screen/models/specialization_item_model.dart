import '../../../core/app_export.dart';/// This class is used in the [specialization_item_widget] screen.
class SpecializationItemModel {SpecializationItemModel({this.designCreative, this.designCreative1, this.id, }) { designCreative = designCreative  ?? ImageConstant.imgCheckmark;designCreative1 = designCreative1  ?? "Design & Creative";id = id  ?? ""; }

String? designCreative;

String? designCreative1;

String? id;

 }
