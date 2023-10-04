import 'package:history_dicoding_submission/data/repositories/authentication.dart';
import 'package:history_dicoding_submission/domain/entities/result.dart';
import 'package:history_dicoding_submission/domain/entities/user.dart';
import 'package:history_dicoding_submission/domain/usecases/usecase.dart';
part 'login_params.dart';

class Login implements UseCase<Result<User>, LoginParams> {
  final Authentication authentication;
  Login({required this.authentication});
  @override
  Future<Result<User>> call(LoginParams param) async {
    var userResult = await authentication.login(
        email: param.email, password: param.password);

    return switch (userResult) {
      Success(value: final user) => Result.succes(user),
      Failed(:final message) => Result.failed(message)
    };
  }
}
