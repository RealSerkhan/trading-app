import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/features/beneficiary/data/models/beneficiary/beneficiary.dart';
import 'package:beneficiary/features/beneficiary/domain/use_cases/get_all_beneficiary_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beneficiaries_list_state.dart';
part 'beneficiaries_list_cubit.freezed.dart';

class BeneficiariesListCubit extends Cubit<BeneficiariesListState> {
  BeneficiariesListCubit(this._getAllBeneficiariesUseCase)
      : super(const BeneficiariesListState.initial());
  final GetAllBeneficiariesUseCase _getAllBeneficiariesUseCase;
  getAllBeneficiary() async {
    emit(const _Fetching());
    final result = await _getAllBeneficiariesUseCase.call(NoParams());
    result.fold(
      (failure) => emit(_BeneficiariesCouldNotFetched(failure)),
      (beneficiaryList) => emit(_BeneficiariesFetched(beneficiaryList)),
    );
  }
}
