import 'address.dart';
import 'company.dart';

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final Address address;
  final Company company;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.company,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      address: Address.fromJson(json['address']),
      company: Company.fromJson(json['company']),
    );
  }
}