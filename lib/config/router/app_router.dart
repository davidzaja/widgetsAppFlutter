import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/animated/animated_screen.dart';
import 'package:widgets_app/presentation/screens/progress/progress_screen.dart';
import 'package:widgets_app/presentation/screens/screens.dart';
import 'package:widgets_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:widgets_app/presentation/screens/ui_controls/ui_control_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),

    GoRoute(
      path: '/buttons',
      builder: (context, state) => ButtonScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => CardsScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => ProgressScreen(),
    ),
    GoRoute(
      path: '/snackbars',
      builder: (context, state) => SnackbarScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => AnimatedScreen(),
    ),
    GoRoute(
      path: '/ui-controls',
      builder: (context, state) => UiControlsScreen(),
    ),
    
  ],
);