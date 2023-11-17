import 'package:budz_test/src/data/model/pet/pet_model.dart';

class UserModel {
  final String email;
  final String generalPetId;
  final dynamic thirdPartyLoginIdToken;
  final bool pushAllow;
  final String fullname;
  final String thirdPartyLoginServerAuthCode;
  final String photoUrl;
  final DateTime updatedDate;
  final DateTime createdDate;
  final bool isThirdPartyLogin;
  final String phoneNumber;
  final String id;
  final String username;
  final DateTime birthdate;
  final String gender;

  List<PetModel> pets;

  UserModel({
    required this.email,
    required this.generalPetId,
    required this.thirdPartyLoginIdToken,
    required this.pushAllow,
    required this.fullname,
    required this.thirdPartyLoginServerAuthCode,
    required this.photoUrl,
    required this.updatedDate,
    required this.createdDate,
    required this.isThirdPartyLogin,
    required this.phoneNumber,
    required this.id,
    required this.username,
    required this.birthdate,
    required this.gender,
    this.pets = const [],
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json["user"]["email"],
        generalPetId: json["user"]["generalPetID"],
        thirdPartyLoginIdToken: json["user"]["thirdPartyLoginIdToken"] ?? "",
        pushAllow: json["user"]["pushAllow"] ?? false,
        fullname: json["user"]["fullname"],
        thirdPartyLoginServerAuthCode:
            json["user"]["thirdPartyLoginServerAuthCode"] ?? "",
        photoUrl: json["user"]["photoUrl"] ??
            "https://randomuser.me/api/portraits/men/35.jpg",
        updatedDate: DateTime.parse(json["user"]["updatedDate"]),
        createdDate: DateTime.parse(json["user"]["createdDate"]),
        isThirdPartyLogin: json["user"]["isThirdPartyLogin"] ?? false,
        phoneNumber: json["user"]["phoneNumber"] ?? "",
        id: json["user"]["id"],
        username: json["user"]["nickname"],
        birthdate: json["user"]["birthdate"] != null
            ? DateTime.parse(json["user"]["birthdate"])
            : DateTime.now(),
        gender: json["user"]["gender"] ?? "Não informado",
        pets: json["pets"] != null
            ? List<PetModel>.from(json["pets"].map((x) => PetModel.fromJson(x)))
            : [],
      );

  factory UserModel.empty() {
    return UserModel(
      email: 'johndoe@gmail.com',
      generalPetId: '',
      thirdPartyLoginIdToken: '',
      pushAllow: false,
      fullname: 'John Doe',
      thirdPartyLoginServerAuthCode: '',
      photoUrl: 'https://randomuser.me/api/portraits/men/35.jpg',
      updatedDate: DateTime.now(),
      createdDate: DateTime.now(),
      isThirdPartyLogin: false,
      phoneNumber: '',
      id: '',
      username: 'John',
      birthdate: DateTime.now(),
      gender: 'Masculino',
    );
  }

  Map<String, dynamic> toJson() => {
        "email": email,
        "generalPetID": generalPetId,
        "thirdPartyLoginIdToken": thirdPartyLoginIdToken,
        "pushAllow": pushAllow,
        "fullname": fullname,
        "thirdPartyLoginServerAuthCode": thirdPartyLoginServerAuthCode,
        "photoUrl": photoUrl,
        "updatedDate": updatedDate.toIso8601String(),
        "createdDate": createdDate.toIso8601String(),
        "isThirdPartyLogin": isThirdPartyLogin,
        "phoneNumber": phoneNumber,
        "id": id,
        "nickname": username,
        "birthdate": birthdate,
        "gender": gender,
      };
}
