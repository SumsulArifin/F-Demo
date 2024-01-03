import '../church_leader_sermons_one_page/widgets/followerscountsection_item_widget.dart';
import 'models/church_leader_sermons_one_model.dart';
import 'models/followerscountsection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mdsumsul_s_application5/core/app_export.dart';
import 'provider/church_leader_sermons_one_provider.dart';

// ignore_for_file: must_be_immutable
class ChurchLeaderSermonsOnePage extends StatefulWidget {
  const ChurchLeaderSermonsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  ChurchLeaderSermonsOnePageState createState() =>
      ChurchLeaderSermonsOnePageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChurchLeaderSermonsOneProvider(),
      child: ChurchLeaderSermonsOnePage(),
    );
  }
}

class ChurchLeaderSermonsOnePageState extends State<ChurchLeaderSermonsOnePage>
    with AutomaticKeepAliveClientMixin<ChurchLeaderSermonsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              _buildFollowersCountSection(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowersCountSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 43.h,
      ),
      child: Consumer<ChurchLeaderSermonsOneProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 142.v,
              crossAxisCount: 3,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider.churchLeaderSermonsOneModelObj
                .followerscountsectionItemList.length,
            itemBuilder: (context, index) {
              FollowerscountsectionItemModel model = provider
                  .churchLeaderSermonsOneModelObj
                  .followerscountsectionItemList[index];
              return FollowerscountsectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
