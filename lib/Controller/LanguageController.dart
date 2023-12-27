import 'package:get/get.dart';
import 'package:we_care/Controller/SharedPrefences.dart';

class LanguageController extends GetxController {
  var currentLocale = 'en'.obs;
  SharedPref pref = Get.find<SharedPref>();

  @override
  void onInit() {
    super.onInit();
    getData();
  }

  getData() async {
    await pref.getLang1();
    // Initialize language based on shared preferences
    // currentLocale.value = pref.lang.value == 0 ? 'en' : 'gu';
    if (pref.lang1.value == 'en') {
      currentLocale.value = 'en';
    } else if (pref.lang1.value == 'gu') {
      currentLocale.value = 'gu';
    } else if (pref.lang1.value == 'hi') {
      currentLocale.value = 'hi';
    } else {
      currentLocale.value = 'en';
    }
  }

  // void changeLocale() async {
  //   // Toggle language and update shared preferences
  //   currentLocale.value = currentLocale.value == 'en' ? 'gu' : 'en';
  //   await pref.setLang(currentLocale.value == 'en' ? 0 : 1);
  //   await pref.getLang();
  //   update();
  // }

  void changeLocale1(String lang) async {
    currentLocale.value = lang;
    await pref.setLang1(lang);
    await pref.getLang1();
    update();
  }
}
