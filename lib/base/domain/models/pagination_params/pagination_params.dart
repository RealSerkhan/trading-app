import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_params.freezed.dart';
part 'pagination_params.g.dart';

@freezed
class PaginationParams with _$PaginationParams {
  factory PaginationParams({
    @Default(20) int pageSize,
    @Default(0) int page,
    int? startKey,
  }) = _PaginationParams;

  factory PaginationParams.fromJson(Map<String, dynamic> json) =>
      _$PaginationParamsFromJson(json);
}
