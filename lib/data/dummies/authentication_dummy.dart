import 'package:history_dicoding_submission/data/repositories/authentication.dart';
import 'package:history_dicoding_submission/domain/entities/result.dart';
import 'package:history_dicoding_submission/domain/entities/user.dart';

class DummyAuthentication implements Authentication {
  @override
  String? getLoggedInUserToken() {
    // TODO: implement getLoggedInUserToken
    throw UnimplementedError();
  }

  @override
  Future<Result<User>> login(
      {required String email, required String password}) async {
    await Future.delayed(const Duration(seconds: 1));
    return const Result.succes(
      User(
          userId: 'user-yj5pc_LARC_AgK61',
          name: 'Arif Faizin',
          token:
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJ1c2VyLXlqNXBjX0xBUkNfQWdLNjEiLCJpYXQiOjE2NDE3OTk5NDl9.flEMaQ7zsdYkxuyGbiXjEDXO8kuDTcI__3UjCwt6R_I'),
    );
  }

  @override
  Future<Result<void>> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Result<String>> register(
      {required String name, required String email, required String password}) {
    // TODO: implement register
    throw UnimplementedError();
  }
}
