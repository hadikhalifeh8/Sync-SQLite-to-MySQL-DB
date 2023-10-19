class CartModel {
  int? id;
  int? usersId;
  int? itemsId;
  String? createdAt;
  String? updatedAt;
  UserRltn? userRltn;
  ItemRltn? itemRltn;

  CartModel(
      {this.id,
      this.usersId,
      this.itemsId,
      this.createdAt,
      this.updatedAt,
      this.userRltn,
      this.itemRltn});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    usersId = json['users_id'];
    itemsId = json['items_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    userRltn = json['user_rltn'] != null
        ? new UserRltn.fromJson(json['user_rltn'])
        : null;
    itemRltn = json['item_rltn'] != null
        ? new ItemRltn.fromJson(json['item_rltn'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['users_id'] = this.usersId;
    data['items_id'] = this.itemsId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.userRltn != null) {
      data['user_rltn'] = this.userRltn!.toJson();
    }
    if (this.itemRltn != null) {
      data['item_rltn'] = this.itemRltn!.toJson();
    }
    return data;
  }
}

class UserRltn {
  int? id;
  String? name;
  String? email;
  String? phoneNo;
  int? verifyCode;
  String? userApprove;
  Null? emailVerifiedAt;
  Null? twoFactorSecret;
  Null? twoFactorRecoveryCodes;
  Null? twoFactorConfirmedAt;
  String? createdAt;
  String? updatedAt;

  UserRltn(
      {this.id,
      this.name,
      this.email,
      this.phoneNo,
      this.verifyCode,
      this.userApprove,
      this.emailVerifiedAt,
      this.twoFactorSecret,
      this.twoFactorRecoveryCodes,
      this.twoFactorConfirmedAt,
      this.createdAt,
      this.updatedAt});

  UserRltn.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phoneNo = json['phone_no'];
    verifyCode = json['verify_code'];
    userApprove = json['user_approve'];
    emailVerifiedAt = json['email_verified_at'];
    twoFactorSecret = json['two_factor_secret'];
    twoFactorRecoveryCodes = json['two_factor_recovery_codes'];
    twoFactorConfirmedAt = json['two_factor_confirmed_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone_no'] = this.phoneNo;
    data['verify_code'] = this.verifyCode;
    data['user_approve'] = this.userApprove;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['two_factor_secret'] = this.twoFactorSecret;
    data['two_factor_recovery_codes'] = this.twoFactorRecoveryCodes;
    data['two_factor_confirmed_at'] = this.twoFactorConfirmedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class ItemRltn {
  int? id;
  int? categoryId;
  String? nameAr;
  String? nameEn;
  String? descriptionAr;
  String? descriptionEn;
  String? image;
  int? count;
  int? active;
  int? price;
  int? discount;
  int? itemspricediscount;
  int? favorite;
  int? cartQty;
  String? createdAt;
  String? updatedAt;

  ItemRltn(
      {this.id,
      this.categoryId,
      this.nameAr,
      this.nameEn,
      this.descriptionAr,
      this.descriptionEn,
      this.image,
      this.count,
      this.active,
      this.price,
      this.discount,
      this.itemspricediscount,
      this.favorite,
      this.cartQty,
      this.createdAt,
      this.updatedAt});

  ItemRltn.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    descriptionAr = json['description_ar'];
    descriptionEn = json['description_en'];
    image = json['image'];
    count = json['count'];
    active = json['active'];
    price = json['price'];
    discount = json['discount'];
    itemspricediscount = json['itemspricediscount'];
    favorite = json['favorite'];
    cartQty = json['cart_qty'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    data['description_ar'] = this.descriptionAr;
    data['description_en'] = this.descriptionEn;
    data['image'] = this.image;
    data['count'] = this.count;
    data['active'] = this.active;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['itemspricediscount'] = this.itemspricediscount;

    data['favorite'] = this.favorite;
    data['cart_qty'] = this.cartQty;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}









// add order_rltn => to get  items that beongs to each order_id


// class CartModel {
//   int? id;
//   int? usersId;
//   int? itemsId;
//   int? orderId;
//   String? createdAt;
//   String? updatedAt;
//   UserRltn? userRltn;
//   ItemRltn? itemRltn;
//   OrderRltn? orderRltn;

//   CartModel(
//       {this.id,
//       this.usersId,
//       this.itemsId,
//       this.orderId,
//       this.createdAt,
//       this.updatedAt,
//       this.userRltn,
//       this.itemRltn,
//       this.orderRltn});

//   CartModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     usersId = json['users_id'];
//     itemsId = json['items_id'];
//     orderId = json['order_id'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     userRltn = json['user_rltn'] != null
//         ? new UserRltn.fromJson(json['user_rltn'])
//         : null;
//     itemRltn = json['item_rltn'] != null
//         ? new ItemRltn.fromJson(json['item_rltn'])
//         : null;
//     orderRltn = json['order_rltn'] != null
//         ? new OrderRltn.fromJson(json['order_rltn'])
//         : null;
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['users_id'] = this.usersId;
//     data['items_id'] = this.itemsId;
//     data['order_id'] = this.orderId;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     if (this.userRltn != null) {
//       data['user_rltn'] = this.userRltn!.toJson();
//     }
//     if (this.itemRltn != null) {
//       data['item_rltn'] = this.itemRltn!.toJson();
//     }
//     if (this.orderRltn != null) {
//       data['order_rltn'] = this.orderRltn!.toJson();
//     }
//     return data;
//   }
// }

// class UserRltn {
//   int? id;
//   String? name;
//   String? email;
//   String? phoneNo;
//   int? verifyCode;
//   String? userApprove;
//   Null? emailVerifiedAt;
//   Null? twoFactorSecret;
//   Null? twoFactorRecoveryCodes;
//   Null? twoFactorConfirmedAt;
//   String? createdAt;
//   String? updatedAt;

//   UserRltn(
//       {this.id,
//       this.name,
//       this.email,
//       this.phoneNo,
//       this.verifyCode,
//       this.userApprove,
//       this.emailVerifiedAt,
//       this.twoFactorSecret,
//       this.twoFactorRecoveryCodes,
//       this.twoFactorConfirmedAt,
//       this.createdAt,
//       this.updatedAt});

//   UserRltn.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     email = json['email'];
//     phoneNo = json['phone_no'];
//     verifyCode = json['verify_code'];
//     userApprove = json['user_approve'];
//     emailVerifiedAt = json['email_verified_at'];
//     twoFactorSecret = json['two_factor_secret'];
//     twoFactorRecoveryCodes = json['two_factor_recovery_codes'];
//     twoFactorConfirmedAt = json['two_factor_confirmed_at'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['email'] = this.email;
//     data['phone_no'] = this.phoneNo;
//     data['verify_code'] = this.verifyCode;
//     data['user_approve'] = this.userApprove;
//     data['email_verified_at'] = this.emailVerifiedAt;
//     data['two_factor_secret'] = this.twoFactorSecret;
//     data['two_factor_recovery_codes'] = this.twoFactorRecoveryCodes;
//     data['two_factor_confirmed_at'] = this.twoFactorConfirmedAt;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }

// class ItemRltn {
//   int? id;
//   int? categoryId;
//   String? nameAr;
//   String? nameEn;
//   String? descriptionAr;
//   String? descriptionEn;
//   String? image;
//   int? count;
//   int? active;
//   int? price;
//   int? discount;
//   int? itemspricediscount;
//   int? favorite;
//   int? cartQty;
//   String? createdAt;
//   String? updatedAt;

//   ItemRltn(
//       {this.id,
//       this.categoryId,
//       this.nameAr,
//       this.nameEn,
//       this.descriptionAr,
//       this.descriptionEn,
//       this.image,
//       this.count,
//       this.active,
//       this.price,
//       this.discount,
//       this.itemspricediscount,
//       this.favorite,
//       this.cartQty,
//       this.createdAt,
//       this.updatedAt});

//   ItemRltn.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     categoryId = json['category_id'];
//     nameAr = json['name_ar'];
//     nameEn = json['name_en'];
//     descriptionAr = json['description_ar'];
//     descriptionEn = json['description_en'];
//     image = json['image'];
//     count = json['count'];
//     active = json['active'];
//     price = json['price'];
//     discount = json['discount'];
//     itemspricediscount = json['itemspricediscount'];
//     favorite = json['favorite'];
//     cartQty = json['cart_qty'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['category_id'] = this.categoryId;
//     data['name_ar'] = this.nameAr;
//     data['name_en'] = this.nameEn;
//     data['description_ar'] = this.descriptionAr;
//     data['description_en'] = this.descriptionEn;
//     data['image'] = this.image;
//     data['count'] = this.count;
//     data['active'] = this.active;
//     data['price'] = this.price;
//     data['discount'] = this.discount;
//     data['itemspricediscount'] = this.itemspricediscount;
//     data['favorite'] = this.favorite;
//     data['cart_qty'] = this.cartQty;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }

// class OrderRltn {
//   int? id;
//   int? userId;
//   int? addressId;
//   Null? usedCoupon;
//   int? orderType;
//   int? paymentMethod;
//   int? orderPriceDelivery;
//   int? orderPrice;
//   int? totalPrice;
//   int? couponDiscount;
//   int? status;
//   String? orderDate;
//   String? createdAt;
//   String? updatedAt;

//   OrderRltn(
//       {this.id,
//       this.userId,
//       this.addressId,
//       this.usedCoupon,
//       this.orderType,
//       this.paymentMethod,
//       this.orderPriceDelivery,
//       this.orderPrice,
//       this.totalPrice,
//       this.couponDiscount,
//       this.status,
//       this.orderDate,
//       this.createdAt,
//       this.updatedAt});

//   OrderRltn.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     userId = json['user_id'];
//     addressId = json['address_id'];
//     usedCoupon = json['used_coupon'];
//     orderType = json['order_type'];
//     paymentMethod = json['payment_method'];
//     orderPriceDelivery = json['order_price_delivery'];
//     orderPrice = json['order_price'];
//     totalPrice = json['total_price'];
//     couponDiscount = json['coupon_discount'];
//     status = json['status'];
//     orderDate = json['order_date'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['user_id'] = this.userId;
//     data['address_id'] = this.addressId;
//     data['used_coupon'] = this.usedCoupon;
//     data['order_type'] = this.orderType;
//     data['payment_method'] = this.paymentMethod;
//     data['order_price_delivery'] = this.orderPriceDelivery;
//     data['order_price'] = this.orderPrice;
//     data['total_price'] = this.totalPrice;
//     data['coupon_discount'] = this.couponDiscount;
//     data['status'] = this.status;
//     data['order_date'] = this.orderDate;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     return data;
//   }
// }