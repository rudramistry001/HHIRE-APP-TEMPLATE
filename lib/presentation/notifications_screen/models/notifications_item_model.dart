import '../../../core/app_export.dart';/// This class is used in the [notifications_item_widget] screen.
class NotificationsItemModel {NotificationsItemModel({this.newPost, this.isSelectedSwitch, this.id, }) { newPost = newPost  ?? "New Post";isSelectedSwitch = isSelectedSwitch  ?? false;id = id  ?? ""; }

String? newPost;

bool? isSelectedSwitch;

String? id;

 }
