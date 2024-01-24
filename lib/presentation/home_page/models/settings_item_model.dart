import 'fulltime3_item_model.dart';import '../../../core/app_export.dart';/// This class is used in the [settings_item_widget] screen.
class SettingsItemModel {SettingsItemModel({this.digitalMarketing, this.motorola, this.price, this.fulltime3ItemList, this.id, }) { digitalMarketing = digitalMarketing  ?? "Digital Marketing";motorola = motorola  ?? "Motorola";price = price  ?? "560 - 12.000/Month";fulltime3ItemList = fulltime3ItemList  ?? List.generate(2,(index) =>Fulltime3ItemModel());id = id  ?? ""; }

String? digitalMarketing;

String? motorola;

String? price;

List<Fulltime3ItemModel>? fulltime3ItemList;

String? id;

 }
