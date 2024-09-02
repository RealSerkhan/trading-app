

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// /// A mixin that provides various context-dependent variables to the widget tree.
// mixin UserMixin<T extends StatefulWidget> on State<T> {
//   UserModel? user;

//   /// Whether to skip initializing the context-dependent variables.
//   // ps: this is workaround just to prevent call init in app page because app page context don't have material context.

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();

//     _init(context);
//   }

//   /// Initializes the variables.
//   void _init(BuildContext context) {
//     final profileState = context.read<ProfileBloc>().state;
//     if ((profileState is ProfileLoaded)) {
//       user = (context.watch<ProfileBloc>().state as ProfileLoaded).user;
//     }
//   }

//   onClick({required Function action, bool needsAuth = true}) {
//     if (user?.userType == UserType.Guest && needsAuth) {
//       // context.router.push(const AuthRoute());
//     } else {
//       action.call();
//     }
//   }
// }
