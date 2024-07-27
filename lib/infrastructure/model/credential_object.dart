List<CredentialObject> itemFromMap(List list) => List<CredentialObject>.from(
    list.map((items) => CredentialObject.fromJson(items)));

class CredentialObject {
  int appId;
  String login;
  String password;
  String superPassword;

  CredentialObject({
    required this.appId,
    required this.login,
    required this.password,
    required this.superPassword,
  });
  factory CredentialObject.fromJson(Map<String, dynamic> json) =>
      CredentialObject(
        appId: json['app_id'] ?? 0,
        login: json['login'] ?? "",
        password: json['password'] ?? "",
        superPassword: json['super_password'] ?? "",
      );

  Map<String, dynamic> toJson() => {
      "app_id": appId,
      "login": login,
      "password": password,
      "super_password": superPassword,
    };
}
