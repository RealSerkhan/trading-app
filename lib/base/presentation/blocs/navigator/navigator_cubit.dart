import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

part 'navigator_state.dart';

@injectable
class AppNavigatorCubit extends Cubit<AppNavigatorState> {
  AppNavigatorCubit() : super(AppNavigatorState.Home);
  void navigateTo(AppNavigatorState state) {
    emit(state);
  }
}
