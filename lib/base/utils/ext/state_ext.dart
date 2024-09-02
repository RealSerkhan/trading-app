import 'package:beneficiary/base/presentation/ui-models/data_status_enum.dart';
import 'package:beneficiary/base/presentation/widgets/button.dart';

extension DataStatusExtension on DataStatus? {
  /// Returns a string representation of this integer as a decimal, or an empty string if this integer is null.
  ButtonState get getButtonState {
    switch (this) {
      case DataStatus.initial:
        return ButtonState.inactive;
      case DataStatus.loading:
        return ButtonState.loading;
      case DataStatus.succes:
        return ButtonState.success;
      case DataStatus.error:
        return ButtonState.error;
      default:
        return ButtonState.active;
    }
  }
}
