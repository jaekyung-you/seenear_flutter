import 'package:get/get.dart';

import '../../../const/enum/community_filter_type.dart';
import '../../../const/enum/community_tab_type.dart';

class CommunityMainController extends GetxController {
  // property
  Rx<CommunityTabType> selectedTab = CommunityTabType.all.obs; // 디폴트 : 전체 글
  Rx<CommunityFilterType> selectedFilter = CommunityFilterType.recent.obs; // 디폴트 : 최신순

  // usecase

}