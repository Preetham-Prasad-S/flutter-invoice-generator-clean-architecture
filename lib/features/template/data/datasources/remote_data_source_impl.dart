import 'dart:io';
import 'package:app_prototype/core/errors/exception.dart';
import 'package:app_prototype/features/template/data/datasources/remote_data_source.dart';
import 'package:app_prototype/features/template/data/models/template_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  final SupabaseClient _client;

  RemoteDataSourceImpl({required SupabaseClient client}) : _client = client;

  @override
  Future<void> uploadTemplate(TemplateModel template) async {
    try {
      final data =
          await _client.from("templates").insert(template.toJson()).select();
      print(data);
    } catch (e) {
      print(e.toString());
      throw ServerException(error: e.toString());
    }
  }

  @override
  Future<String> uploadFile(String filePath, String fileName) async {
    try {
      final File file = File(filePath);

      await _client.storage
          .from("documents")
          .upload("templates/$fileName", file);

      final String publicFileUrl = await _client.storage
          .from("documents")
          .getPublicUrl("templates/$fileName");

      return publicFileUrl;
    } catch (e) {
      throw ServerException(error: e.toString());
    }
  }
}
