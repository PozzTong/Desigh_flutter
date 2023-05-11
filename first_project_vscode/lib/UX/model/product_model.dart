class ProductModel {
  late int code;
  late String name;
  late int qty;
  late double price;
  late String stockStatus;
  late String description;
  late double rate;
  late double discount;
  late String image;
  ProductModel(
      {required this.code,
      required this.name,
      required this.price,
      required this.qty,
      required this.rate,
      required this.discount,
      required this.description,
      required this.image,
      required this.stockStatus});
}

List<ProductModel> products = [
  ProductModel(
      code: 123,
      name: 'EYKI Mens Sport',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 10,
      description:
          'EYKI Mens Sport Watch 2018 Luxury Brand Male Clock Brown Leather ...',
      image:
          'https://ae01.alicdn.com/kf/HTB12foVbf1TBuNjy0Fjq6yjyXXav/EYKI-Mens-Sport-Watch-2018-Luxury-Brand-Male-Clock-Brown-Leather-Watchband-Man-Dress-Wrist-Watches.jpg',
      stockStatus: 'INSTOCK'),
  ProductModel(
      code: 124,
      name: 'Black Military Mechanical',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 15,
      description:
          'Black Military Mechanical Watches Men Function Watch Automatic Full ...',
      image:
          'https://ae01.alicdn.com/kf/HTB1a04Tgj3z9KJjy0Fmq6xiwXXaj/Black-Military-Mechanical-Watches-Men-Function-Watch-Automatic-Full-Steel-Mens-Watches-Waterproof-Self-winding-Male.jpg',
      stockStatus: 'INSTOCK'),
  ProductModel(
      code: 125,
      name: 'Mechanical Automatic',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 20,
      description:
          'Classy Men\'s Mechanical Automatic Wristwatch for Men Mens Watch ...',
      image:
          'https://th.bing.com/th/id/OIP.KKaPCt-dpoZCCfYpSUe-EwHaHa?pid=ImgDet&rs=1',
      stockStatus: 'INSTOCK'),
  ProductModel(
      code: 126,
      name: 'Apple Watch Series 4',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 15,
      description:
          'Apple Watch Series 4 Apple Watch Series 4 GPS + Cellular, 40mm Gold ...',
      image:
          'https://th.bing.com/th/id/OIP.02fM7D8hzap85BQa498ARgHaJC?pid=ImgDet&w=700&h=855&rs=1',
      stockStatus: 'INSTOCK'),
  ProductModel(
      code: 127,
      name: 'Apple-Watch',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 10,
      description: 'Apple-Watch-Apple-Watch-Iwatch-PNG-Image - FAST EXPO 2020',
      image:
          'https://th.bing.com/th/id/R.c8eb44b5a439606d4615ef2a8d6dfa6d?rik=DfSeBbR%2fJMET6w&pid=ImgRaw&r=0',
      stockStatus: 'INSTOCK'),
  ProductModel(
      code: 128,
      name: 'Apple Iwatch Series 6',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 5,
      description:
          'Apple Iwatch Series 6 44MM GPS Only in Darkuman - Smart Watches ...',
      image:
          'https://d12uoqa0c8grue.cloudfront.net/9966864_4a2d1bab-2b89-4e68-a85d-711dda7fae4e_1400x1400.jpg',
      stockStatus: 'OUTSTOCK'),
  ProductModel(
      code: 129,
      name: 'Locksley',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 15,
      description: 'Locksley London Automatic Watch LL106840',
      image:
          'https://d1rkccsb0jf1bk.cloudfront.net/products/100041775/main/large/LL106840updated.jpg',
      stockStatus: 'INSTOCK'),
  ProductModel(
      code: 130,
      name: 'Citizen Navihawk AT Alarm',
      price: 125,
      qty: 1,
      rate: 4,
      discount: 12,
      description:
          'Mens Citizen Navihawk AT Alarm Chronograph Radio Controlled Eco-Drive Watch',
      image:
          'https://d1rkccsb0jf1bk.cloudfront.net/products/99986640/main/large/jy8037-50e_high_res-1439896505-1302.jpg',
      stockStatus: 'INSTOCK'),
];
