List<UsersObject> usersFromMap(List list) => List<UsersObject>.from(list.map((items) => UsersObject.fromJson(items)));

class UsersObject {
  int id;
  String username;
  String status;
  String createdAt;
  String updatedAt;
  String phone;
  String fullname;
  bool isActive;

  UsersObject({
    required this.id,
    required this.username,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.phone,
    required this.fullname,
    required this.isActive,
  });
  factory UsersObject.fromJson(Map<String, dynamic> json) => UsersObject(
        id: json['id'] ?? "",
        username: json['username'] ?? "",
        status: json['status'] ?? "",
        createdAt: json['created_at'] ?? "",
        updatedAt: json['updated_at'] ?? "",
        phone: json['phone'] ?? "",
        fullname: json['fullname'] ?? "",
        isActive: json['is_active'] ?? "",
      );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "phone": phone,
    "fullname": fullname,
    "is_active": isActive,
  };
}
