import '../../../core/app_export.dart';import 'fulltime5_item_model.dart';/// This class is used in the [searchlist_item_widget] screen.
class SearchlistItemModel {SearchlistItemModel({this.settings, this.digitalMarketing, this.motorola, this.price, this.fulltime5ItemList, this.id, }) { settings = settings  ?? ImageConstant.imgSettingsRed800;digitalMarketing = digitalMarketing  ?? "Senior UI/UX Designer";motorola = motorola  ?? "Motorola";price = price  ?? "560 - 12.000/Month";fulltime5ItemList = fulltime5ItemList  ?? List.generate(2,(index) =>Fulltime5ItemModel());id = id  ?? ""; }

String? settings;

String? digitalMarketing;

String? motorola;

String? price;

List<Fulltime5ItemModel>? fulltime5ItemList;

String? id;

 }
