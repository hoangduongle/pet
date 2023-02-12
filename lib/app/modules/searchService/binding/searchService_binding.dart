import 'package:get/get.dart';
import 'package:pets/app/modules/searchService/controller/searchService_controller.dart';

class SearchServiceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchServiceController>(() => SearchServiceController());
  }
}
