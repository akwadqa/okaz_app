import 'package:image_picker/image_picker.dart';
import 'package:okaz/features/product/domain/model/product_details_model/product_details_model.dart';
import 'package:okaz/features/update_post/data/repository/update_post_respository.dart';
import 'package:okaz/features/update_post/presentaion/controller/update_post_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'update_post_controller.g.dart';

@riverpod
class UpdatePostController extends _$UpdatePostController {
  @override
  UpdatePostState build() {
    return UpdatePostState.init();
  }

  final _picker = ImagePicker();

  void setPostData(ProductDetailsModel post) {
    state = state.copyWith(updatedPost: post);
  }

  void changePostData(ProductDetailsModel post) {
    final currentPost = state.updatedPost ?? ProductDetailsModel();
    state = state.copyWith(
        updatedPost: currentPost.copyWith(
      title: post.title ?? currentPost.title,
      titleAr: post.titleAr ?? currentPost.titleAr,
      description: post.description ?? currentPost.description,
      descriptionAr: post.descriptionAr ?? currentPost.descriptionAr,
      price: post.price ?? currentPost.price,
      images: List<PostImage>.from(post.images ?? currentPost.images ?? [])
          .toList(),
    ));
  }

  /// Pick image from gallery
  Future<void> pickImage() async {
    final current = state.updatedPost;
    if ((current?.images?.length ?? 10) >= 5) return;

    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image == null) return;

    final updated = List<PostImage>.from(current?.images ?? [])
      ..add(PostImage(image: image.path, isFromDevice: true));

    state = state.copyWith(
      updatedPost: current?.copyWith(images: updated),
    );
  }

  /// Remove image
  void removeImage(int index) {
    final current = state.updatedPost;
    final updated = List<PostImage>.from(current?.images ?? [])
      ..removeAt(index);

    state = state.copyWith(
      updatedPost: current?.copyWith(images: updated),
    );
  }

  Future updatePost() async {
    try {
      state = state.copyWith(updatePostData: AsyncLoading());
      final repo = ref.read(updatePostReposiroryProvider);
      final response =
          await repo.updatePost(state.updatedPost ?? ProductDetailsModel());

      if (response.hasFailed) {
        state = state.copyWith(
          updatePostData: AsyncError(
            response.message ?? 'Something went wrong',
            StackTrace.fromString(response.message ?? ''),
          ),
        );
        return null;
      }

      state = state.copyWith(updatePostData: AsyncData(null));
      return response.data;
    } catch (e, st) {
      state = state.copyWith(updatePostData: AsyncError(e, st));
      return null;
    }
  }
}
