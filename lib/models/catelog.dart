// ignore_for_file: avoid_types_as_parameter_names, non_constant_identifier_names

class CatelogModel {
  static List<Iteam> iteams = [
    Iteam(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 24999,
        color: "#33505a",
        imageUrl: "Assests/Images/2.webp"),
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

  factory Iteam.fromMap(Map<String, dynamic> map) {
    return Iteam(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      imageUrl: map["imageUrl"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "imageUrl": imageUrl,
      };
}
