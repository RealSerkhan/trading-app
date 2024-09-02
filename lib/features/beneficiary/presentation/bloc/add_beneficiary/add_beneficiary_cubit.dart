import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/features/beneficiary/domain/use_cases/add_beneficiary_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_beneficiary_state.dart';
part 'add_beneficiary_cubit.freezed.dart';

@injectable
class AddBeneficiaryCubit extends Cubit<AddBeneficiaryState> {
  AddBeneficiaryCubit(this._addBeneficiaryUseCase)
      : super(const AddBeneficiaryState.initial());

  final AddBeneficiaryUseCase _addBeneficiaryUseCase;

  addBeneficiary(
    int currentBeneficiaryCount, {
    required String nickname,
    required String phoneNumber,
  }) async {
    emit(const _Adding());

    if (currentBeneficiaryCount >= 5) {
      emit(const _MaxLimitExceeded());
      return;
    }

    final result = await _addBeneficiaryUseCase.call(
      AddBeneficiaryParams(nickname: nickname, phoneNumber: phoneNumber),
    );
    result.fold(
      (failure) => emit(_CouldNotAdded(failure)),
      (success) => emit(const _Added()),
    );
  }
}
