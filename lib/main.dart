import 'package:flutter/material.dart';
import 'package:hussam_protfolio/core/theme/app_theme.dart';
import 'package:hussam_protfolio/home_page.dart';

import 'core/constants/storage_keys.dart';
import 'core/helpers/storage/preferences_storage_helper.dart';
import 'core/l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final savedLanguageCode = await PreferencesStorageHelper.instance.getString(StorageKeys.appLocale);
  runApp(MainApp(initialLanguageCode: savedLanguageCode));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key, this.initialLanguageCode});

  final String? initialLanguageCode;

  @override
  State<MainApp> createState() => MainAppState();

  static MainAppState? of(BuildContext context) => context.findAncestorStateOfType<MainAppState>();
}

class MainAppState extends State<MainApp> {
  late Locale locale = Locale(widget.initialLanguageCode ?? 'en');

  void setLocale(Locale locale) {
    if (this.locale == locale) return;
    setState(() {
      this.locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hussam Protfolio',
      locale: locale,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage(),
    );
  }
}
