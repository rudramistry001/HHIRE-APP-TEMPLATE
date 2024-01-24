import '../../../core/app_export.dart';/// This class is used in the [message_item_widget] screen.
class MessageItemModel {MessageItemModel({this.circleImage, this.chanceSeptimus, this.loremIpsumDolor, this.time, this.id, }) { circleImage = circleImage  ?? ImageConstant.imgAvatar56x56;chanceSeptimus = chanceSeptimus  ?? "Chance Septimus";loremIpsumDolor = loremIpsumDolor  ?? "Lorem ipsum dolor sit amet...";time = time  ?? "10:20";id = id  ?? ""; }

String? circleImage;

String? chanceSeptimus;

String? loremIpsumDolor;

String? time;

String? id;

 }
