import 'package:flutter/material.dart';
import 'package:hussam_protfolio/core/extensions/extensions.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [AppLogo(), Spacer(), AppMenus(), Spacer(), LanguageSwitcher(), ThemeSwitcher()]);
  }
}

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('Hussam', style: context.textStyles.titleLgBold);
  }
}

class AppMenus extends StatelessWidget {
  const AppMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(spacing: 20, children: [Text('Home'), Text('About'), Text('Contact')]);
  }
}

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (context) {
        return [const PopupMenuItem(value: 'ar', child: Text('Arabic')), const PopupMenuItem(value: 'en', child: Text('English'))];
      },
    );
  }
}

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(value: false, onChanged: (value) {});
  }
}
