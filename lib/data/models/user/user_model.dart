import 'dart:convert';

import 'package:equatable/equatable.dart';

class UserModel extends Equatable {
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final String phoneNumber;
  final String address;
  final String gender;

  const UserModel({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.phoneNumber,
    required this.address,
    required this.gender,
  });

  UserModel copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? phoneNumber,
    String? address,
    String? gender,
  }) {
    return UserModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      address: address ?? this.address,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'phoneNumber': phoneNumber,
      'address': address,
      'gender': gender,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      email: map['email'] as String,
      password: map['password'] as String,
      phoneNumber: map['phoneNumber'] as String,
      address: map['address'] as String,
      gender: map['gender'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  List<Object> get props {
    return [
      firstName,
      lastName,
      email,
      password,
      phoneNumber,
      address,
      gender,
    ];
  }

  @override
  bool? get stringify => true;
}