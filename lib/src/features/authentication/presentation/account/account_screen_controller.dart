import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:spectrofy/src/features/authentication/data/fake_auth_repository.dart';

class AccountScreenController extends StateNotifier<AsyncValue<void>> {
  AccountScreenController({required this.authRepository})
      : super(const AsyncData(null));
  final FakeAuthRepository authRepository;

  Future<void> signOut() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => authRepository.signOut());
  }
}

final accountScreenControllerProvider = StateNotifierProvider.autoDispose<
    AccountScreenController, AsyncValue<void>>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return AccountScreenController(
    authRepository: authRepository,
  );
});
