import 'package:go_router/go_router.dart';
import 'package:tennis_fields_app/domain/entities/entities.dart';
import 'package:tennis_fields_app/presentation/screens/screens.dart';

final appRouter = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    name: HomeScreen.name,
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: '/detail',
    name: DetailsScreen.name,
    builder: (context, state) {
      final BookingEntity booking = state.extra as BookingEntity;

      return DetailsScreen(
        booking: booking,
      );
    },
  ),
]);
