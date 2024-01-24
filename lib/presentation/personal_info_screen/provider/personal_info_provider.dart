import 'package:flutter/material.dart';import 'package:rudra_s_application2/core/app_export.dart';import 'package:rudra_s_application2/presentation/personal_info_screen/models/personal_info_model.dart';import 'package:rudra_s_application2/data/models/me/get_me_resp.dart';import 'dart:async';import 'package:rudra_s_application2/data/repository/repository.dart';/// A provider class for the PersonalInfoScreen.
///
/// This provider manages the state of the PersonalInfoScreen, including the
/// current personalInfoModelObj

// ignore_for_file: must_be_immutable
class PersonalInfoProvider extends ChangeNotifier {TextEditingController personalInfoFirstNameController = TextEditingController();

TextEditingController personalInfoLastNameController = TextEditingController();

TextEditingController personalInfoEmailController = TextEditingController();

TextEditingController personalInfoPhoneController = TextEditingController();

TextEditingController personalInfoLocationController = TextEditingController();

PersonalInfoModel personalInfoModelObj = PersonalInfoModel();

final _repository = Repository();

var getMeResp = GetMeResp();

@override void dispose() { super.dispose(); personalInfoFirstNameController.dispose(); personalInfoLastNameController.dispose(); personalInfoEmailController.dispose(); personalInfoPhoneController.dispose(); personalInfoLocationController.dispose(); } 
FutureOr<void> callFetchMe() async  { await _repository.fetchMe(
headers: {'Content-type': 'application/json','Authorization': 'Bearer  eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYxNmZiNzBhZWJiM2RiYjVlYmVkYTBmMiIsInVzZXJuYW1lIjoiT3Jpb24xNyIsImlhdCI6MTY3ODc3NjY2OX0.16TzzeJMkGbsT-hk-wigjBt4xeJNcwNzVvnl05evYUk',},
)
.then((value) async {

	getMeResp = value;
_onFetchMeSuccess(value);
notifyListeners();
})
.onError((error,stackTrace) {

	//implement error call
_onFetchMeError();
})
; } 
void _onFetchMeSuccess(GetMeResp resp) { 
personalInfoEmailController.text = getMeResp.data!.email!.toString();personalInfoFirstNameController.text = getMeResp.data!.name!.toString(); } 
void _onFetchMeError() { 
 //implement error method body...
 } 
 }
