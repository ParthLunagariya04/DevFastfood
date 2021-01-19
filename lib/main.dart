import 'package:dev_fastfood/Screens/Address_screen.dart';
import 'package:dev_fastfood/Screens/add_items_screen.dart';
import 'package:dev_fastfood/Screens/add_new_address.dart';
import 'package:dev_fastfood/Screens/confirm_order.dart';
import 'package:dev_fastfood/Screens/favourite_screen1.dart';
import 'package:dev_fastfood/Screens/home_screen.dart';
import 'package:dev_fastfood/Screens/intro_screen.dart';
import 'package:dev_fastfood/Screens/main_screen.dart';
import 'package:dev_fastfood/Screens/order_screen.dart';
import 'package:dev_fastfood/Screens/payment_methods.dart';
import 'package:dev_fastfood/Screens/personal_screen.dart';
import 'package:dev_fastfood/Screens/profile_screen.dart';
import 'package:dev_fastfood/Screens/search_screen.dart';
import 'package:dev_fastfood/Screens/searching_screen.dart';
import 'package:dev_fastfood/Screens/sign_in_screen.dart';
import 'package:dev_fastfood/Screens/sign_up_screen.dart';
import 'package:dev_fastfood/Services/locator.dart';
import 'package:dev_fastfood/managers/dialog_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (context) => AuthNotifier(),
//         )
//       ],
//       child: MyApp(),
//     ),
//   );
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Consumer<AuthNotifier>(
      //   builder: (context, notifier, child) {
      //     return notifier.user != null ? MainScreen() : SignInScreen();
      //   },
      // ),
      builder: (context, widget) => Navigator(
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => DialogManager(
            child: widget,
          ),
        ),
      ),

      initialRoute: IntroScreen.id,
      routes: {
        IntroScreen.id: (context) => IntroScreen(),
        SignInScreen.id: (context) => SignInScreen(),
        SignUpScreen.id: (context) => SignUpScreen(),
        FavouriteScreen1.id: (context) => FavouriteScreen1(),
        ProfileScreen.id: (context) => ProfileScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        SearchingScreen.id: (context) => SearchingScreen(),
        SearchScreen.id: (context) => SearchScreen(),
        AddItemsScreen.id: (context) => AddItemsScreen(),
        ConfirmOrder.id: (context) => ConfirmOrder(),
        MainScreen.id: (context) => MainScreen(),
        OrderScreen.id: (context) => OrderScreen(),
        PersonalScreen.id: (context) => PersonalScreen(),
        PaymentMethods.id: (context) => PaymentMethods(),
        AddressScreen.id: (context) => AddressScreen(),
        AddNewAddress.id: (context) => AddNewAddress(),
      },
    );
  }
}
