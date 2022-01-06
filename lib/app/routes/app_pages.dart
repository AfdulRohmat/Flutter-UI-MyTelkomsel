import 'package:flutuer_ui_my_telkomsel/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/dashboard/views/dashboard_view.dart';
import 'package:get/get.dart';

import 'package:flutuer_ui_my_telkomsel/app/modules/akun/bindings/akun_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/akun/views/akun_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/bantuan/bindings/bantuan_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/bantuan/views/bantuan_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/bindings/beranda_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/beranda/views/beranda_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/inbox/bindings/inbox_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/inbox/views/inbox_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/login/bindings/login_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/login/views/login_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/riwayat/bindings/riwayat_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/riwayat/views/riwayat_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/splash/bindings/splash_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/splash/views/splash_view.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/verification/bindings/verification_binding.dart';
import 'package:flutuer_ui_my_telkomsel/app/modules/verification/views/verification_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.BERANDA,
      page: () => BerandaView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.VERIFICATION,
      page: () => VerificationView(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: _Paths.RIWAYAT,
      page: () => RiwayatView(),
      binding: RiwayatBinding(),
    ),
    GetPage(
      name: _Paths.BANTUAN,
      page: () => BantuanView(),
      binding: BantuanBinding(),
    ),
    GetPage(
      name: _Paths.INBOX,
      page: () => InboxView(),
      binding: InboxBinding(),
    ),
    GetPage(
      name: _Paths.AKUN,
      page: () => AkunView(),
      binding: AkunBinding(),
    ),
    GetPage(
      name: _Paths.DASHBOARD,
      page: () => DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}
