import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:instagram_clone/src/actions/initialize_app.dart';
import 'package:instagram_clone/src/data/auth_api.dart';
import 'package:instagram_clone/src/data/post_api.dart';
import 'package:instagram_clone/src/epics/app_epics.dart';
import 'package:instagram_clone/src/models/app_state.dart';
import 'package:instagram_clone/src/presentation/forgot_password.dart';
import 'package:instagram_clone/src/presentation/home.dart';
import 'package:instagram_clone/src/presentation/home_page.dart';
import 'package:instagram_clone/src/presentation/login_page.dart';
import 'package:instagram_clone/src/presentation/post_details.dart';
import 'package:instagram_clone/src/presentation/sign_up/signup_page.dart';
import 'package:instagram_clone/src/reducer/reducer.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final AuthApi authApi = AuthApi(auth: FirebaseAuth.instance, firestore: Firestore.instance);
  final PostApi postApi = PostApi(firestore: Firestore.instance, storage: FirebaseStorage.instance);
  final AppEpics epics = AppEpics(authApi: authApi, postApi: postApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epics.epics),
    ],
  );
  store.dispatch(InitializeApp());

  runApp(InstagramClone(store: store));
}

class InstagramClone extends StatelessWidget {
  const InstagramClone({Key key, @required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Instagram Clone',
        theme: ThemeData.dark().copyWith(visualDensity: VisualDensity.adaptivePlatformDensity),
        home: const Home(),
        onGenerateTitle: (BuildContext context) {
          initializeDateFormatting(Localizations.localeOf(context).toString());
          return 'Instagram Clone';
        },
        localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routes: <String, WidgetBuilder>{
          '/login': (_) => const LoginPage(),
          '/signUp': (_) => const SignUpPage(),
          '/home': (_) => const HomePage(),
          '/forgotPassword': (_) => const ForgotPassword(),
          '/postDetails': (_) => const PostDetails(),
        },
      ),
    );
  }
}
