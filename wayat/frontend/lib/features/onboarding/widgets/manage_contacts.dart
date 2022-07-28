import 'package:flutter/material.dart';
import 'package:wayat/common/widgets/buttons/text_icon_button.dart';
import 'package:wayat/navigation/bottom_navigation_bar/items_bottom_navigation_bar.dart';

class ManageContactsBody extends StatelessWidget {
  const ManageContactsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextIconButton(
            onPressed: () => {},
            icon: Icons.edit,
            text: appLocalizations.manageContacts),
        const SizedBox(
          height: 50,
        ),
        manageContactsTip(context)
      ],
    );
  }

  Widget manageContactsTip(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.65,
            child: const Image(image: AssetImage("assets/images/dialog.png")),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 30.0, right: 30.0, bottom: 30.0, top: 40.0),
            child: Text(
              appLocalizations.importContactsTip,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: (MediaQuery.of(context).orientation ==
                          Orientation.landscape)
                      ? 28
                      : 15),
            ),
          ),
        ],
      ),
    );
  }
}
