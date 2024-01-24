import '../models/notificationsgeneral_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NotificationsgeneralItemWidget extends StatelessWidget {
  NotificationsgeneralItemWidget(
    this.notificationsgeneralItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationsgeneralItemModel notificationsgeneralItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 13.v),
              child: CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(4.h),
                decoration: IconButtonStyleHelper.fillGrayTL16,
                child: CustomImageView(
                  imagePath: notificationsgeneralItemModelObj?.bag,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    notificationsgeneralItemModelObj.juniorUIDesigner!,
                    style: CustomTextStyles.titleSmallBold,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    notificationsgeneralItemModelObj.shopeeSg!,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 4.v,
                bottom: 24.v,
              ),
              child: Text(
                notificationsgeneralItemModelObj.time!,
                style: CustomTextStyles.labelLargeGray500_1,
              ),
            ),
          ],
        ),
        SizedBox(height: 11.v),
        Container(
          width: 233.h,
          margin: EdgeInsets.only(
            left: 44.h,
            right: 50.h,
          ),
          child: Text(
            notificationsgeneralItemModelObj.loremIpsumDolor!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.labelLargePrimary_1.copyWith(
              height: 1.67,
            ),
          ),
        ),
      ],
    );
  }
}
