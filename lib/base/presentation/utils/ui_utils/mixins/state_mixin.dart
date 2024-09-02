import 'package:dart_kit/dart_kit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:beneficiary/base/domain/enums/enums.dart';
import 'package:beneficiary/base/domain/errors/failure.dart';
import 'package:beneficiary/base/presentation/utils/ext/build_context_ext.dart';
import 'package:beneficiary/base/presentation/utils/localizations_generated/l10n.dart';
import 'package:beneficiary/base/presentation/utils/resources/resources.dart';
import 'package:responsiveness/responsiveness.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:theme/theme.dart';

mixin StateMixin<T extends StatefulWidget> on State<T> {
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason>? handleError(
      {Failure? failure,
      String? customMessage,
      Map<ServerErrorCode, String>? customMessages,
      bool isFloating = false}) {
    return showSnackbar(
        failure: failure, customMessage: customMessage, isFloating: isFloating);
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackbar(
      {Failure? failure, String? customMessage, bool isFloating = false}) {
    final localizations = AppLocalizations.of(context);
    final theme = AppTheme.of(context);
    String message = customMessage ?? localizations.something_went_wrong;

    String? callId;
    if (customMessage.isNotNullOrNotEmpty) {
      message = customMessage!;
    } else if (failure is NoInternetFailure) {
      message = localizations.no_internet;
    } else if (failure is ServerFailure) {
      if (failure.errorMessage.isNotNullOrNotEmpty) {
        message = failure.errorMessage!;
      }
      callId = failure.callId;
      if (failure.statusCode == 500 ||
          failure.statusCode == 502 ||
          failure.statusCode == 504) {}
    } else if (failure is TimeoutFailure) {
      message = failure.errorMessage ?? "time out issue";
    } else if (failure is UnknownFailure) {
      callId = failure.callId;
      message = failure.errorMessage ?? "Unknown Issue";
    }
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Row(
            children: [
              Lottie.asset(Resources.lottie.error, height: 30.h, width: 30.h),
              SizedBox(width: 10.w),
              Expanded(
                child: Text(
                  message,
                  style: theme.typography.body1
                      .copyWith(color: theme.colors.textSubmarineGrey),
                ),
              ),
            ],
          ),
          backgroundColor: theme.colors.lightGrey,
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)))),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSuccess(
      {String? customMessage, bool isFloating = false}) {
    String message = customMessage ?? AppLocalizations.of(context).success;

    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Row(
        children: [
          // ignore: deprecated_member_use
          SvgPicture.asset(
            Resources.vectors.success,
            height: 20.h,
            // ignore: deprecated_member_use
            color: context.colors.white,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              message,
              style: context.textTheme.body1
                  .copyWith(color: context.colors.secondaryBluishWhite),
            ),
          ),
        ],
      ),
      backgroundColor: context.colors.primaryColor,
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.only(bottom: 20, left: 24, right: 24),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16))),
    ));
  }
}
