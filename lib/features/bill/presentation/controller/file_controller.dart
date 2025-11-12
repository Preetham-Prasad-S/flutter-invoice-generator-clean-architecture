import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart';
import 'package:file_picker/file_picker.dart';

class FileController extends Notifier<File?> {
  @override
  File? build() {
    return null;
  }

  String fileName() {
    return basename(state!.path);
  }

  Future<void> pickTemplatefile() async {
    FilePickerResult? fileResult = await FilePicker.platform.pickFiles();

    if (fileResult != null) {
      state = File(fileResult.files.single.path!);
    }
  }
}
