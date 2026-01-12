import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rentara_property_clone/src/core/services/local/media_services.dart';
import 'package:rentara_property_clone/src/features/post_property/domain/usecase/post_property_usecase.dart';
import 'package:rentara_property_clone/src/features/post_property/presentation/bloc/post_property/post_property_event.dart';
import 'package:rentara_property_clone/src/features/post_property/presentation/bloc/post_property/post_property_state.dart';

class PostPropertyBloc extends Bloc<PostPropertyEvent, PostPropertyState> {
  final PostPropertyUsecase postPropertyUsecase;
  final MediaServices mediaServices;

  PostPropertyBloc({
    required this.postPropertyUsecase,
    required this.mediaServices,
  }) : super(const PostPropertyState.initial()) {
    on<PostPropertyEventPostProperty>(_onPostProperty);
    on<PostPropertyEventReset>(_onReset);
    on<PostPropertyEventPickImage>(_onPickImage);
  }

  Future<void> _onPostProperty(
    PostPropertyEventPostProperty event,
    Emitter<PostPropertyState> emit,
  ) async {
    emit(const PostPropertyState.loadingPostProperty());

    final result = await postPropertyUsecase.call(event.data);

    result.fold(
      (failure) =>
          emit(PostPropertyState.failedPostProperty(message: failure.message)),
      (message) => emit(PostPropertyState.successPostProperty(message: message)),
    );
  }

  Future<void> _onPickImage(
    PostPropertyEventPickImage event,
    Emitter<PostPropertyState> emit,
  ) async {
    final ImageSource source =
        event.source == 'camera' ? ImageSource.camera : ImageSource.gallery;
    final path = await mediaServices.pickImage(source);

    if (path != null) {
      emit(PostPropertyState.updatedImageSource(source: path));
    }
  }

  void _onReset(
    PostPropertyEventReset event,
    Emitter<PostPropertyState> emit,
  ) {
    emit(const PostPropertyState.initial());
  }
}
