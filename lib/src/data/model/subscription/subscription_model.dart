class Subscription {
  final String userType;
  final DateTime createdAt;
  final String userId;
  final DateTime updatedAt;
  final String subscriptionStatus;
  final String id;
  final String subscriptionType;

  Subscription({
    required this.userType,
    required this.createdAt,
    required this.userId,
    required this.updatedAt,
    required this.subscriptionStatus,
    required this.id,
    required this.subscriptionType,
  });

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
        userType: json["userType"],
        createdAt: json["createdAt"],
        userId: json["userId"],
        updatedAt: json["updatedAt"],
        subscriptionStatus: json["subscriptionStatus"],
        id: json["id"],
        subscriptionType: json["subscriptionType"],
      );

  Map<String, dynamic> toJson() => {
        "userType": userType,
        "createdAt": createdAt,
        "userId": userId,
        "updatedAt": updatedAt,
        "subscriptionStatus": subscriptionStatus,
        "id": id,
        "subscriptionType": subscriptionType,
      };
}
