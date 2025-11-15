import 'package:app_prototype/core/usecases/usecase.dart';
import 'package:app_prototype/features/template/data/datasources/remote_data_source.dart';
import 'package:app_prototype/features/template/data/datasources/remote_data_source_impl.dart';
import 'package:app_prototype/features/template/data/repositories/template_repository_impl.dart';
import 'package:app_prototype/features/template/domain/repositories/template_repository.dart';
import 'package:app_prototype/features/template/domain/usecases/upload_template.dart';
import 'package:app_prototype/features/template/presentation/providers/file_notifier.dart';
import 'package:app_prototype/features/template/presentation/providers/upload_template_notifier.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final uploadTemplateUsecaseProvider = Provider<Usecase>(
  (ref) => UploadTemplate(repository: ref.read(repositoryProvider)),
);

final repositoryProvider = Provider<TemplateRepository>(
  (ref) => TemplateRepositoryImpl(
    remoteDataSource: ref.read(remoteDatasourceProvider),
  ),
);

final remoteDatasourceProvider = Provider<RemoteDataSource>(
  (ref) => RemoteDataSourceImpl(client: ref.read(supabaseClientProvider)),
);

final supabaseClientProvider = Provider<SupabaseClient>(
  (ref) => Supabase.instance.client,
);

final uploadTemplateNotifierProvider =
    AsyncNotifierProvider<UploadTemplateNotifier, void>(
      () => UploadTemplateNotifier(),
    );

final fileNotifierProvider = AsyncNotifierProvider<FileNotifier, PlatformFile?>(
  () => FileNotifier(),
);
