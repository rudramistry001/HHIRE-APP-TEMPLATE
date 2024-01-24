import '../../../core/app_export.dart';import 'fulltime7_item_model.dart';/// This class is used in the [savedlist_item_widget] screen.
class SavedlistItemModel {SavedlistItemModel({this.bag, this.digitalMarketing, this.motorola, this.price, this.fulltime7ItemList, this.id, }) { bag = bag  ?? ImageConstant.imgBag;digitalMarketing = digitalMarketing  ?? "UX Designer";motorola = motorola  ?? "Motorola";price = price  ?? "560 - 12.000/Month";fulltime7ItemList = fulltime7ItemList  ?? List.generate(2,(index) =>Fulltime7ItemModel());id = id  ?? ""; }

String? bag;

String? digitalMarketing;

String? motorola;

String? price;

List<Fulltime7ItemModel>? fulltime7ItemList;

String? id;

 }
