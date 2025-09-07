import 'package:auto_route/auto_route.dart';

import '../presentation.dart';

part 'router.gr.dart';

const metaTransitionTypeFade = {'transitionType': 'fade'};

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
    AutoRoute(
      page: CounterRoute.page,
      initial: true,
      meta: metaTransitionTypeFade,
    ),
  ];
}
