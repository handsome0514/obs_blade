import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:obs_blade/shared/general/base_card.dart';
import 'package:obs_blade/shared/general/social_block.dart';
import 'package:obs_blade/utils/icons/jam_icons.dart';

import '../../../shared/general/themed/themed_cupertino_scaffold.dart';
import '../../../shared/general/transculent_cupertino_navbar_wrapper.dart';
import '../../../utils/modal_handler.dart';
import 'widgets/about_header/about_header.dart';
import 'widgets/license_modal/license_modal.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemedCupertinoScaffold(
      body: Builder(
        builder: (context) => TransculentCupertinoNavBarWrapper(
          previousTitle: 'Settings',
          title: 'About',
          listViewChildren: [
            Padding(
              padding: EdgeInsets.only(top: 12.0),
              child: Column(
                children: [
                  AboutHeader(),
                  // LightDivider(
                  //   height: 32.0,
                  // ),
                  BaseCard(
                    paddingChild: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Greetings!\n\nHope you enjoy using OBS Blade! If you want to get in touch me with, you can '),
                        SocialBlock(
                          socialInfos: [
                            SocialEntry(
                              // svgPath: 'assets/svgs/twitter.svg',
                              icon: JamIcons.twitter,
                              link: 'https://twitter.com/Kounexx',
                              linkText: 'Twitter',
                            ),
                            SocialEntry(
                              // svgPath: 'assets/svgs/linkedin.svg',
                              icon: JamIcons.linkedin,
                              iconSize: 26.0,
                              link:
                                  'https://www.linkedin.com/in/ren%C3%A9-schramowski-a35342157/',
                              linkText: 'LinkedIn',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // LightDivider(
                  //   height: 32.0,
                  // ),
                  RaisedButton(
                    child: Text('Packages'),
                    onPressed: () => ModalHandler.showBaseCupertinoBottomSheet(
                      context: context,
                      modalWidgetBuilder: (context, scrollController) =>
                          LicenseModal(
                        scrollController: scrollController,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
