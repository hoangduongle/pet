import 'package:pets/app/core/model/order.dart';
import 'package:pets/app/core/model/paymentMethod.dart';

class Payment {
  int? id;
  String? date;
  int? total;
  Order? order;
  int? paymentMethodId;
  PaymentMethod? paymentMethod;

  Payment({this.id, this.date, this.total, this.order, this.paymentMethodId, this.paymentMethod});

  Payment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    total = json['total'];
    order = json['order'] != null ? new Order.fromJson(json['order']) : null;
    paymentMethodId = json['paymentMethodId'];
    paymentMethod = json['paymentMethod'] != null ? new PaymentMethod.fromJson(json['paymentMethod']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['total'] = this.total;
    if (this.order != null) {
      data['order'] = this.order!.toJson();
    }
    data['paymentMethodId'] = this.paymentMethodId;
    if (this.paymentMethod != null) {
      data['paymentMethod'] = this.paymentMethod!.toJson();
    }
    return data;
  }
}
