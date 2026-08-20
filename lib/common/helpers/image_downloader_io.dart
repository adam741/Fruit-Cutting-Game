import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

/// Saves [bytes] as [fileName] inside the app's documents directory.
/// Used on Android, iOS, desktop, and any non-web platform.
void downloadImageBytes(Uint8List bytes, String fileName) async {
  final directory = await getApplicationDocumentsDirectory();
  final imagePath = '${directory.path}/$fileName';
  final imageFile = File(imagePath);
  await imageFile.writeAsBytes(bytes);
}
