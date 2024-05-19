// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  String id;
  String name;
  String department;
  String email;
  String designation;
  String password;
  String createBy;
  DateTime createAt;

  LoginModel({
    required this.id,
    required this.name,
    required this.department,
    required this.email,
    required this.designation,
    required this.password,
    required this.createBy,
    required this.createAt,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    id: json["Id"],
    name: json["Name"],
    department: json["Department"],
    email: json["Email"],
    designation: json["Designation"],
    password: json["password"],
    createBy: json["create_by"],
    createAt: DateTime.parse(json["create_at"]),
  );

  Map<String, dynamic> toJson() => {
    "Id": id,
    "Name": name,
    "Department": department,
    "Email": email,
    "Designation": designation,
    "password": password,
    "create_by": createBy,
    "create_at": createAt.toIso8601String(),
  };
}
