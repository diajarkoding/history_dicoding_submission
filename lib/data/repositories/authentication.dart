import 'package:history_dicoding_submission/domain/entities/result.dart';
import 'package:history_dicoding_submission/domain/entities/user.dart';

abstract interface class Authentication {
  Future<Result<String>> register(
      {required String name, required String email, required String password});
  Future<Result<User>> login({required String email, required String password});
  Future<Result<void>> logout();
  String? getLoggedInUserToken();
}
