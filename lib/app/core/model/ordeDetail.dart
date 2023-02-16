class OrderDetail {
  int? id;
  String? description;
  int? price;
  int? qty;
  int? orderId;
  int? serviceId;

  OrderDetail({this.id, this.description, this.price, this.qty, this.orderId, this.serviceId});

  OrderDetail.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    price = json['price'];
    qty = json['qty'];
    orderId = json['orderId'];
    serviceId = json['serviceId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['price'] = this.price;
    data['qty'] = this.qty;
    data['orderId'] = this.orderId;
    data['serviceId'] = this.serviceId;
    return data;
  }
}
