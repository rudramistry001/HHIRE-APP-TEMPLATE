import '../home_page/widgets/frame_item_widget.dart';
import '../home_page/widgets/settings_item_widget.dart';
import 'models/frame_item_model.dart';
import 'models/home_model.dart';
import 'models/settings_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:rudra_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:rudra_s_application2/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:rudra_s_application2/widgets/custom_search_view.dart';
import 'provider/home_provider.dart';

// ignore_for_file: must_be_immutable
class HomePage extends StatefulWidget {
  const HomePage({Key? key})
      : super(
          key: key,
        );

  @override
  HomePageState createState() => HomePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: HomePage(),
    );
  }
}

class HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.v),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Selector<HomeProvider, TextEditingController?>(
                    selector: (
                      context,
                      provider,
                    ) =>
                        provider.searchController,
                    builder: (context, searchController, child) {
                      return CustomSearchView(
                        controller: searchController,
                        hintText: "lbl_search".tr,
                        alignment: Alignment.center,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_recommendation".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
              SizedBox(height: 17.v),
              _buildFrame(context),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 24.h),
                child: Text(
                  "lbl_recent_jobs".tr,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 15.v),
              _buildSettings(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 74.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgImage50x50,
        margin: EdgeInsets.only(left: 24.h),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 10.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "msg_hi_welcome_back".tr,
            ),
            SizedBox(height: 9.v),
            AppbarSubtitleTwo(
              text: "msg_find_your_dream2".tr,
              margin: EdgeInsets.only(right: 33.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotification,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 176.v,
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 16.h,
                );
              },
              itemCount: provider.homeModelObj.frameItemList.length,
              itemBuilder: (context, index) {
                FrameItemModel model =
                    provider.homeModelObj.frameItemList[index];
                return FrameItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettings(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Consumer<HomeProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 16.v,
                );
              },
              itemCount: provider.homeModelObj.settingsItemList.length,
              itemBuilder: (context, index) {
                SettingsItemModel model =
                    provider.homeModelObj.settingsItemList[index];
                return SettingsItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
