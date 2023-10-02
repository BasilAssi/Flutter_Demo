import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login1
  {
    'brp26aqi': {
      'en': 'brand.ai',
      'ar': '',
    },
    '46cq0xja': {
      'en': 'Welcome Back',
      'ar': 'مرحبا',
    },
    '5q0o0fud': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
    },
    '04i3xjus': {
      'en': 'Email',
      'ar': 'ايميل',
    },
    'vs0hlqs1': {
      'en': 'Password',
      'ar': '',
    },
    '3z21j01i': {
      'en': 'Sign In',
      'ar': '',
    },
    'tg8gwtr2': {
      'en': 'Biometric',
      'ar': '',
    },
    'dexh3v6c': {
      'en': 'do it',
      'ar': '',
    },
    'hhpxmhdr': {
      'en': 'Don\'t have an account? ',
      'ar': '',
    },
    'kaxa7wzz': {
      'en': ' Sign Up here',
      'ar': '',
    },
    'qh3dq5cv': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Profile
  {
    'hqpfncv9': {
      'en': 'Passenger Documents',
      'ar': '',
    },
    'si0hx680': {
      'en': 'Tracker Notifications',
      'ar': '',
    },
    'zy65rdmk': {
      'en': 'Help Center',
      'ar': '',
    },
    'r1jz1y0r': {
      'en': 'Settings',
      'ar': '',
    },
    '09yiz67v': {
      'en': 'Phone Number',
      'ar': '',
    },
    '8ngt6bh1': {
      'en': 'Add Number',
      'ar': '',
    },
    'fycgmo34': {
      'en': 'Language',
      'ar': '',
    },
    'e9ubw7vp': {
      'en': 'English (eng)',
      'ar': '',
    },
    '6u3x158n': {
      'en': 'Currency',
      'ar': '',
    },
    '521xoa4h': {
      'en': 'US Dollar (\$)',
      'ar': '',
    },
    'z5pxrt57': {
      'en': 'Profile Settings',
      'ar': '',
    },
    '0w8m6id9': {
      'en': 'Edit Profile',
      'ar': '',
    },
    'g4kpeeui': {
      'en': 'Notification Settings',
      'ar': '',
    },
    '4u29yzz5': {
      'en': 'Log out of account',
      'ar': '',
    },
    '2vpapzss': {
      'en': 'Log Out?',
      'ar': '',
    },
    '38uxla6a': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Products
  {
    'u8x15t1f': {
      'en': 'Search for products...',
      'ar': '',
    },
    '6r6iu8sc': {
      'en': 'products matching search',
      'ar': '',
    },
    'g6zwy67k': {
      'en': '24',
      'ar': '',
    },
    'tmrbcbbf': {
      'en': 'Search patients',
      'ar': '',
    },
    '2tlpi3lh': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ProductsListing
  {
    'kfju0jg8': {
      'en': 'Search for patients...',
      'ar': '',
    },
    'byfr0oxe': {
      'en': 'smartphones',
      'ar': '',
    },
    'kw82s3ga': {
      'en': 'laptops',
      'ar': '',
    },
    'f9kboeqa': {
      'en': 'fragrances',
      'ar': '',
    },
    '8ljkjnb2': {
      'en': 'skincare',
      'ar': '',
    },
    'prqwa57i': {
      'en': 'groceries',
      'ar': '',
    },
    'cy7be90p': {
      'en': 'Search patients',
      'ar': '',
    },
    '1o6rxy4t': {
      'en': 'Home',
      'ar': '',
    },
  },
  // CreatePartner_1
  {
    'h7lte5td': {
      'en': 'Become a Partner',
      'ar': '',
    },
    'bmf77c3g': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
    },
    'v1xprqyc': {
      'en': 'First Name',
      'ar': '',
    },
    '6cv1qeus': {
      'en': 'Last Name',
      'ar': '',
    },
    'yyv949km': {
      'en': 'Mobile Number',
      'ar': '',
    },
    'fh83jzdt': {
      'en': 'Email',
      'ar': '',
    },
    'gsxjilla': {
      'en': 'ID Number',
      'ar': '',
    },
    'fo05z8hz': {
      'en': 'Continue',
      'ar': '',
    },
    '0925hked': {
      'en': 'Home',
      'ar': '',
    },
  },
  // CreatePartner_2
  {
    '8l1uzprw': {
      'en': 'Become a Partner',
      'ar': '',
    },
    '3iq2adyr': {
      'en': 'Let\'s get started by filling out the form below.',
      'ar': '',
    },
    'wfu0wl35': {
      'en': 'Please select your address . . .',
      'ar': '',
    },
    'ru9mavyr': {
      'en': 'Continue',
      'ar': '',
    },
    'mjh93bjw': {
      'en': 'Home',
      'ar': '',
    },
  },
  // GoogleMap
  {
    '2wwwbyrx': {
      'en': 'Page Title',
      'ar': '',
    },
    '7sqze7ar': {
      'en': 'Home',
      'ar': '',
    },
  },
  // TestProduct
  {
    'qtqpwtwn': {
      'en': 'Search for products...',
      'ar': '',
    },
    'khqqp5z7': {
      'en': 'products matching search',
      'ar': '',
    },
    'htwwxrfa': {
      'en': '24',
      'ar': '',
    },
    'x23h1iyg': {
      'en': 'Search Products',
      'ar': '',
    },
    '9ker4a0q': {
      'en': 'Home',
      'ar': '',
    },
  },
  // CreatePartner_3
  {
    'ejdq6spd': {
      'en': 'Upload Driving License',
      'ar': '',
    },
    'nsiaybqy': {
      'en': 'Upload Driving License',
      'ar': '',
    },
    'jpmi365r': {
      'en': 'ID Card',
      'ar': '',
    },
    'zlqndmx8': {
      'en': 'Upload ID Card',
      'ar': '',
    },
    '9x91fj6q': {
      'en': 'Create Account',
      'ar': '',
    },
    'l06tv7vb': {
      'en': 'Home',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'dy60c52e': {
      'en': '',
      'ar': '',
    },
    'gnoq9njx': {
      'en': '',
      'ar': '',
    },
    'vqnvlu3r': {
      'en': '',
      'ar': '',
    },
    '7f63qvg3': {
      'en': '',
      'ar': '',
    },
    'g1eooq2w': {
      'en': '',
      'ar': '',
    },
    'jpmyttot': {
      'en': '',
      'ar': '',
    },
    'a0trw1eq': {
      'en': '',
      'ar': '',
    },
    'pduk8pso': {
      'en': '',
      'ar': '',
    },
    '5jy0tipq': {
      'en': '',
      'ar': '',
    },
    'e6l8p4gq': {
      'en': '',
      'ar': '',
    },
    '4oocoqzr': {
      'en': '',
      'ar': '',
    },
    '67lcukrb': {
      'en': '',
      'ar': '',
    },
    '51ov4cyt': {
      'en': '',
      'ar': '',
    },
    'a1u85dl7': {
      'en': '',
      'ar': '',
    },
    '5td11rcv': {
      'en': '',
      'ar': '',
    },
    'azwfkny1': {
      'en': '',
      'ar': '',
    },
    '34bvcdqi': {
      'en': '',
      'ar': '',
    },
    'l80xgioj': {
      'en': '',
      'ar': '',
    },
    'soww1ewz': {
      'en': '',
      'ar': '',
    },
    'i0q0l3ek': {
      'en': '',
      'ar': '',
    },
    'dp8gt6u2': {
      'en': '',
      'ar': '',
    },
    'jyq15nzx': {
      'en': '',
      'ar': '',
    },
    '9q3kybxu': {
      'en': '',
      'ar': '',
    },
    '1oz5n7y4': {
      'en': '',
      'ar': '',
    },
    'linwn9qy': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
