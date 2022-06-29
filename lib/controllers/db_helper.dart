import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DbHelper {
  var box = Hive.box('gubre');
  var box2 = Hive.box('yem');
  var box3 = Hive.box('tohum');
  late SharedPreferences preferences;

  void addData(int amount, DateTime date, String type, String note) async {
    var value = {'amount': amount, 'date': date, 'type': type, 'note': note};
    var value2 = {'amount': amount, 'date': date, 'type': type, 'note': note};
    var value3 = {'amount': amount, 'date': date, 'type': type, 'note': note};
    await box.add(value);
    await box2.add(value2);
    await box3.add(value3);
  }

  Future deleteData(
    int index,
  ) async {
    await box.deleteAt(index);
    await box2.deleteAt(index);
    await box3.deleteAt(index);
  }

  Future cleanData() async {
    await box.clear();
    await box2.clear();
    await box3.clear();
  }

  addName(String name) async {
    preferences = await SharedPreferences.getInstance();
    preferences.setString('name', name);
  }

  getName() async {
    preferences = await SharedPreferences.getInstance();
    return preferences.getString('name');
  }

  setLocalAuth(bool val) async {
    preferences = await SharedPreferences.getInstance();
    return preferences.setBool('auth', val);
  }

  Future<bool> getLocalAuth() async {
    preferences = await SharedPreferences.getInstance();
    return preferences.getBool('auth') ?? false;
  }
}
