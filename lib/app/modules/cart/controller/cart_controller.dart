import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pets/app/core/base/base_controller.dart';
import 'package:pets/app/core/model/ordeDetail.dart';
import 'package:pets/app/core/model/order.dart';
import 'package:pets/app/core/model/payment.dart';
import 'package:pets/app/core/model/service.dart';
import 'package:pets/app/core/utils/date_time_utils.dart';
import 'package:pets/app/core/values/app_colors.dart';
import 'package:pets/app/core/widget/loading_dialog.dart';
import 'package:pets/app/data/repository/repository.dart';
import 'package:pets/app/modules/order/view/success_view.dart';
import 'package:pets/app/route/app_routes.dart';

class CartController extends BaseController {
  final Repository _repository = Get.find(tag: (Repository).toString());

  var cbAll = false.obs;
  final _service = {}.obs;

  get services => _service;

  void addService(Service serviceContent, int quantity) {
    if (_service.containsKey(serviceContent)) {
      _service[serviceContent] += quantity;
    } else {
      _service[serviceContent] = quantity;
    }
    Get.snackbar("", "",
        colorText: AppColors.Cffffff,
        borderRadius: 10.r,
        icon: const Icon(Icons.shopping_cart),
        messageText: Text(
          "Số lượng: $quantity",
          style: TextStyle(
              color: AppColors.Cffffff,
              fontSize: 15.r,
              fontWeight: FontWeight.normal),
        ),
        titleText: Text(
          "${serviceContent.name} đã thêm vào giỏ",
          style: TextStyle(
              color: AppColors.Cffffff,
              fontSize: 17.r,
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.CFF7A00,
        duration: const Duration(milliseconds: 3000));
    update();
  }

  void removeSerivce(Service serviceContent) {
    _service.remove(serviceContent);
    update();
  }

  void removeAllSerivce() {
    if (_service.isNotEmpty) _service.clear();
    update();
  }

  get total {
    String x;
    double y = 0, result = 0;
    try {
      x = _service.entries
          .map((service) => service.key.price * service.value)
          .toList()
          .reduce((value, element) => value + element)
          .toString();
      result = double.parse(x);
    } catch (e) {
      y;
    }
    y = result;
    return y;
  }

  void selectAll() {}

  void addNewOrder() async {
    try {
      if (_service.isNotEmpty) {
        const LoadingDialog().showLoadingDialog(Get.context!);
        List<OrderDetail> listOrderDetail = [];
        for (int i = 0; i < _service.length; i++) {
          Service serContent = _service.keys.toList()[i];
          int quantity = _service.values.toList()[i];
          OrderDetail lorderDetailRequests = OrderDetail(
            id: 0,
            description: serContent.description,
            orderId: 0,
            price: serContent.price!.toDouble(),
            qty: quantity,
            serviceId: serContent.id,
          );
          listOrderDetail.add(lorderDetailRequests);
        }
        Order orderRequest = Order(
          date: DateTimeUtils.currentDate(),
          id: 0,
          orderDetails: listOrderDetail,
          payment: null,
          totalAmount: total,
          userId: 2,
        );
        int result = await insertOrderRequest(orderRequest);
        if (result != 201) {
          throw Exception();
        }
        Get.back();
        removeAllSerivce();
        Get.to(() => SuccessOther());
        Future.delayed(
            const Duration(seconds: 3), () => Get.toNamed(Routes.MAIN));
      } else {
        Get.back();
      }
    } catch (e) {
      Get.back();
      // const DialogCart().showFailDialog(Get.context!);
    }
    update();
  }

  Future<int> insertOrderRequest(Order order) async {
    var overview = _repository.insertOrder(order);
    var result = -1;
    await callDataService(
      overview,
      onSuccess: (response) {
        result = response;
      },
      onError: ((dioError) {}),
    );
    return result;
  }



}

