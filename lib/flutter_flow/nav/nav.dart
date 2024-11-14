import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';


import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const SplashScreenWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'SplashScreen',
          path: '/splashScreen',
          builder: (context, params) => const SplashScreenWidget(),
        ),
        FFRoute(
          name: 'Onboarding',
          path: '/onboarding',
          builder: (context, params) => const OnboardingWidget(),
        ),
        FFRoute(
          name: 'Login',
          path: '/login',
          builder: (context, params) => const LoginWidget(),
        ),
        FFRoute(
          name: 'Register',
          path: '/register',
          builder: (context, params) => const RegisterWidget(),
        ),
        FFRoute(
          name: 'Register1',
          path: '/register1',
          builder: (context, params) => const Register1Widget(),
        ),
        FFRoute(
          name: 'Register2',
          path: '/register2',
          builder: (context, params) => const Register2Widget(),
        ),
        FFRoute(
          name: 'RegisterVerification',
          path: '/registerVerification',
          builder: (context, params) => const RegisterVerificationWidget(),
        ),
        FFRoute(
          name: 'RegisterSuccess',
          path: '/registerSuccess',
          builder: (context, params) => const RegisterSuccessWidget(),
        ),
        FFRoute(
          name: 'ForgotPassword',
          path: '/forgotPassword',
          builder: (context, params) => const ForgotPasswordWidget(),
        ),
        FFRoute(
          name: 'ForgotPasswordVerification',
          path: '/forgotPasswordVerification',
          builder: (context, params) => const ForgotPasswordVerificationWidget(),
        ),
        FFRoute(
          name: 'CreateNewPassword',
          path: '/createNewPassword',
          builder: (context, params) => const CreateNewPasswordWidget(),
        ),
        FFRoute(
          name: 'Home',
          path: '/home',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Home')
              : const NavBarPage(
                  initialPage: 'Home',
                  page: HomeWidget(),
                ),
        ),
        FFRoute(
          name: 'Profile',
          path: '/profile',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'Profile')
              : const NavBarPage(
                  initialPage: 'Profile',
                  page: ProfileWidget(),
                ),
        ),
        FFRoute(
          name: 'Workout_Tracking_Dashboard',
          path: '/workoutTrackingDashboard',
          builder: (context, params) => const WorkoutTrackingDashboardWidget(),
        ),
        FFRoute(
          name: 'MyBookings',
          path: '/myBookings',
          builder: (context, params) => const MyBookingsWidget(),
        ),
        FFRoute(
          name: 'BookingDetailsCompleted',
          path: '/bookingDetailsCompleted',
          builder: (context, params) => const BookingDetailsCompletedWidget(),
        ),
        FFRoute(
          name: 'BookingDetailsUpcoming',
          path: '/bookingDetailsUpcoming',
          builder: (context, params) => const BookingDetailsUpcomingWidget(),
        ),
        FFRoute(
          name: 'BookingDetailsCancelled',
          path: '/bookingDetailsCancelled',
          builder: (context, params) => const BookingDetailsCancelledWidget(),
        ),
        FFRoute(
          name: 'WorkoutHistory',
          path: '/workoutHistory',
          builder: (context, params) => const WorkoutHistoryWidget(),
        ),
        FFRoute(
          name: 'progress_tracking_dashboard',
          path: '/progressTrackingDashboard',
          builder: (context, params) => const ProgressTrackingDashboardWidget(),
        ),
        FFRoute(
          name: 'WorkoutDetails',
          path: '/workoutDetails',
          builder: (context, params) => const WorkoutDetailsWidget(),
        ),
        FFRoute(
          name: 'Settings',
          path: '/settings',
          builder: (context, params) => const SettingsWidget(),
        ),
        FFRoute(
          name: 'ContactUs',
          path: '/contactUs',
          builder: (context, params) => const ContactUsWidget(),
        ),
        FFRoute(
          name: 'PrivacyPolicy',
          path: '/privacyPolicy',
          builder: (context, params) => const PrivacyPolicyWidget(),
        ),
        FFRoute(
          name: 'BookASession',
          path: '/bookASession',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'BookASession')
              : const BookASessionWidget(),
        ),
        FFRoute(
          name: 'Workout_Tracking_Dashboard_with_custom_workout',
          path: '/workoutTrackingDashboardWithCustomWorkout',
          builder: (context, params) =>
              const WorkoutTrackingDashboardWithCustomWorkoutWidget(),
        ),
        FFRoute(
          name: 'Workout_Program',
          path: '/workoutProgram',
          builder: (context, params) => const WorkoutProgramWidget(),
        ),
        FFRoute(
          name: 'Add_Exercise',
          path: '/addExercise',
          builder: (context, params) => const AddExerciseWidget(),
        ),
        FFRoute(
          name: 'Start_New_Empty_Workout',
          path: '/startNewEmptyWorkout',
          builder: (context, params) => const StartNewEmptyWorkoutWidget(),
        ),
        FFRoute(
          name: 'progress_tracker',
          path: '/progressTracker',
          builder: (context, params) => const ProgressTrackerWidget(),
        ),
        FFRoute(
          name: 'Update_weight',
          path: '/updateWeight',
          builder: (context, params) => const UpdateWeightWidget(),
        ),
        FFRoute(
          name: 'ConfirmBooking',
          path: '/confirmBooking',
          builder: (context, params) => const ConfirmBookingWidget(),
        ),
        FFRoute(
          name: 'ReviewBookingDetails',
          path: '/reviewBookingDetails',
          builder: (context, params) => const ReviewBookingDetailsWidget(),
        ),
        FFRoute(
          name: 'NotificationEmpty',
          path: '/notificationEmpty',
          builder: (context, params) => const NotificationEmptyWidget(),
        ),
        FFRoute(
          name: 'Notification',
          path: '/notification',
          builder: (context, params) => const NotificationWidget(),
        ),
        FFRoute(
          name: 'NotificationDetails',
          path: '/notificationDetails',
          builder: (context, params) => const NotificationDetailsWidget(),
        ),
        FFRoute(
          name: 'View_Progress_photos',
          path: '/viewProgressPhotos',
          builder: (context, params) => const ViewProgressPhotosWidget(),
        ),
        FFRoute(
          name: 'Program_Details',
          path: '/programDetails',
          builder: (context, params) => const ProgramDetailsWidget(),
        ),
        FFRoute(
          name: 'Start_Workout',
          path: '/startWorkout',
          builder: (context, params) => const StartWorkoutWidget(),
        ),
        FFRoute(
          name: 'Compare_Progress_photos',
          path: '/compareProgressPhotos',
          builder: (context, params) => const CompareProgressPhotosWidget(),
        ),
        FFRoute(
          name: 'progress_photos_list',
          path: '/progressPhotosList',
          builder: (context, params) => const ProgressPhotosListWidget(),
        ),
        FFRoute(
          name: 'Edit_Goals',
          path: '/editGoals',
          builder: (context, params) => const EditGoalsWidget(),
        ),
        FFRoute(
          name: 'BookingSuccessSummary',
          path: '/bookingSuccessSummary',
          builder: (context, params) => const BookingSuccessSummaryWidget(),
        ),
        FFRoute(
          name: 'SessionIsScheduled',
          path: '/sessionIsScheduled',
          builder: (context, params) => const SessionIsScheduledWidget(),
        ),
        FFRoute(
          name: 'Rest_timer',
          path: '/restTimer',
          builder: (context, params) => const RestTimerWidget(),
        ),
        FFRoute(
          name: 'Create_Custom_Timer',
          path: '/createCustomTimer',
          builder: (context, params) => const CreateCustomTimerWidget(),
        ),
        FFRoute(
          name: 'Start_Workout_With_Timer',
          path: '/startWorkoutWithTimer',
          builder: (context, params) => const StartWorkoutWithTimerWidget(),
        ),
        FFRoute(
          name: 'Workout_Complete',
          path: '/workoutComplete',
          builder: (context, params) => const WorkoutCompleteWidget(),
        ),
        FFRoute(
          name: 'Start_Timer',
          path: '/startTimer',
          builder: (context, params) => const StartTimerWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/splashScreen';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitPulse(
                      color: FlutterFlowTheme.of(context).secondary,
                      size: 50.0,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
