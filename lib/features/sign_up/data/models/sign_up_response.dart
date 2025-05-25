import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_response.g.dart';

@JsonSerializable()
class SignUpResponse{
  String? massage;
  @JsonKey(name: 'data')
  UserData? userData;
  bool? status;
  int? code;

  SignUpResponse({this.massage, this.userData, this.status, this.code});

  factory SignUpResponse.fromJson (Map<String,dynamic> json) => _$SignUpResponseFromJson(json);
}

@JsonSerializable()
class UserData{
  String? token;
  @JsonKey(name : 'username')
  String? userName;

  UserData({this.token, this.userName});

  factory UserData.fromJson(Map<String,dynamic> json) => _$UserDataFromJson(json);
}