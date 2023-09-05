// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `--------------------- Auth ---------------------`
  String get _comment_ {
    return Intl.message(
      '--------------------- Auth ---------------------',
      name: '_comment_',
      desc: '',
      args: [],
    );
  }

  /// `----------- Welcome -----------`
  String get _comment1_ {
    return Intl.message(
      '----------- Welcome -----------',
      name: '_comment1_',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `----------- Sign in -----------`
  String get _comment2_ {
    return Intl.message(
      '----------- Sign in -----------',
      name: '_comment2_',
      desc: '',
      args: [],
    );
  }

  /// `Hi, Welcome Back`
  String get signInTitle {
    return Intl.message(
      'Hi, Welcome Back',
      name: 'signInTitle',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Or Sign in with`
  String get orSignInWith {
    return Intl.message(
      'Or Sign in with',
      name: 'orSignInWith',
      desc: '',
      args: [],
    );
  }

  /// `----------- Sign Up -----------`
  String get _comment3_ {
    return Intl.message(
      '----------- Sign Up -----------',
      name: '_comment3_',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get userName {
    return Intl.message(
      'User Name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get signUpTitle {
    return Intl.message(
      'Create New Account',
      name: 'signUpTitle',
      desc: '',
      args: [],
    );
  }

  /// `Have an account?`
  String get haveAccount {
    return Intl.message(
      'Have an account?',
      name: 'haveAccount',
      desc: '',
      args: [],
    );
  }

  /// `----------- Forgot Password -----------`
  String get _comment4_ {
    return Intl.message(
      '----------- Forgot Password -----------',
      name: '_comment4_',
      desc: '',
      args: [],
    );
  }

  /// `send`
  String get send {
    return Intl.message(
      'send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `----------- Email verification -----------`
  String get _comment5_ {
    return Intl.message(
      '----------- Email verification -----------',
      name: '_comment5_',
      desc: '',
      args: [],
    );
  }

  /// `Email Verification`
  String get emailVerification {
    return Intl.message(
      'Email Verification',
      name: 'emailVerification',
      desc: '',
      args: [],
    );
  }

  /// `You will receive a 4 digit code to verify next`
  String get emailVerificationSubtitle {
    return Intl.message(
      'You will receive a 4 digit code to verify next',
      name: 'emailVerificationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `----------- verify code -----------`
  String get _comment6_ {
    return Intl.message(
      '----------- verify code -----------',
      name: '_comment6_',
      desc: '',
      args: [],
    );
  }

  /// `verfiy Code`
  String get verfiyCode {
    return Intl.message(
      'verfiy Code',
      name: 'verfiyCode',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the code we emailed you`
  String get verfiyCodeSubtitle {
    return Intl.message(
      'Please enter the code we emailed you',
      name: 'verfiyCodeSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Don’t receive a code?`
  String get dontReceiveCode {
    return Intl.message(
      'Don’t receive a code?',
      name: 'dontReceiveCode',
      desc: '',
      args: [],
    );
  }

  /// `resendAgain`
  String get resendAgain {
    return Intl.message(
      'resendAgain',
      name: 'resendAgain',
      desc: '',
      args: [],
    );
  }

  /// `----------- Face Id -----------`
  String get _comment7_ {
    return Intl.message(
      '----------- Face Id -----------',
      name: '_comment7_',
      desc: '',
      args: [],
    );
  }

  /// `Face ID`
  String get faceId {
    return Intl.message(
      'Face ID',
      name: 'faceId',
      desc: '',
      args: [],
    );
  }

  /// `Use face ID to sign in quickly and securely`
  String get faceIdSubtitle {
    return Intl.message(
      'Use face ID to sign in quickly and securely',
      name: 'faceIdSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Maybe Later`
  String get maybeLater {
    return Intl.message(
      'Maybe Later',
      name: 'maybeLater',
      desc: '',
      args: [],
    );
  }

  /// `Use Face ID`
  String get useFaceId {
    return Intl.message(
      'Use Face ID',
      name: 'useFaceId',
      desc: '',
      args: [],
    );
  }

  /// `----------- congrats-----------`
  String get _comment8_ {
    return Intl.message(
      '----------- congrats-----------',
      name: '_comment8_',
      desc: '',
      args: [],
    );
  }

  /// `Congrats!`
  String get congrats {
    return Intl.message(
      'Congrats!',
      name: 'congrats',
      desc: '',
      args: [],
    );
  }

  /// `Your account is successfully created`
  String get congratsSubtitle {
    return Intl.message(
      'Your account is successfully created',
      name: 'congratsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueWord {
    return Intl.message(
      'Continue',
      name: 'continueWord',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
