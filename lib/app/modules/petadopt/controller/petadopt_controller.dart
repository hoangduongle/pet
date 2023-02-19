import 'package:dio/dio.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/model/animalType.dart';
import 'package:pets/app/core/model/owner.dart';
import 'package:pets/app/data/repository/repository.dart';

class PetAdoptController extends BaseController {
  final Repository _repository = Get.find(tag: (Repository).toString());

  Rx<List<AnimalType>> animalTypeData = Rx<List<AnimalType>>([]);
  Rx<List<Owner>> petOwnerData = Rx<List<Owner>>([]);
  bool isLoading = true;
  @override
  void onInit() async {
    init();
    super.onInit();
  }

  void init() async {
    await fetchAnimalType();
    await fetchPetOwner();
  }

  Future<void> fetchAnimalType() async {
    var animalType = _repository.getAnimalType();
    List<AnimalType> result = [];

    await callDataService(
      animalType,
      onStart: () {
        isLoading = true;
      },
      onSuccess: (List<AnimalType> response) {
        result = response;
      },
      onError: (DioError dioError) {},
    );
    animalTypeData(result);
  }

  Future<void> fetchPetOwner() async {
    var petOwner = _repository.getPetOwner();
    List<Owner> result = [];
    await callDataService(petOwner,
        onSuccess: (List<Owner> response) {
          result = response;
        },
        onError: (DioError dioError) {},
        onComplete: () {
          isLoading = false;
        });
    petOwnerData(result);
  }
}
