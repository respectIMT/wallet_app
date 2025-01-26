List<UserObject> usersFromMap(List list) => List<UserObject>.from(list.map((item) => UserObject.fromJson(item)));

class UserObject {
  int id;
  String userName;
  String status;
  String createdAt;
  String updatedAt;
  String phone;
  String fullname;
  bool isActive;

  UserObject({
    required this.id,
    required this.userName,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.phone,
    required this.fullname,
    required this.isActive,
  });
  factory UserObject.fromJson(Map<String, dynamic> json) => UserObject(
        id: json['id'] ?? int,
        userName: json['username'] ?? "",
        status: json['status'] ?? "",
        createdAt: json['created_at'] ?? "",
        updatedAt: json['updated_at'] ?? "",
        phone: json['phone'] ?? "",
        fullname: json['fullname'] ?? "",
        isActive: json['is_active'] ?? bool,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "username": userName,
        "status": status,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "phone": phone,
        "fullname": fullname,
        "is_active": isActive,
      };
}
