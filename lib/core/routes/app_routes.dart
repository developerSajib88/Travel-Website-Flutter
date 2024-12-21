import 'package:feature_first/core/routes/routes_error_page.dart';
import 'package:feature_first/features/landing_page/presentation/landing_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class AppRoutes{

  static GoRouter routes = GoRouter(
      debugLogDiagnostics: true,
      initialLocation: LandingPage.path,
      errorBuilder: (BuildContext context, GoRouterState state) =>
          RouteErrorPage(state: state),
      redirect: (BuildContext context, GoRouterState state){
        return null;
      },
      routes: [

        //Splash Screen Route And Initial route
        // GoRoute(
        //   path: SplashScreen.path,
        //   pageBuilder: (context, state) {
        //     return CustomTransitionPage<void>(
        //         key: state.pageKey,
        //         child: const SplashScreen(),
        //         transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        //             CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)
        //     );
        //   },
        // ),


        //Home Screen Route
        GoRoute(
            path: LandingPage.path,
            name: LandingPage.name,
            pageBuilder: (context, state) {
              return CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: LandingPage(),
                  transitionsBuilder: (context, animation, secondaryAnimation, child) =>
                      CupertinoPageTransition(primaryRouteAnimation: animation, secondaryRouteAnimation: secondaryAnimation, linearTransition: true, child: child)
              );
            },
        ),


      ]
  );
}