import 'package:get/get.dart';

import '../modules/community/bindings/community_binding.dart';
import '../modules/community/views/community_view.dart';
import '../modules/draw/bindings/draw_binding.dart';
import '../modules/draw/views/draw_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/layout/bindings/layout_binding.dart';
import '../modules/layout/views/layout_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/watch/bindings/watch_binding.dart';
import '../modules/watch/views/watch_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LAYOUT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
    name: '/draw',
  page: () => DrawView(), // ✅ Không truyền arguments ở đây
  binding: DrawBinding(),
  ),

    GetPage(
      name: _Paths.LAYOUT,
      page: () => const LayoutView(),
      binding: LayoutBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY,
      page: () => CommunityView(),
      binding: CommunityBinding(),
    ),
    GetPage(
      name: '/profile/:id',
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: '/watch/:id',
      page: () => WatchView(),
      binding: WatchBinding(),
    ),
  ];
}
