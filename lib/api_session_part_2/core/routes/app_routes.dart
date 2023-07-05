// import 'package:flutter/material.dart';
// import 'package:leap_tech_app_chef/features/auth/presentation/screens/complete_registeration/complete_registeration.dart';
// import '../../features/auth/presentation/screens/auth/login_screen.dart';
// import '../../features/auth/presentation/screens/auth/register_screen.dart';
// import '../../features/auth/presentation/screens/forget_password/change_forget_password_screen.dart';
// import '../../features/auth/presentation/screens/forget_password/forget_password_screen.dart';
// import '../../features/auth/presentation/screens/select_language/select_lang_screen.dart';

// import '../../features/home/presentation/screens/home_screen.dart';
// import '../../features/setting/settings.dart';
// import '../utils/app_strings.dart';

// class Routes {
//   static const String initialRoute = '/';
//   static const String changLangRoute = '/changLang';
//   static const String loginRoute = '/login';
//   static const String registerRoute = '/register';
//   static const String completeRegisterationRoute = '/completeRegisteration';
//   static const String forgetPasswordRoute = '/forgetPassword';
//   static const String changeForgetPasswordRoute = '/changeForgetPasswordRoute';
//   static const String home = '/home';
// }

// class AppRoutes {
//   static Route? onGenerateRoute(RouteSettings routeSettings) {
//     switch (routeSettings.name) {
//       case Routes.initialRoute:
//         return MaterialPageRoute(builder: (_) => const SettingScreen());
//       case Routes.changLangRoute:
//         return MaterialPageRoute(builder: (_) => const ChangeLangScreen());
//       case Routes.loginRoute:
//         return MaterialPageRoute(builder: (_) => const LoginScreen());
//       case Routes.registerRoute:
//         return MaterialPageRoute(builder: (_) => const RegisterScreen());
//       case Routes.completeRegisterationRoute:
//         return MaterialPageRoute(builder: (_) => const CompleteRegisteration());
//       case Routes.forgetPasswordRoute:
//         return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());
//       case Routes.changeForgetPasswordRoute:
//         return MaterialPageRoute(
//             builder: (_) => const ChangeForgetPasswordScreen());
//       case Routes.home:
//         return MaterialPageRoute(
//             builder: (_) => const HomeScreen());
//       default:
//         return unDefinedRoute();
//     }
//   }

//   static Route<dynamic> unDefinedRoute() {
//     return MaterialPageRoute(
//         builder: (_) => Scaffold(
//               appBar: AppBar(
//                 title: const Text(AppStrings.noRouteFound),
//               ),
//               body: const Center(child: Text(AppStrings.noRouteFound)),
//             ));
//   }
// }
