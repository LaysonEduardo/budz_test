class PetModel {
  final String id;
  final String name;

  PetModel({
    required this.id,
    required this.name,
  });

  factory PetModel.fromJson(Map<String, dynamic> json) => PetModel(
        id: json["id"],
        name: json["name"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}
