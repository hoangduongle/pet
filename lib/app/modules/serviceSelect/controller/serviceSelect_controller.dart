import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/modules/serviceSelect/model/radioBoxModel.dart';
import 'package:pets/app/modules/serviceSelect/model/radioModel.dart';
import 'package:pets/app/modules/serviceSelect/model/radioPetModel.dart';

class ServiceSelectController extends BaseController {
  var currentIndex = 0.obs;

  Rx<List<RadioModel>> sampleData = Rx<List<RadioModel>>([
    RadioModel(true, '0 - 3 kg', 120000),
    RadioModel(false, '3 - 5 kg', 150000),
    RadioModel(false, '5 - 10 kg', 180000),
    RadioModel(false, '10 - 15 kg', 210000),
    RadioModel(false, '15 - 20 kg', 250000),
  ]);

  Rx<List<RadioPetModel>> typePet = Rx<List<RadioPetModel>>([
    RadioPetModel(true, 'Chó'),
    RadioPetModel(false, 'Mèo'),
  ]);

  Rx<List<RadioBoxModel>> boxModelData = Rx<List<RadioBoxModel>>([
    RadioBoxModel(false, 'Cắt móng', 10000),
    RadioBoxModel(false, 'Tạo kiểu lông', 35000),
    RadioBoxModel(false, 'Vệ sinh tai', 15000),
  ]);

  bool cbAll = false;
}
