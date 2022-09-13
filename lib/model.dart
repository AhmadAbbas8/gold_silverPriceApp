class PriceModel {
  double? price;

  double? highPrice;

  double? lowPrice;

  PriceModel(
      {required this.price, required this.highPrice, required this.lowPrice});

   PriceModel.fromJson(Map<String, dynamic> data) {
    price = data['price'];
    highPrice = data['high_price'];
    lowPrice = data['low_price'];
  }
  Map<String , dynamic> toJson(){
     return {
       'price':price,
       'high_price':highPrice,
       'low_price':lowPrice

     };
  }

}
