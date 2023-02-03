import 'dart:io';

import 'package:hive/hive.dart';

import 'package:path_provider/path_provider.dart' as path_provider;

class LocalData {
  LocalData();

  void saveData({dynamic key, dynamic value}) async {
    try {
      final appDocumentDir =
          await path_provider.getApplicationDocumentsDirectory();

      Hive.init(appDocumentDir.path);

      var box = await Hive.openBox('PREVLIFE');
      await box.put(key, value);
    } catch (e) {
      print("saveData ==> $e");
    }
  }

  Future<dynamic> loadData({dynamic key}) async {
    final appDocumentDir =
        await path_provider.getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);

    var box = await Hive.openBox('PREVLIFE');
    return box.get(key);
  }
}
