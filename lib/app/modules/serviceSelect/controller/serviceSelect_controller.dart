import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/modules/serviceSelect/model/radioBoxModel.dart';
import 'package:pets/app/modules/serviceSelect/model/radioModel.dart';

class ServiceSelectController extends BaseController {
  var currentIndex = 0.obs;

  Rx<List<RadioModel>> sampleData = Rx<List<RadioModel>>([
    RadioModel(true, '0 - 3 kg', 120000),
    RadioModel(false, '3 - 5 kg', 150000),
    RadioModel(false, '5 - 10 kg', 180000),
    RadioModel(false, '10 - 15 kg', 210000),
    RadioModel(false, '15 - 20 kg', 250000),
  ]);

    Rx<List<RadioBoxModel>> boxModelData = Rx<List<RadioBoxModel>>([
    RadioBoxModel(false, 'Cắt móng'),
    RadioBoxModel(false, 'Tạo kiểu lông'),
    RadioBoxModel(false, 'Vệ sinh tai'),
  ]);

  bool cbAll = false;
}
