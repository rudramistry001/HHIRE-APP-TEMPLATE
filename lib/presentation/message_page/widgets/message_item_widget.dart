import '../models/message_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class MessageItemWidget extends StatelessWidget {
  MessageItemWidget(
    this.messageItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MessageItemModel messageItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: messageItemModelObj?.circleImage,
          height: 56.adaptSize,
          width: 56.adaptSize,
          radius: BorderRadius.circular(
            28.h,
          ),
          margin: EdgeInsets.only(bottom: 17.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 5.v,
            bottom: 17.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messageItemModelObj.chanceSeptimus!,
                style: CustomTextStyles.titleMediumBold,
              ),
              SizedBox(height: 7.v),
              Text(
                messageItemModelObj.loremIpsumDolor!,
                style: CustomTextStyles.titleSmallBluegray400,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 7.v,
            bottom: 49.v,
          ),
          child: Text(
            messageItemModelObj.time!,
            style: CustomTextStyles.labelLargeSemiBold,
          ),
        ),
      ],
    );
  }
}
