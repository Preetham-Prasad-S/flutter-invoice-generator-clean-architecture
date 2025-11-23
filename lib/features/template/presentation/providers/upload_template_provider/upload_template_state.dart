import 'package:app_prototype/core/errors/failure.dart';

sealed class UploadTemplateState {}

final class UploadInitialTemplate extends UploadTemplateState {}

final class UploadLoadingTemplate extends UploadTemplateState {}

final class UploadSuccessTemplate extends UploadTemplateState {}

final class UploadErrorTemplate extends UploadTemplateState {
  final Failure failure;
  UploadErrorTemplate({required this.failure});
}
