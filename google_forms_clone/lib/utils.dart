import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';

Future<List<File>> pickImages() async {
  List<File> images = [];
  try {
    var files = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    if (files != null && files.files.isNotEmpty) {
      for (var file in files.files) {
        images.add(
          File(file.path!),
        );
      }
    }
  } catch (e) {
    if (kDebugMode) {
      print(e);
    }
  }
  return images;
}
