import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:wayat/app_state/user_session/session_state.dart';
import 'package:wayat/navigation/app_router.gr.dart';

class LoginWrapper extends StatelessWidget {
  final SessionState controller = GetIt.I.get<SessionState>();

  LoginWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      bool signedIn = controller.googleSignedIn;
      return AutoRouter.declarative(
          routes: (_) => [
                if (!signedIn)
                  const LoginRoute()
                else
                  const PhoneValidationRoute()
              ]);
    });
  }
}
