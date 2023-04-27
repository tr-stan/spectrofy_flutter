import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:spectrofy/src/features/authentication/data/fake_auth_repository.dart';
import 'package:spectrofy/src/routing/not_found_screen.dart';

enum AppRoute {
  home,
  trackVisualizer,
  search,
  searchResults,
  account,
  signIn,
}

final goRouterProvider = Provider<GoRouter>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: false,
    redirect: (context, state) {
      final isLoggedIn = authRepository.currentUser != null;
      if (isLoggedIn) {
        if (state.location == '/signIn') {
          return '/';
        }
      } else {
        if (state.location == '/account' || state.location == '/orders') {
          return '/';
        }
      }
      return null;
    },
    // refreshListenable: GoRouterRefreshStream(authRepository.authStateChanges()),
    routes: [],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
});
