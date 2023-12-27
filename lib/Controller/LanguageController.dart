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
    await pref.getLang();
    // Initialize language based on shared preferences
    currentLocale.value = pref.lang.value == 0 ? 'en' : 'gu';
  }

  void changeLocale() async {
    // Toggle language and update shared preferences
    currentLocale.value = currentLocale.value == 'en' ? 'gu' : 'en';
    await pref.setLang(currentLocale.value == 'en' ? 0 : 1);
    await pref.getLang();
    update();
  }
}
