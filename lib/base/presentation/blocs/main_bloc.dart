import 'package:flutter_bloc/flutter_bloc.dart';

class MainCubit<T> extends Cubit<T> {
  MainCubit(super.initialState);
  @override
  void emit(T state) {
    if (!isClosed) {
      super.emit(state);
    }
  }
}
