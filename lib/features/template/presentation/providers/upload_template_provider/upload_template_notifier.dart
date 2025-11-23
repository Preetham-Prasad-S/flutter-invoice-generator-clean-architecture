import 'package:app_prototype/core/errors/failure.dart';
import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:app_prototype/features/template/domain/entities/template.dart';
import 'package:app_prototype/features/template/domain/usecases/upload_file.dart';
import 'package:app_prototype/features/template/domain/usecases/upload_template.dart';
import 'package:app_prototype/features/template/presentation/providers/upload_template_provider/upload_template_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

class UploadTemplateNotifier extends Notifier<UploadTemplateState> {
  @override
  UploadTemplateState build() => UploadInitialTemplate();

  Future<Either<Failure, String>> getFileUrl({
    required String filePath,
    required String fileName,
  }) async {
    final uploadFileUsecase = ref.read(uploadFileUsecaseProvider);

    final file = uploadFileUsecase(
      UploadFileParams(filePath: filePath, fileName: fileName),
    );

    return file;
  }

  Future<void> uploadTemplate({
    required String fileName,
    required String filePath,
    required String templateName,
    required Map<String, dynamic> templateDetails,
  }) async {
    state = UploadLoadingTemplate();

    final publicFileUrl = await getFileUrl(
      filePath: filePath,
      fileName: fileName,
    );

    return publicFileUrl.fold(
      (failure) {
        state = UploadErrorTemplate(failure: failure);
      },
      (url) async {
        final uuid = Uuid();

        final uploadTemplateUsecase = ref.watch(uploadTemplateUsecaseProvider);

        final Template template = Template(
          templateFileUrl: url,
          templateId: uuid.v4(),
          templateName: templateName,
          templateDetails: templateDetails,
        );

        final result = await uploadTemplateUsecase(
          UploadTemplateParams(template: template),
        );
        return result.fold(
          (failure) {
            state = UploadErrorTemplate(failure: failure);
          },
          (_) {
            state = UploadSuccessTemplate();
          },
        );
      },
    );
  }
}
