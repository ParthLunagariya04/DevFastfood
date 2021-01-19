// import 'package:dev_fastfood/Services/auth_service.dart';
// import 'package:dev_fastfood/Services/dialog_service.dart';
// import 'package:dev_fastfood/Services/locator.dart';
// import 'package:dev_fastfood/Services/navigation_service.dart';
// import 'package:dev_fastfood/models/base_model.dart';
// import 'package:dev_fastfood/route_names.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';

// class SignViewModel extends BaseModel {
//   final AuthenticationService _authenticationService =
//       locator<AuthenticationService>();
//   final DialogService _dialogService = locator<DialogService>();
//   final NavigationService _navigationService = locator<NavigationService>();

//   Future<void> signIn({
//     @required String email,
//     @required String password,
//   }) async {
//     setBusy(true);

//     var result = await _authenticationService.signIn(
//       email: email,
//       password: password,
//     );

//     setBusy(false);

//     if (result is bool) {
//       if (result) {
//         _navigationService.navigatTo(MainScreenRout);
//       } else {
//         await _dialogService.showDialog(
//           title: 'Login Failure',
//           description: 'General login failure. Please try again later',
//         );
//       }
//     } else {
//       await _dialogService.showDialog(
//         title: 'Login Failure',
//         description: result,
//       );
//     }
//   }
// }
