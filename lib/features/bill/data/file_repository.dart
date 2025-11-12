import 'dart:io';

import 'package:path/path.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class FileRepository {
  final SupabaseClient _client = Supabase.instance.client;

  Future<String> uploadFile(File file) async {
    final String uploadPath = await _client.storage
        .from("template")
        .upload(basename(file.path), file);

    // Then use the path after the bucket name
    final String fileUrl = _client.storage
        .from("template")
        .getPublicUrl("files/SANJANA FOODS AUGUST 2025.xlsx");

    print(fileUrl);
    return fileUrl;
  }
}
