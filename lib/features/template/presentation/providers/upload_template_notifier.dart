import 'package:app_prototype/core/errors/failure.dart';
import 'package:app_prototype/features/template/dependency_injection.dart';
import 'package:app_prototype/features/template/domain/entities/template.dart';
import 'package:app_prototype/features/template/domain/usecases/upload_template.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

class UploadTemplateNotifier extends AsyncNotifier {
  @override
  Future<void> build() async {
    return;
  }

  Future<Either<Failure, void>> uploadTemplate({
    required String filePath,
    required String templateName,
    required Map<String, dynamic> templateDetails,
  }) async {
    final uuid = Uuid();

    final Template template = Template(
      templateFileUrl: filePath,
      templateId: uuid.v4(),
      templateName: templateName,
      templateDetails: templateDetails,
    );

    state = AsyncValue.loading();
    final uploadTemplateUsecase = ref.watch(uploadTemplateUsecaseProvider);

    final result = await uploadTemplateUsecase(
      UploadTemplateParams(template: template),
    );

    return result.fold(
      (failure) {
        state = AsyncValue.error(failure, StackTrace.current);
        return left(failure);
      },
      (_) {
        state = AsyncValue.data(null);
        return right(null);
      },
    );
  }
}
