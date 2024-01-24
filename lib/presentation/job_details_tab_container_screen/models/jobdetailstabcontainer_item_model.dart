import '../../../core/app_export.dart';/// This class is used in the [jobdetailstabcontainer_item_widget] screen.
class JobdetailstabcontainerItemModel {JobdetailstabcontainerItemModel({this.wallet, this.salary, this.price, this.id, }) { wallet = wallet  ?? ImageConstant.imgWallet;salary = salary  ?? "Salary";price = price  ?? "6k - 11k";id = id  ?? ""; }

String? wallet;

String? salary;

String? price;

String? id;

 }
