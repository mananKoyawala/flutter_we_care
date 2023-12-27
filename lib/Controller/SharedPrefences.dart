import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref extends GetxController {
  var lang = 0.obs;
  var lang1 = ''.obs;

  // changeLang(int l) {
  //   lang.value = l;
  // }

  changeLang1(String l) {
    lang1.value = l;
  }

  // setLang(int value) async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   await prefs.setInt('lang', value);
  // }

  setLang1(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('langM', value);
  }

  // Future<void> getLang() async {
  //   int? storedLang;
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   storedLang = prefs.getInt('lang');
  //   if (storedLang == null || storedLang == 0) {
  //     changeLang(0);
  //   } else {
  //     changeLang(1);
  //   }
  // }

  Future<void> getLang1() async {
    String? storedLang;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    storedLang = prefs.getString('langM');
    if (storedLang == null || storedLang == '') {
      changeLang1('en');
    } else if (storedLang == 'gu') {
      changeLang1('gu');
    } else if (storedLang == 'hi') {
      changeLang1('hi');
    } else {
      changeLang1('en');
    }
  }

  @override
  void onInit() {
    super.onInit();
    // getLang();
    getLang1();
  }
}
