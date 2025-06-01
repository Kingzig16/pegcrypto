import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => appStateNotifier.showSplashImage
          ? Builder(
              builder: (context) => Container(
                color: Colors.transparent,
                child: Center(
                  child: Image.asset(
                    'assets/images/peg.png',
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          : LoginWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.showSplashImage
              ? Builder(
                  builder: (context) => Container(
                    color: Colors.transparent,
                    child: Center(
                      child: Image.asset(
                        'assets/images/peg.png',
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )
              : LoginWidget(),
          routes: [
            FFRoute(
              name: HomePageWidget.routeName,
              path: HomePageWidget.routePath,
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: LoginWidget.routeName,
              path: LoginWidget.routePath,
              builder: (context, params) => LoginWidget(),
            ),
            FFRoute(
              name: HomeWidget.routeName,
              path: HomeWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'home')
                  : HomeWidget(),
            ),
            FFRoute(
              name: ProfilWidget.routeName,
              path: ProfilWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'profil')
                  : ProfilWidget(),
            ),
            FFRoute(
              name: ParametresWidget.routeName,
              path: ParametresWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'parametres')
                  : ParametresWidget(),
            ),
            FFRoute(
              name: EmailVerifWidget.routeName,
              path: EmailVerifWidget.routePath,
              builder: (context, params) => EmailVerifWidget(
                email: params.getParam(
                  'email',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ExchangeWidget.routeName,
              path: ExchangeWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'exchange')
                  : ExchangeWidget(),
            ),
            FFRoute(
              name: CompleteprofilWidget.routeName,
              path: CompleteprofilWidget.routePath,
              builder: (context, params) => CompleteprofilWidget(
                useremail: params.getParam(
                  'useremail',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: IdentitycardWidget.routeName,
              path: IdentitycardWidget.routePath,
              builder: (context, params) => IdentitycardWidget(),
            ),
            FFRoute(
              name: ProfileditWidget.routeName,
              path: ProfileditWidget.routePath,
              builder: (context, params) => ProfileditWidget(
                userinfo: params.getParam(
                  'userinfo',
                  ParamType.JSON,
                ),
              ),
            ),
            FFRoute(
              name: ProjetsWidget.routeName,
              path: ProjetsWidget.routePath,
              builder: (context, params) => params.isEmpty
                  ? NavBarPage(initialPage: 'projets')
                  : ProjetsWidget(),
            ),
            FFRoute(
              name: CryptodetailWidget.routeName,
              path: CryptodetailWidget.routePath,
              builder: (context, params) => CryptodetailWidget(
                cryptoinfo: params.getParam(
                  'cryptoinfo',
                  ParamType.JSON,
                ),
                nom: params.getParam(
                  'nom',
                  ParamType.String,
                ),
                quantite: params.getParam(
                  'quantite',
                  ParamType.int,
                ),
                prix: params.getParam(
                  'prix',
                  ParamType.int,
                ),
                contact: params.getParam(
                  'contact',
                  ParamType.String,
                ),
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: TestWidget.routeName,
              path: TestWidget.routePath,
              builder: (context, params) => TestWidget(),
            ),
            FFRoute(
              name: ProjetdetailWidget.routeName,
              path: ProjetdetailWidget.routePath,
              builder: (context, params) => ProjetdetailWidget(
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
                titre: params.getParam(
                  'titre',
                  ParamType.String,
                ),
                budget: params.getParam(
                  'budget',
                  ParamType.int,
                ),
                debut: params.getParam(
                  'debut',
                  ParamType.String,
                ),
                fin: params.getParam(
                  'fin',
                  ParamType.String,
                ),
                contacts: params.getParam(
                  'contacts',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: EchangedetailWidget.routeName,
              path: EchangedetailWidget.routePath,
              builder: (context, params) => EchangedetailWidget(
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
                source: params.getParam(
                  'source',
                  ParamType.String,
                ),
                sourcevalue: params.getParam(
                  'sourcevalue',
                  ParamType.int,
                ),
                destination: params.getParam(
                  'destination',
                  ParamType.String,
                ),
                destinationvalue: params.getParam(
                  'destinationvalue',
                  ParamType.int,
                ),
                contacts: params.getParam(
                  'contacts',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ChatsWidget.routeName,
              path: ChatsWidget.routePath,
              builder: (context, params) => ChatsWidget(),
            ),
            FFRoute(
              name: AgentWidget.routeName,
              path: AgentWidget.routePath,
              builder: (context, params) => AgentWidget(),
            ),
            FFRoute(
              name: AffiliationWidget.routeName,
              path: AffiliationWidget.routePath,
              builder: (context, params) => AffiliationWidget(
                affiliation: params.getParam(
                  'affiliation',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: AddpubWidget.routeName,
              path: AddpubWidget.routePath,
              builder: (context, params) => AddpubWidget(),
            ),
            FFRoute(
              name: AgentusersWidget.routeName,
              path: AgentusersWidget.routePath,
              builder: (context, params) => AgentusersWidget(),
            ),
            FFRoute(
              name: ValidercryptoWidget.routeName,
              path: ValidercryptoWidget.routePath,
              builder: (context, params) => ValidercryptoWidget(
                nom: params.getParam(
                  'nom',
                  ParamType.String,
                ),
                quantite: params.getParam(
                  'quantite',
                  ParamType.int,
                ),
                wallet: params.getParam(
                  'wallet',
                  ParamType.String,
                ),
                date: params.getParam(
                  'date',
                  ParamType.String,
                ),
                capture: params.getParam(
                  'capture',
                  ParamType.String,
                ),
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: ValiderprojetWidget.routeName,
              path: ValiderprojetWidget.routePath,
              builder: (context, params) => ValiderprojetWidget(
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
                titre: params.getParam(
                  'titre',
                  ParamType.String,
                ),
                montant: params.getParam(
                  'montant',
                  ParamType.int,
                ),
                date: params.getParam(
                  'date',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: ValiderechangeWidget.routeName,
              path: ValiderechangeWidget.routePath,
              builder: (context, params) => ValiderechangeWidget(
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
                montant: params.getParam(
                  'montant',
                  ParamType.int,
                ),
                numero: params.getParam(
                  'numero',
                  ParamType.String,
                ),
                wallet: params.getParam(
                  'wallet',
                  ParamType.String,
                ),
                source: params.getParam(
                  'source',
                  ParamType.String,
                ),
                destination: params.getParam(
                  'destination',
                  ParamType.String,
                ),
                date: params.getParam(
                  'date',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: PubliciteWidget.routeName,
              path: PubliciteWidget.routePath,
              builder: (context, params) => PubliciteWidget(),
            ),
            FFRoute(
              name: ModifierpubWidget.routeName,
              path: ModifierpubWidget.routePath,
              builder: (context, params) => ModifierpubWidget(
                titre: params.getParam(
                  'titre',
                  ParamType.String,
                ),
                id: params.getParam(
                  'id',
                  ParamType.int,
                ),
              ),
            ),
            FFRoute(
              name: RushWidget.routeName,
              path: RushWidget.routePath,
              builder: (context, params) => RushWidget(),
            ),
            FFRoute(
              name: TermesConditionsWidget.routeName,
              path: TermesConditionsWidget.routePath,
              builder: (context, params) => TermesConditionsWidget(),
            ),
            FFRoute(
              name: Motdepasse2Widget.routeName,
              path: Motdepasse2Widget.routePath,
              builder: (context, params) => Motdepasse2Widget(
                recuperationemail: params.getParam(
                  'recuperationemail',
                  ParamType.String,
                ),
              ),
            ),
            FFRoute(
              name: Motdepasse1Widget.routeName,
              path: Motdepasse1Widget.routePath,
              builder: (context, params) => Motdepasse1Widget(),
            ),
            FFRoute(
              name: CopyrightWidget.routeName,
              path: CopyrightWidget.routePath,
              builder: (context, params) => CopyrightWidget(),
            ),
            FFRoute(
              name: HelpcenterWidget.routeName,
              path: HelpcenterWidget.routePath,
              builder: (context, params) => HelpcenterWidget(),
            ),
            FFRoute(
              name: ContactsupportWidget.routeName,
              path: ContactsupportWidget.routePath,
              builder: (context, params) => ContactsupportWidget(),
            ),
            FFRoute(
              name: AProposWidget.routeName,
              path: AProposWidget.routePath,
              builder: (context, params) => AProposWidget(),
            ),
            FFRoute(
              name: TesttWidget.routeName,
              path: TesttWidget.routePath,
              builder: (context, params) => TesttWidget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ),
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
    StructBuilder<T>? structBuilder,
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
      structBuilder: structBuilder,
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
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
