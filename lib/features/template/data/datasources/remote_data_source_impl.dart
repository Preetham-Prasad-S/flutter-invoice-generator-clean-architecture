import 'package:app_prototype/core/errors/exception.dart';
import 'package:app_prototype/features/template/data/datasources/remote_data_source.dart';
import 'package:app_prototype/features/template/data/models/template_model.dart';
import 'package:fpdart/src/either.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final SupabaseClient _client;

  RemoteDataSourceImpl({required SupabaseClient client}) : _client = client;

  @override
  Future<Either<ServerException, void>> uploadTemplate(
    TemplateModel template,
  ) async {
    try {
      _client.from("templates").insert({template.toJson()});
      return right(null);
    } catch (e) {
      throw ServerException(error: e.toString());
    }
  }
}
