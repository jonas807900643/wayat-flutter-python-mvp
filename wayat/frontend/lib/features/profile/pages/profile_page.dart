import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:wayat/app_state/location_state/location_state.dart';
import 'package:wayat/app_state/profile_state/profile_state.dart';
import 'package:wayat/app_state/user_session/session_state.dart';
import 'package:wayat/common/widgets/card.dart';
import 'package:wayat/common/widgets/contact_image.dart';
import 'package:wayat/common/widgets/switch.dart';
import 'package:wayat/domain/user/my_user.dart';
import 'package:wayat/features/profile/controllers/profile_current_pages.dart';
import 'package:wayat/lang/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final ProfileState profileState = GetIt.I.get<ProfileState>();
  final LocationState locationState = GetIt.I.get<LocationState>();
  final MyUser user = GetIt.I.get<SessionState>().currentUser!;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(appLocalizations.profile,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16)),
        ),
        const SizedBox(height: 16),
        ContactImage(
          imageUrl: user.imageUrl,
          radius: 50,
          lineWidth: 6,
        ),
        const SizedBox(height: 16),
        Observer(builder: (_) {
          String name = user.name;
          return Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontSize: 22),
          );
        }),
        const SizedBox(height: 32),
        _buildShareLocationPart(),
        const SizedBox(height: 48),

        //TODO: Implement the Information part
        // _buildInformationPart(),
        // const SizedBox(height: 48),

        //TODO: Implement the Account part
        // _buildAccountPart(),
        // const SizedBox(height: 42),
      ],
    );
  }

  //Build UI for "Share Location" part
  /// - "Active location" text + Switch button
  /// - "Set do not disturb" text + Switch button
  /// - "Edit profile" custom button
  /// - "Preferences" custom button
  Widget _buildShareLocationPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(appLocalizations.profileShareLocation,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  fontSize: 16)),
        ),
        const SizedBox(height: 16),
        _activeSharingLocationButton(),
        const SizedBox(height: 24),

        //TODO: Implement the "Set do not disturb" switch button functional
        // _setDoNotDisturbButton(),

        const SizedBox(height: 24),
        CustomCard(
            text: appLocalizations.editProfile,
            onTap: () {
              profileState.setCurrentPage(ProfileCurrentPages.editProfile);
            }),
        const SizedBox(height: 24),

        //TODO: Implement the Preferences page
        // CustomCard(
        //     text: appLocalizations.preferences,
        //     onTap: () {
        //       controller.setPreferences(true);
        //     }),
      ],
    );
  }

  //Build UI for "Information" part
  /// - "FAQS" custom button
  /// - "Privacy" custom button
  // Widget _buildInformationPart() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 16),
  //         child: Text(appLocalizations.information,
  //             textAlign: TextAlign.left,
  //             style: const TextStyle(
  //                 fontWeight: FontWeight.w500,
  //                 color: Colors.black87,
  //                 fontSize: 16)),
  //       ),
  //       const SizedBox(height: 24),
  //       CustomCard(
  //           text: appLocalizations.faqs,
  //           onTap: () {
  //             profileState.setCurrentPage(ProfileCurrentPages.faqs);
  //           }),
  //       const SizedBox(height: 24),
  //       CustomCard(
  //           text: appLocalizations.privacy,
  //           onTap: () {
  //             profileState.setCurrentPage(ProfileCurrentPages.privacy);
  //           }),
  //     ],
  //   );
  // }

  //Build UI for "Account" part
  /// - "Log Out" custom button
  /// - "Delete Account" custom button
  // Widget _buildAccountPart() {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 16),
  //         child: Text(appLocalizations.account,
  //             textAlign: TextAlign.left,
  //             style: const TextStyle(
  //                 fontWeight: FontWeight.w500,
  //                 color: Colors.black87,
  //                 fontSize: 16)),
  //       ),
  //       const SizedBox(height: 24),
  //       CustomCard(
  //           text: appLocalizations.logOut,
  //           onTap: () {
  //             // TODO: Implement the Log Out functional
  //           }),
  //       const SizedBox(height: 24),
  //       CustomCard(
  //           text: appLocalizations.deleteAccount,
  //           onTap: () {
  //             // TODO: Implement Delete account
  //           }),
  //     ],
  //   );
  // }

  // Build "Active sharing location" switch button
  Row _activeSharingLocationButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            appLocalizations.profileActiveLocation,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontSize: 16),
          ),
        ),
        Observer(builder: (_) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomSwitch(
              value: locationState.shareLocationEnabled,
              onChanged: (newValue) {
                locationState.setShareLocationEnabled(newValue);
              },
            ),
          );
        })
      ],
    );
  }

  // Build "Set do not disturb" switch button
  // Row _setDoNotDisturbButton() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Padding(
  //         padding: const EdgeInsets.symmetric(horizontal: 16),
  //         child: Text(
  //           appLocalizations.doNotDisturb,
  //           style: const TextStyle(
  //               fontWeight: FontWeight.w500,
  //               color: Colors.black87,
  //               fontSize: 16),
  //         ),
  //       ),
  //       Observer(builder: (_) {
  //         return Padding(
  //           padding: const EdgeInsets.symmetric(horizontal: 16),
  //           child: CustomSwitch(
  //             value: false, // change to controller.doNotDisturb,
  //             onChanged: (newValue) {
  //               //controller.setdoNotDisturb(newValue);
  //             },
  //           ),
  //         );
  //       })
  //     ],
  //   );
  // }
}
