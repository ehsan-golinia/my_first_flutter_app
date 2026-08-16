// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get profileTitle => 'My CV';

  @override
  String get jobTitle => 'Flutter Developer';

  @override
  String get location => 'Istanbul, Türkiye';

  @override
  String get summaryTitle => 'About Me';

  @override
  String get summary =>
      'I am a passionate Flutter developer with experience in building beautiful and functional mobile applications. I enjoy learning new technologies and improving my skills.';

  @override
  String get skillsTitle => 'Skills';

  @override
  String get infoTitle => 'Personal Information';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get saveButton => 'Save';
}
