import 'package:dio/dio.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/owner.dart';
import 'package:pets/app/data/repository/repository.dart';

class PetAdoptDetailController extends BaseController {
  final Repository _repository = Get.find(tag: (Repository).toString());


  int animalTypeID = -1;
  String animalTypeName = '';

  @override
  void onInit() {

    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, dynamic>;
      if (data.containsKey('animalTypeId')) {
        animalTypeID = data['animalTypeId'];
      }
      if (data.containsKey('animalTypeName')) {
        animalTypeName = data['animalTypeName'];
      }
    }
    super.onInit();
  }


}
