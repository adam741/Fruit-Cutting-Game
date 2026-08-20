// This file is never actually used at runtime.
// It exists only so the conditional import below has a fallback
// that satisfies the analyzer when neither dart:html nor dart:io
// conditions are met.
import 'dart:typed_data';

void downloadImageBytes(Uint8List bytes, String fileName) {
  throw UnsupportedError('Cannot download image on this platform.');
}
