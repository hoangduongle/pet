import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/model/category.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/data/repository/repository.dart';

class ShoppingController extends BaseController {
  Rx<List<Caterogies>> cateData = Rx<List<Caterogies>>([]);
  final Repository _repository = Get.find(tag: (Repository).toString());
  Rx<List<Service>> serviceData = Rx<List<Service>>([]);

  var currentIndex = 0.obs;

  @override
  void onInit() async {
    fetchCate();
    fetchService();
    super.onInit();
  }

  void fetchCate() async {
    var listCate = _repository.getCaterogy(false);
    await callDataService(
      listCate,
      onSuccess: (List<Caterogies> response) {
        cateData(response);
      },
      onError: (DioError dioError) {},
    );
  }

  void fetchService() async {
    var listCate = _repository.getListServiceSpecialNotCare();
    await callDataService(
      listCate,
      onSuccess: (List<Service> response) {
        serviceData(response);
      },
      onError: (DioError dioError) {},
    );
  }
}
