import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FileNotifier extends AsyncNotifier<PlatformFile?> {
  @override
  Future<PlatformFile?> build() async {
    return null;
  }

  Future<PlatformFile?> pickTemplateFile() async {
    FilePickerResult? file = await FilePicker.platform.pickFiles();

    if (file != null) {
      final localFilePath = file.files.first;
      state = AsyncValue.data(localFilePath);
      print(localFilePath);
      return localFilePath;
    }
    state = AsyncValue.data(null);
    return null;
  }
}


