import '../../../core/app_export.dart';/// This class is used in the [profile_item_widget] screen.
class ProfileItemModel {ProfileItemModel({this.image, this.bag, this.internshipUIUX, this.smallLabelRegular, this.smallLabelRegular1, this.zipcode, this.id, }) { image = image  ?? ImageConstant.imgLogoDeepOrange700;bag = bag  ?? ImageConstant.imgBag;internshipUIUX = internshipUIUX  ?? "Internship UI/UX Designer";smallLabelRegular = smallLabelRegular  ?? "Shopee Sg";smallLabelRegular1 = smallLabelRegular1  ?? "•";zipcode = zipcode  ?? "2019";id = id  ?? ""; }

String? image;

String? bag;

String? internshipUIUX;

String? smallLabelRegular;

String? smallLabelRegular1;

String? zipcode;

String? id;

 }
