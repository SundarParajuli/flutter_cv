import 'package:go_router/go_router.dart';
import 'package:sundar_cv/pages/about_me/about_me_page.dart';
import 'package:sundar_cv/pages/contact/contact_page.dart';
import 'package:sundar_cv/pages/work/work_page.dart';

import '../pages/home/home_page.dart';

// ignore: unused_element
final GoRouter _cvRouter = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, state) => const MyHomePage(),
    routes: <RouteBase>[
      GoRoute(
        path: 'about',
        builder: (context, state) => const AboutMePage(),
      ),
      GoRoute(
        path: 'work',
        builder: (context, state) => const WorkPage(),
      ),
      GoRoute(
        path: 'contact',
        builder: (context, state) => const ContactPage(),
      )
    ]
  ),
]);
