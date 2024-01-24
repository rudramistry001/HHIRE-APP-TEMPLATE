import '../models/englishuk_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class EnglishukItemWidget extends StatelessWidget {
  EnglishukItemWidget(
    this.englishukItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EnglishukItemModel englishukItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 5.v),
          child: Text(
            englishukItemModelObj.englishUK!,
            style: CustomTextStyles.titleMediumGray900,
          ),
        ),
        CustomImageView(
          imagePath: englishukItemModelObj?.englishUK1,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v),
        ),
      ],
    );
  }
}
