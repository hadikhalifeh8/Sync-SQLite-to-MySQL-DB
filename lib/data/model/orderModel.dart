class OrdersModel {
  int? id;
  int? userId;
  int? addressId;
  int? usedCoupon;
  int? orderType;
  int? paymentMethod;
  int? orderPriceDelivery;
  int? orderPrice;
  int? totalPrice;
  int? couponDiscount;
  int? status;
  String? orderDate;
  String? createdAt;
  String? updatedAt;
  int? orderRating;
  String? orderNoteRating;
  AddressRltn? addressRltn;

  OrdersModel(
      {this.id,
      this.userId,
      this.addressId,
      this.usedCoupon,
      this.orderType,
      this.paymentMethod,
      this.orderPriceDelivery,
      this.orderPrice,
      this.totalPrice,
      this.couponDiscount,
      this.status,
      this.orderDate,
      this.createdAt,
      this.updatedAt,
       this.orderRating,
      this.orderNoteRating,
      this.addressRltn});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    addressId = json['address_id'];
    usedCoupon = json['used_coupon'];
    orderType = json['order_type'];
    paymentMethod = json['payment_method'];
    orderPriceDelivery = json['order_price_delivery'];
    orderPrice = json['order_price'];
    totalPrice = json['total_price'];
    couponDiscount = json['coupon_discount'];
    status = json['status'];
    orderDate = json['order_date'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    orderRating = json['order_rating'];
    orderNoteRating = json['order_note_rating'];
    addressRltn = json['address_rltn'] != null
        ? new AddressRltn.fromJson(json['address_rltn'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['address_id'] = this.addressId;
    data['used_coupon'] = this.usedCoupon;
    data['order_type'] = this.orderType;
    data['payment_method'] = this.paymentMethod;
    data['order_price_delivery'] = this.orderPriceDelivery;
    data['order_price'] = this.orderPrice;
    data['total_price'] = this.totalPrice;
    data['coupon_discount'] = this.couponDiscount;
    data['status'] = this.status;
    data['order_date'] = this.orderDate;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['order_rating'] = this.orderRating;
    data['order_note_rating'] = this.orderNoteRating;
    if (this.addressRltn != null) {
      data['address_rltn'] = this.addressRltn!.toJson();
    }
    return data;
  }
}

class AddressRltn {
  int? id;
  int? userId;
  String? addressName;
  String? city;
  String? street;
  double? adressLatitude;
  double? adressLongitude;
  String? createdAt;
  String? updatedAt;

  AddressRltn(
      {this.id,
      this.userId,
      this.addressName,
      this.city,
      this.street,
      this.adressLatitude,
      this.adressLongitude,
      this.createdAt,
      this.updatedAt});

  AddressRltn.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    addressName = json['address_name'];
    city = json['city'];
    street = json['street'];
    adressLatitude = json['adress_latitude'];
    adressLongitude = json['adress_longitude'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['address_name'] = this.addressName;
    data['city'] = this.city;
    data['street'] = this.street;
    data['adress_latitude'] = this.adressLatitude;
    data['adress_longitude'] = this.adressLongitude;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}