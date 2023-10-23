import 'package:hive/hive.dart';

class HiveService {
  var box = Hive.box("Mymemory");

  Future<String> getInfoLocal(String key) async {
    dynamic json = await box.get(key);
    if (json != null) {
      return Future.value(json);
    } else {
      return Future.value("");
    }
  }

  void postInfoLocal(String key, String info) async {
    box.put(key, info);
  }

  void clearLocalInfo() {
    box.clear();
  }
}
