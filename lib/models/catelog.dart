class CatelogModel {
  static final iteams = [
    Iteam(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        imageUrl:"Assests/Images/2.webp"),
  ];
}

class Iteam {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imageUrl;

  Iteam(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imageUrl});
}
