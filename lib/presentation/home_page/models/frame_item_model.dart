import 'fulltime1_item_model.dart';import '../../../core/app_export.dart';/// This class is used in the [frame_item_widget] screen.
class FrameItemModel {FrameItemModel({this.seniorUIUXDesigner, this.shopee, this.jakartaIndonesia, this.price, this.fulltime1ItemList, this.id, }) { seniorUIUXDesigner = seniorUIUXDesigner  ?? "Senior UI/UX Designer";shopee = shopee  ?? "Shopee";jakartaIndonesia = jakartaIndonesia  ?? "Jakarta, Indonesia (Remote)";price = price  ?? "1100 - 12.000/Month";fulltime1ItemList = fulltime1ItemList  ?? List.generate(2,(index) =>Fulltime1ItemModel());id = id  ?? ""; }

String? seniorUIUXDesigner;

String? shopee;

String? jakartaIndonesia;

String? price;

List<Fulltime1ItemModel>? fulltime1ItemList;

String? id;

 }
