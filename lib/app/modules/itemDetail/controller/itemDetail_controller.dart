import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/utils/date_time_utils.dart';
import 'package:pets/app/data/repository/repository.dart';
import 'package:pets/app/modules/cart/controller/cart_controller.dart';
import 'package:pets/app/modules/serivce/controller/service_controller.dart';

class ItemDetailController extends BaseController {
  final Repository _repository = Get.find(tag: (Repository).toString());

  Rx<Service?> serviceData = Rx<Service?>(null);

  ServiceController serviceController = Get.find<ServiceController>();

  String CategoryName(int cateId) {
    var result = serviceController.cateData.value
        .where((element) => element.id == cateId);
    return result.first.name!;
  }

  @override
  void onInit() {
    if (Get.arguments != null) {
      var data = Get.arguments as Map<String, dynamic>;
      if (data.containsKey('service')) {
        serviceData(data['service']);
      }
    }
    super.onInit();
  }

  var date = DateTimeUtils.currentDateTime().obs;


  void addToCart() {
    CartController cartController = Get.find<CartController>();
    cartController.addService(
        Service(
          orderDetails: serviceData.value!.orderDetails,
          status: serviceData.value!.status,
          urlImage: serviceData.value!.urlImage,
          categoryId: 1,
          description: date.toString(),
          id: serviceData.value!.id,
          isCareService: serviceData.value!.isCareService,
          name: serviceData.value!.name,
          price: serviceData.value!.price,////////////////////////////////////////
          shopId: 1,
        ),
        1);
  }
}
