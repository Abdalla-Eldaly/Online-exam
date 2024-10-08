import 'package:dio/dio.dart';
import 'package:online_exam/app/constants.dart';
import 'package:online_exam/data/response/response.dart';

import '../../domain/services/token_manager.dart';

abstract class AppServiceClient {
  Future<UserDto> register({
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String rePassword,
    required String phone,
  });

  Future<UserDto> login({
    required String email,
    required String password,
  });
}

class AppServiceClientImpl implements AppServiceClient {
  final Dio _dio;
  final TokenManager _tokenManager;

  AppServiceClientImpl(
    this._dio, this._tokenManager,
  );

  @override
  Future<UserDto> register(
      {required String username,
      required String firstName,
      required String lastName,
      required String email,
      required String password,
      required String rePassword,
      required String phone})async {
    Response<Map<String, dynamic>> response = await _dio.post(
      '${Constants.baseUrl}auth/signup',
      data: {
        "username":username,
        "firstName":firstName,
        "lastName":lastName,
        "email": email,
        "password":password,
        "rePassword":rePassword,
        "phone":phone

      },
    );

    ////TODO return user data
    return UserDto.fromJson(response.data?['user'] ?? {});
  }


  @override
  Future<UserDto> login({
    required String email,
    required String password,
  }) async {
    Response<Map<String, dynamic>> response = await _dio.post(
      '${Constants.baseUrl}auth/signin',
      data: FormData.fromMap({
        "email": email,
        "password": password,
      }),
    );

    ////TODO return user data
    return UserDto.fromJson(response.data?['data'] ?? {});
  }
}
