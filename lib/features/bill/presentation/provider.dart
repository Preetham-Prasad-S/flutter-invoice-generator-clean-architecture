import 'dart:io';
import 'package:app_prototype/features/bill/presentation/controller/file_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final fileControllerProvider = NotifierProvider<FileController, File?>(
  () => FileController(),
);
