import 'package:beneficiary/features/user/data/models/user_model.dart';
import 'package:beneficiary/features/user/data/models/user_type.dart';
import 'package:dartz/dartz.dart';

import '../../../../base/domain/errors/failure.dart';

abstract class UserRepository {
  Future<Either<Failure, UserModel>> getUserInfo();
  Future<Either<Failure, void>> updateUser({
    UserType? userType,
    String? name,
    String? userName,
    double? balance,
    bool isVerified = false,
    DateTime? dateOfBirth,
  });
}
