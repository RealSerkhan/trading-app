import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';
import 'package:beneficiary/base/domain/models/no_params.dart';
import 'package:beneficiary/base/domain/usecases/change_language_use_case.dart';
import 'package:beneficiary/base/domain/usecases/observe_language_use_case.dart';
import 'package:beneficiary/base/presentation/ui-models/languages_enum.dart';

@injectable
class LocalizationCubit extends Cubit<LanguageEnum> {
  LocalizationCubit(
      Locale locale, this._changeLanguageUseCase, this._observeLanguageUseCase)
      : super(LanguageEnum.SystemDefault);
  final ObserveLanguageUseCase _observeLanguageUseCase;
  final ChangeLanguageUseCase _changeLanguageUseCase;

  Future<Locale> _selectEnglish() async {
    _changeLanguageUseCase.doWork(LanguageEnum.English);

    return const Locale('en', '');
  }

  Future<Locale> _selectArabic() async {
    _changeLanguageUseCase.doWork(LanguageEnum.Arabic);

    return const Locale('ar', '');
  }

  Future<void> changeLanguage(LanguageEnum languageEnum) async {
    if (languageEnum == LanguageEnum.Arabic) {
      await _selectArabic();
    } else if (languageEnum == LanguageEnum.English) {
      await _selectEnglish();
    }
  }

  void startObservingLanguage() {
    _observeLanguageUseCase.createObservable(NoParams()).listen((lang) {
      emit(lang);
    });
  }
}
