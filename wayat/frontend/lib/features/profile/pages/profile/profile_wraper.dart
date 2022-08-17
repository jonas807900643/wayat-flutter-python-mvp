import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:wayat/app_state/profile_state/profile_state.dart';
import 'package:wayat/navigation/app_router.gr.dart';

class ProfileWrapper extends StatelessWidget {
  final ProfileState controller = GetIt.I.get<ProfileState>();

  ProfileWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      bool isEditProfile = controller.isEditProfile;
      bool isPreferences = controller.isPreferences;
      bool isFaqs = controller.isFaqs;
      bool isTerms = controller.isTerms;

      return Builder(builder: (_) {
        return AutoRouter.declarative(
            routes: (_) => [
                  if (isEditProfile)
                    const EditProfileRoute()
                  else if (isPreferences)
                    const PreferencesRoute()
                  else if (isFaqs)
                    const FaqsRoute()
                  else if (isTerms)
                    const TermsRoute()
                  else
                    ProfileRoute()
                ]);
      });
    });
  }
}
