import 'package:get/get.dart';
class HomeController extends GetxController{
  static HomeController get instance=>Get.find();

  final carsouralCurrentIndex=0.obs;
  void updatePageIndicator(index){
    carsouralCurrentIndex.value=index;
  }
}
