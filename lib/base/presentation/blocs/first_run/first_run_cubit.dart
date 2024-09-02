import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/usecases/first_run_use_case.dart';

part 'first_run_state.dart';
part 'first_run_cubit.freezed.dart';

@injectable
class FirstRunCubit extends Cubit<FirstRunState> {
  FirstRunCubit(this._observeFirstRunUseCase, this._updateFirstRunFlagUseCase)
      : super(const FirstRunState.initial());
  final ObserveFirstRunUseCase _observeFirstRunUseCase;
  final UpdateFirstRunFlagUseCase _updateFirstRunFlagUseCase;

  getFlag() async {
    emit(const FirstRunState.loading());
    final value =
        await _observeFirstRunUseCase.createObservable(NoParams()).first;
    emit(FirstRunState.firstRun(value ?? true));
  }

  updateFlag(bool value) async {
    await _updateFirstRunFlagUseCase.call(value);
    emit(FirstRunState.firstRun(value));
  }
}
