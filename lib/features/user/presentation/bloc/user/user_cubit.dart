import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/features/user/data/models/user_model.dart';
import 'package:beneficiary/features/user/domain/use_cases/get_user_info_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

@injectable
class UserCubit extends Cubit<UserState> {
  UserCubit(this._getUserInfoUseCase) : super(const UserState.initial());
  final GetUserInfoUseCase _getUserInfoUseCase;
  getUserData({bool refresh = true}) async {
    if (state is! _UserFetched || refresh) emit(const _Loading());
    final result = await _getUserInfoUseCase.call(NoParams());
    result.fold(
      (failure) => emit(_UserCouldNotFetched(failure)),
      (userInfo) => emit(_UserFetched(userInfo)),
    );
  }
}
