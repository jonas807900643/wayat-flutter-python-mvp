import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:wayat/common/theme/colors.dart';
import 'package:wayat/common/widgets/switch.dart';
import 'package:wayat/lang/app_localizations.dart';
import 'package:wayat/common/widgets/appbar/appbar.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(40), child: CustomAppBar()),
        body: ListView(
          children: [
            _buildEnableDarkThemeSwitchButton(),
            _buildLanguageButton(),
          ],
        ));
  }

  Row _buildEnableDarkThemeSwitchButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appLocalizations.darkTheme,
          style: const TextStyle(
              fontWeight: FontWeight.w400, color: Colors.black87, fontSize: 16),
        ),
        Observer(builder: (context) {
          return CustomSwitch(
            value: true, // change to controller.sharingLocation,
            onChanged: (newValue) {
              //controller.setSharingLocation(newValue);
            },
          );
        })
      ],
    );
  }

  Row _buildLanguageButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          appLocalizations.darkTheme,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: ColorTheme.primaryColorTransparent,
              fontSize: 16),
        ),
        Text(
          appLocalizations.language,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              color: ColorTheme.primaryColorDimmed,
              fontSize: 16),
        ),
        Positioned(
            right: 20,
            child: InkWell(
                onTap: () {},
                child: const Icon(Icons.arrow_forward,
                    color: ColorTheme.primaryColorTransparent, size: 16)))
      ],
    );
  }
}
