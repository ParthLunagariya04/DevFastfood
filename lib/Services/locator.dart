import 'package:dev_fastfood/Screens/intro_screen.dart';
import 'package:dev_fastfood/Services/auth_service.dart';
import 'package:dev_fastfood/Services/dialog_service.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;
void setupLocator() {
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthenticationService());
  locator.registerLazySingleton(() => IntroScreen());
}
