import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:wayat/app_state/home_state/home_state.dart';
import 'package:wayat/app_state/location_state/location_state.dart';
import 'package:wayat/app_state/profile_state/profile_state.dart';
import 'package:wayat/app_state/map_state/map_state.dart';
import 'package:wayat/app_state/user_session/session_state.dart';
import 'package:wayat/features/contacts/controller/contacts_page_controller.dart';
import 'package:wayat/app_state/user_status/user_status_state.dart';
import 'package:wayat/features/groups/controllers/groups_controller/groups_controller.dart';
import 'package:wayat/features/onboarding/controller/onboarding_controller.dart';
import 'package:wayat/lang/lang_singleton.dart';
import 'package:wayat/navigation/app_router.gr.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:wayat/options.dart';
import 'package:wayat/services/common/http_provider/http_provider.dart';
import 'package:timeago/timeago.dart' as timeago;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Env file should be loaded before Firebase initialization
  await dotenv.load(fileName: ".env");
  await Firebase.initializeApp(
      name: "WAYAT", options: CustomFirebaseOptions.currentPlatformOptions);
  await registerSingletons();
  setTimeAgoLocales();

  runApp(const MyApp());
}

void setTimeAgoLocales() {
  timeago.setLocaleMessages('en', timeago.EnMessages());
  timeago.setLocaleMessages('es', timeago.EsMessages());
  timeago.setLocaleMessages('fr', timeago.FrMessages());
  timeago.setLocaleMessages('de', timeago.DeMessages());
  timeago.setLocaleMessages('nl', timeago.NlMessages());
}

Future registerSingletons() async {
  //Register with GetIt all the singletons for the repos like this
  //GetIt.I.registerLazySingleton<AbstractClass>(() => ImplementationClass())
  GetIt.I.registerLazySingleton<LangSingleton>(() => LangSingleton());
  GetIt.I.registerLazySingleton<OnboardingController>(
      () => OnboardingController());
  GetIt.I.registerLazySingleton<SessionState>(() => SessionState());
  GetIt.I.registerLazySingleton<ContactsPageController>(
      () => ContactsPageController());
  GetIt.I.registerLazySingleton<GroupsController>(() => GroupsController());
  GetIt.I.registerLazySingleton<UserStatusState>(() => UserStatusState());
  GetIt.I.registerLazySingleton<LocationState>(() => LocationState());
  GetIt.I.registerLazySingleton<ProfileState>(() => ProfileState());
  GetIt.I.registerLazySingleton<MapState>(() => MapState());
  GetIt.I.registerLazySingleton<HomeState>(() => HomeState());
  GetIt.I.registerLazySingleton<HttpProvider>(() => HttpProvider());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> with WidgetsBindingObserver {
  final _appRouter = AppRouter();
  final MapState mapState = GetIt.I.get<MapState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Future<void> didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    // It will be executed if the app is opened from background, but not when it is
    // opened for first time
    if (state == AppLifecycleState.resumed) {
      if (!mapState.mapOpened &&
          GetIt.I.get<SessionState>().currentUser != null) {
        await mapState.openMap();
      }
    }
    // Other states must execute a close map event, but detach is not included,
    // when the app is closed it can not send a request
    else if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused) {
      if (mapState.mapOpened) {
        await mapState.closeMap();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addObserver(this);

    // Locale myLocale = Localizations.localeOf(context);

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // locale: const Locale('es'),
      onGenerateTitle: (context) {
        // In the app build, the context does not contain an AppLocalizations instance.
        // However, after the title is generated the AppLocalizations instance is the
        // first time it is not null
        GetIt.I.get<LangSingleton>().initialize(context);
        return GetIt.I.get<LangSingleton>().appLocalizations.appTitle;
      },
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
