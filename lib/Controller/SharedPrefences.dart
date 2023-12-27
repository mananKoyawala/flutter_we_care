import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

class SharedPref extends GetxController {
  var lang = 0.obs;

  changeLang(int l) {
    lang.value = l;
  }

  setLang(int value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('lang', value);
  }

  Future<void> getLang() async {
    int? storedLang;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    storedLang = prefs.getInt('lang');
    if (storedLang == null || storedLang == 0) {
      changeLang(0);
    } else {
      changeLang(1);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getLang();
  }
}
