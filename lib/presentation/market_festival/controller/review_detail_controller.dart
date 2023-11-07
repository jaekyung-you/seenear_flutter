import 'package:get/get.dart';
import 'package:seenear/data/remote/response/review_detail_response.dart';
import '../../../data/remote/api/like/do_like.dart';
import '../../../data/remote/api/like/do_unlike.dart';
import '../../../data/remote/api/review/get_review_detail.dart';
import '../../../data/remote/response/comment_response.dart';

class ReviewDetailController extends GetxController {
  int id = 0; // 조회하는 리뷰 id
  bool isMine = false; // 내 리뷰 -> '리뷰 관리' 혹은 '방문자 후기'

  RxString content = ''.obs;
  RxString createdAt = ''.obs;
  RxList<String> images = <String>[].obs;
  RxInt likeCount = 0.obs;
  RxString title = ''.obs;
  RxList<CommentResponse> commentList = <CommentResponse>[].obs;
  RxDouble score = 0.0.obs;
  int itemId = 0;
  String itemType = '';
  RxBool isLiked = false.obs; // 내가 리뷰에 대해 공감 버튼을 눌렀는지 여부

  // usecase
  final GetReviewDetail _getReviewDetail = GetReviewDetail();

  // 좋아요, 공감
  final DoLike _doLike = DoLike();
  final DoUnlike _doUnlike = DoUnlike();

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      id = Get.arguments['id'];
      isMine = Get.arguments['isMine'];
      _requestReviewDetail(id: id);
    }
  }

  // 리뷰 상세 후기
  Future<void> _requestReviewDetail({required int id}) async {
    ReviewDetailResponse review = await _getReviewDetail(id: id);
    title.value = review.title;
    content.value = review.content ?? '';
    createdAt.value = review.createdAt;
    images.value = review.images ?? [];
    likeCount.value = review.likeCount;
    score.value = review.score ?? 0.0;
    if (review.comment != null) {
      commentList.value = review.comment ?? [];
    }

    // todo: itemId, itemType, isLiked 추가
  }

  Future<void> toggleLike() async {
    if (isLiked.value) {
      bool res = await _doUnlike(itemType: itemType, itemId: itemId);
      if (!res) return;
      isLiked.value = false;
    } else {
      bool res = await _doLike(itemId: itemId, itemType: itemType);
      if (!res) return;
      isLiked.value = true;
    }
  }
}
