import 'package:json_annotation/json_annotation.dart';
part 'response.g.dart';

@JsonSerializable()
class UserDto{

  @JsonKey(name: "username")
  String? username;

  @JsonKey(name: "firstName")
  String? firstName;

  @JsonKey(name: "lastName")
  String? lastName;

  @JsonKey(name: "email")
  String? email;

  @JsonKey(name: "password")
  String? password;

  @JsonKey(name: "rePassword")
  String? rePassword;

  @JsonKey(name: "phone")
  String? phone;

  UserDto({
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.rePassword,
    this.phone,});



factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);



  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

}