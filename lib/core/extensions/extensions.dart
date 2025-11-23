import 'package:flutter/material.dart';
import 'package:hussam_protfolio/main.dart';

import '../constants/storage_keys.dart';
import '../enums/form_factor_type.dart';
import '../helpers/storage/preferences_storage_helper.dart';
import '../l10n/app_localizations.dart';
import '../theme/app_size.dart';
import '../theme/app_text_styles.dart';

extension StyledContext on BuildContext {
  ThemeData get theme => Theme.of(this);
  MediaQueryData get mediaQuery => MediaQuery.of(this);
  double get screenWidth => mediaQuery.size.width;
  double get screenHeight => mediaQuery.size.height;

  FormFactorType get formFactor {
    if (screenWidth < 600) {
      return FormFactorType.mobile;
    } else if (screenWidth < 900) {
      return FormFactorType.tablet;
    } else {
      return FormFactorType.desktop;
    }
  }

  bool get isMobile => formFactor == FormFactorType.mobile;
  bool get isTablet => formFactor == FormFactorType.tablet;
  bool get isDesktop => formFactor == FormFactorType.desktop;

  AppTextStyles get textStyles {
    switch (formFactor) {
      case FormFactorType.mobile:
      case FormFactorType.tablet:
        return SmallTextStyles();
      case FormFactorType.desktop:
        return LargeTextStyles();
    }
  }

  AppInsets get appInsets {
    switch (formFactor) {
      case FormFactorType.mobile:
      case FormFactorType.tablet:
        return SmallAppInsets();
      case FormFactorType.desktop:
        return LargeAppInsets();
    }
  }
}

extension LocalizationExtension on BuildContext {
  /// Changing the app locale
  void setLocale(Locale l) {
    MainApp.of(this)!.setLocale(l);
    PreferencesStorageHelper.instance.saveString(StorageKeys.appLocale, l.languageCode);
  }

  /// Current app locale
  Locale get locale => MainApp.of(this)!.locale;

  /// AppLocalization instance
  AppLocalizations get localizations => AppLocalizations.of(this) ?? lookupAppLocalizations(locale);
}
