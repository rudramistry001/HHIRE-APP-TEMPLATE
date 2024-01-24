import '../../../core/app_export.dart';/// This class is used in the [jobtype_item_widget] screen.
class JobtypeItemModel {JobtypeItemModel({this.work, this.findAJob, this.itSEasyToFind, this.id, }) { work = work  ?? ImageConstant.imgWork;findAJob = findAJob  ?? "Find a job";itSEasyToFind = itSEasyToFind  ?? "It’s easy to find your dream jobs here with us.";id = id  ?? ""; }

String? work;

String? findAJob;

String? itSEasyToFind;

String? id;

 }
