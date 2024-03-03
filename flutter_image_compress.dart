import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_image_compress/flutter_image_compress.dart';

class ConvretImageToWebp {
  // 1. compress file and get Uint8List
  static Future<Uint8List?> testCompressFile(File file) async {
    Uint8List? result = await FlutterImageCompress.compressWithFile(
        file.absolute.path,
        minWidth: 2300,
        minHeight: 1500,
        quality: 94,
        rotate: 0);
    return result;
  }

  // 2. compress file and get file.
  static Future<File?> testCompressAndGetFile(
      File file, String targetPath) async {
    File? result = await FlutterImageCompress.compressAndGetFile(
        file.absolute.path, targetPath,
        quality: 88, rotate: 0);
    return result;
  }

  // 3. compress asset and get Uint8List.
  static Future<Uint8List?> testCompressAsset(String assetName) async {
    Uint8List? list = await FlutterImageCompress.compressAssetImage(assetName,
        minHeight: 1920,
        minWidth: 1080,
        quality: 96,
        rotate: 0,
        format: CompressFormat.webp);
    return list;
  }

  // 4. compress Uint8List and get another Uint8List.
  static Future<Uint8List?> testComporessList(Uint8List list) async {
    Uint8List result = await FlutterImageCompress.compressWithList(list,
        minHeight: 1920, minWidth: 1080, quality: 96, rotate: 0);
    return result;
  }
}
