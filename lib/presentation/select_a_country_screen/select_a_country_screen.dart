import 'models/select_a_country_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_radio_button.dart';
import 'provider/select_a_country_provider.dart';

class SelectACountryScreen extends StatefulWidget {
  const SelectACountryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SelectACountryScreenState createState() => SelectACountryScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SelectACountryProvider(),
      child: SelectACountryScreen(),
    );
  }
}

class SelectACountryScreenState extends State<SelectACountryScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: _buildSelectACountry(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSelectACountry(BuildContext context) {
    return Consumer<SelectACountryProvider>(
      builder: (context, provider, child) {
        return provider.selectACountryModelObj!.radioList.isNotEmpty
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 217.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_afghanistan".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[2] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 253.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_albania".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[3] ?? "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 256.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_algeria".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[4] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 248.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_andorra".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[5] ?? "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 256.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_angola".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[6] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 148.h,
                    ),
                    child: CustomRadioButton(
                      text: "msg_antigua_and_barbuda".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[7] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 234.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_argentina".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[8] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 234.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_argentina".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[9] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 22.v,
                      right: 246.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_armenia".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[10] ?? "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 243.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_australia".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[11] ?? "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 256.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_austria".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[12] ?? "",
                      groupValue: provider.radioGroup,
                      padding: EdgeInsets.symmetric(vertical: 1.v),
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      top: 24.v,
                      right: 229.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_azerbaijan".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[13] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24.h, 22.v, 229.h, 5.v),
                    child: CustomRadioButton(
                      text: "lbl_azerbaijan".tr,
                      value:
                          provider.selectACountryModelObj?.radioList[14] ?? "",
                      groupValue: provider.radioGroup,
                      onChange: (value) {
                        provider.changeRadioButton1(value);
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }
}
