import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/features/user/data/models/user_type.dart';
import 'package:beneficiary/features/user/domain/use_cases/update_user_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'update_user_state.dart';
part 'update_user_cubit.freezed.dart';

@injectable
class UpdateUserCubit extends Cubit<UpdateUserState> {
  UpdateUserCubit(this._updateUserInfoUseCase)
      : super(const UpdateUserState.initial());
  final UpdateUserInfoUseCase _updateUserInfoUseCase;
  updateUser({
    UserType? userType,
    String? name,
    String? userName,
    double? balance,
    bool isVerified = false,
    DateTime? dateOfBirth,
  }) async {
    emit(const _Updating());
    final result = await _updateUserInfoUseCase.call(UpdateUserParams(
      userType: userType,
      userName: userName,
      name: name,
      balance: balance,
      isVerified: isVerified,
      dateOfBirth: dateOfBirth,
    ));
    result.fold(
      (failure) => emit(_Failure(failure)),
      (success) => emit(const _UserUpated()),
    );
  }
}
