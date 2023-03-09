import 'package:get/get.dart';
import 'package:quote_master/app/bindings/01_login_binding/login_binding.dart';
import 'package:quote_master/app/bindings/02_signup_binding/signup_binding.dart';
import 'package:quote_master/app/bindings/03_random_quote_binding/random_quote_binding.dart';
import 'package:quote_master/app/routes/routes_name.dart';
import 'package:quote_master/app/ui/pages/01_login_page/login_screen.dart';
import 'package:quote_master/app/ui/pages/02_signup_page/signup_screen.dart';
import 'package:quote_master/app/ui/pages/03_home_page/home_screen.dart';

class Routes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.loginScreen,
          page: () => const LoginScreen(),
          title: 'Login Screen',
          transition: Transition.rightToLeft,
          binding: LoginBinding(),
        ),
        GetPage(
          name: RoutesName.signUpScreen,
          page: () => const SignUpScreen(),
          title: 'Sign Up Screen',
          transition: Transition.rightToLeft,
          binding: SignupBinding(),
        ),
        GetPage(
          name: RoutesName.homepageScreen,
          page: () => const HomepageScreen(),
          title: 'Homepage Screen',
          transition: Transition.rightToLeft,
          binding: RandomQuoteBinding(),
        ),
      ];
}
