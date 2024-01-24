import '../job_details_tab_container_screen/widgets/framefive_item_widget.dart';
import '../job_details_tab_container_screen/widgets/jobdetailstabcontainer_item_widget.dart';
import 'models/framefive_item_model.dart';
import 'models/job_details_tab_container_model.dart';
import 'models/jobdetailstabcontainer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rudra_s_application2/core/app_export.dart';
import 'package:rudra_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:rudra_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:rudra_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:rudra_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'provider/job_details_tab_container_provider.dart';

class JobDetailsTabContainerScreen extends StatefulWidget {
  const JobDetailsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  JobDetailsTabContainerScreenState createState() =>
      JobDetailsTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => JobDetailsTabContainerProvider(),
      child: JobDetailsTabContainerScreen(),
    );
  }
}

class JobDetailsTabContainerScreenState
    extends State<JobDetailsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 30.v),
            child: SizedBox(
              height: 688.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  _buildTabBarView(context),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildCardanoOne(context),
                          SizedBox(height: 24.v),
                          _buildJobDetailsTabContainer(context),
                          SizedBox(height: 26.v),
                          _buildTabview(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgComponent1,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "lbl_job_details".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgComponent3,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 419.v),
      height: 269.v,
      child: TabBarView(
        controller: tabviewController,
        children: [],
      ),
    );
  }

  /// Section Widget
  Widget _buildCardanoOne(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 71.h,
        vertical: 23.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 79.adaptSize,
            width: 79.adaptSize,
            padding: EdgeInsets.all(19.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder39,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgCardano1,
              height: 40.adaptSize,
              width: 40.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          SizedBox(height: 16.v),
          Text(
            "msg_senior_ui_ux_designer".tr,
            style: CustomTextStyles.titleSmallBold,
          ),
          SizedBox(height: 7.v),
          Text(
            "lbl_shopee_sg".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 12.v),
          Consumer<JobDetailsTabContainerProvider>(
            builder: (context, provider, child) {
              return Wrap(
                runSpacing: 9.v,
                spacing: 9.h,
                children: List<Widget>.generate(
                  provider
                      .jobDetailsTabContainerModelObj.framefiveItemList.length,
                  (index) {
                    FramefiveItemModel model = provider
                        .jobDetailsTabContainerModelObj
                        .framefiveItemList[index];

                    return FramefiveItemWidget(
                      model,
                      onSelectedChipView1: (value) {
                        provider.onSelectedChipView1(index, value);
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobDetailsTabContainer(BuildContext context) {
    return SizedBox(
      height: 100.v,
      child: Consumer<JobDetailsTabContainerProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            padding: EdgeInsets.only(
              left: 15.h,
              right: 49.h,
            ),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 54.h,
              );
            },
            itemCount: provider.jobDetailsTabContainerModelObj
                .jobdetailstabcontainerItemList.length,
            itemBuilder: (context, index) {
              JobdetailstabcontainerItemModel model = provider
                  .jobDetailsTabContainerModelObj
                  .jobdetailstabcontainerItemList[index];
              return JobdetailstabcontainerItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 44.v,
      width: 351.h,
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        labelColor: theme.colorScheme.primary,
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelColor: appTheme.gray500,
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w600,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray100,
          borderRadius: BorderRadius.circular(
            22.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_description".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_requirement".tr,
            ),
          ),
          Tab(
            child: Text(
              "msg_responsibilities".tr,
            ),
          ),
        ],
      ),
    );
  }
}
