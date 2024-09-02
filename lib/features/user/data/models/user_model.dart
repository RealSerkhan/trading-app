// ignore_for_file: invalid_annotation_target

import 'package:beneficiary/features/user/data/models/user_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@Freezed(unionKey: 'userType', unionValueCase: FreezedUnionCase.none)
class UserModel with _$UserModel {
  const factory UserModel.user({
    @JsonKey(
        name: 'userType',
        defaultValue: UserType.Guest,
        toJson: UserType.toJson,
        fromJson: UserType.fromString)
    userType,
    int? id,
    String? name,
    String? userName,
    double? balance,
    @Default(false) bool isVerified,
    DateTime? dateOfBirth,
    DateTime? createdDate,
    DateTime? updatedDate,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
