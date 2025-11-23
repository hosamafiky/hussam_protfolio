import 'package:flutter/material.dart';

import '../extensions/extensions.dart';
import '../theme/app_size.dart';

class LanguageSwitcher extends StatelessWidget {
  const LanguageSwitcher({super.key});

  String _getFlagEmoji(String countryCode) {
    String flag = countryCode.toUpperCase().replaceAllMapped(RegExp(r'[A-Z]'), (match) => String.fromCharCode(match.group(0)!.codeUnitAt(0) + 127397));
    return flag;
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (value) => context.setLocale(value),
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            value: Locale('ar'),
            child: Row(
              children: [
                Text(_getFlagEmoji('SA')),
                SizedBox(width: Insets.small),
                Text(context.localizations.arabic),
              ],
            ),
          ),
          PopupMenuItem(
            value: Locale('en'),
            child: Row(
              children: [
                Text(_getFlagEmoji('US')),
                SizedBox(width: Insets.small),
                Text(context.localizations.english),
              ],
            ),
          ),
        ];
      },
      child: Row(
        children: [
          Icon(Icons.language),
          SizedBox(width: Insets.small),
          Text(context.locale == Locale('ar') ? context.localizations.arabic_short : context.localizations.english_short),
        ],
      ),
    );
  }
}
