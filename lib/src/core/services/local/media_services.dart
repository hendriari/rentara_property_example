import 'package:image_picker/image_picker.dart';

abstract class MediaServices {
  Future<String?> pickImage(ImageSource source);
}

class MediaServicesImpl implements MediaServices {
  final ImagePicker _picker;

  MediaServicesImpl(this._picker);

  @override
  Future<String?> pickImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(
        source: source,
        imageQuality: 70,
        maxWidth: 1080,
      );
      return image?.path;
    } catch (e) {
      return null;
    }
  }
}
