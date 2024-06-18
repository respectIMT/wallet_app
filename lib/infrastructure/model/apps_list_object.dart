List<AppsObject> appsFromMap(List list) =>
    List<AppsObject>.from(list.map((items) => AppsObject.fromJson(items)));

class AppsObject {
  int id;
  String name;
  String description;
  String url;
  String icon;
  bool status;
  String createdAt;
  String updatedAt;
  bool isActive;

  AppsObject({
    required this.id,
    required this.name,
    required this.description,
    required this.url,
    required this.icon,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.isActive,
  });
  factory AppsObject.fromJson(Map<String, dynamic> json) => AppsObject(
      id: json['id'] ?? 0,
      name: json['name'] ?? "",
      description: json['description'] ?? "",
      url: json['url'] ?? "",
      icon: json['icon'] ?? "",
      status: json['status'] ?? false,
      createdAt: json['created_at'] ?? "",
      updatedAt: json['updated_at'] ?? "",
      isActive: json['is_active'] ?? false,
    );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "description": description,
    "url": url,
    "icon": icon,
    "status": status,
    "created_at": createdAt,
    "updated_at": updatedAt,
    "is_active": isActive,
  };
}
