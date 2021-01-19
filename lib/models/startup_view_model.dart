import 'package:dev_fastfood/Services/auth_service.dart';
import 'package:dev_fastfood/Services/locator.dart';
import 'package:dev_fastfood/Services/navigation_service.dart';
import 'package:dev_fastfood/route_names.dart';

import 'base_model.dart';

class StartUpViewModel extends BaseModel {
  final AuthenticationService _authenticationService =
      locator<AuthenticationService>();
  final NavigationService _navigationService = locator<NavigationService>();

  Future handleStartUpLogic() async {
    var hasLoggedInUser = await _authenticationService.isUserSignIn();

    if (hasLoggedInUser) {
      _navigationService.navigatTo(MainScreenRout);
    } else {
      _navigationService.navigatTo(IntroScreenRout);
    }
  }
}