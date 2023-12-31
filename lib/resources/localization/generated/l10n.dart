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

  /// `Forget Password?`
  String get forgetPassword {
    return Intl.message(
      'Forget Password?',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create`
  String get create {
    return Intl.message(
      'Create',
      name: 'create',
      desc: '',
      args: [],
    );
  }

  /// `Create new password`
  String get CreateNewPassword {
    return Intl.message(
      'Create new password',
      name: 'CreateNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create new password again`
  String get enterNewPasswordAgain {
    return Intl.message(
      'Create new password again',
      name: 'enterNewPasswordAgain',
      desc: '',
      args: [],
    );
  }

  /// `Your new password must be different \n from previously used passwords `
  String get CreateNewPasswordSubtitle {
    return Intl.message(
      'Your new password must be different \n from previously used passwords ',
      name: 'CreateNewPasswordSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter new password`
  String get enterNewPassword {
    return Intl.message(
      'Enter new password',
      name: 'enterNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Email`
  String get enterYourEmail {
    return Intl.message(
      'Enter Your Email',
      name: 'enterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Password`
  String get enterYourPassword {
    return Intl.message(
      'Enter Your Password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verfiy {
    return Intl.message(
      'Verify',
      name: 'verfiy',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
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

  /// `send`
  String get send {
    return Intl.message(
      'send',
      name: 'send',
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

  /// `------------------------------ Settings ----------------------------------`
  String get _comment1_ {
    return Intl.message(
      '------------------------------ Settings ----------------------------------',
      name: '_comment1_',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Accounts`
  String get accounts {
    return Intl.message(
      'Accounts',
      name: 'accounts',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message(
      'Security',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get logoutWarning {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'logoutWarning',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel {
    return Intl.message(
      'cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes, logout`
  String get yesLogout {
    return Intl.message(
      'Yes, logout',
      name: 'yesLogout',
      desc: '',
      args: [],
    );
  }

  /// `Personal Data & Privacy`
  String get personalDataPrivacy {
    return Intl.message(
      'Personal Data & Privacy',
      name: 'personalDataPrivacy',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get privacy {
    return Intl.message(
      'Privacy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `categories`
  String get categories {
    return Intl.message(
      'categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- profile ------------------------`
  String get _comment2_ {
    return Intl.message(
      '--------------------- profile ------------------------',
      name: '_comment2_',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter your first name`
  String get enterFirstName {
    return Intl.message(
      'Please, enter your first name',
      name: 'enterFirstName',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter your first name`
  String get enterLastName {
    return Intl.message(
      'Please, enter your first name',
      name: 'enterLastName',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter your first name`
  String get enterEmail {
    return Intl.message(
      'Please, enter your first name',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please, enter your first name`
  String get enterPhoneNumber {
    return Intl.message(
      'Please, enter your first name',
      name: 'enterPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- Notificaitons ------------------------`
  String get _comment3_ {
    return Intl.message(
      '--------------------- Notificaitons ------------------------',
      name: '_comment3_',
      desc: '',
      args: [],
    );
  }

  /// `Budgets`
  String get budgets {
    return Intl.message(
      'Budgets',
      name: 'budgets',
      desc: '',
      args: [],
    );
  }

  /// `Reaching Goals`
  String get reachingGoals {
    return Intl.message(
      'Reaching Goals',
      name: 'reachingGoals',
      desc: '',
      args: [],
    );
  }

  /// `Security Alerts`
  String get securityAlerts {
    return Intl.message(
      'Security Alerts',
      name: 'securityAlerts',
      desc: '',
      args: [],
    );
  }

  /// `App Updates`
  String get appUpdates {
    return Intl.message(
      'App Updates',
      name: 'appUpdates',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- About ------------------------`
  String get _comment4_ {
    return Intl.message(
      '--------------------- About ------------------------',
      name: '_comment4_',
      desc: '',
      args: [],
    );
  }

  /// `Your finance in one place.`
  String get aboutTitle {
    return Intl.message(
      'Your finance in one place.',
      name: 'aboutTitle',
      desc: '',
      args: [],
    );
  }

  /// `Flexibly budget and track your spending, so you stay in control and achieve your goals.`
  String get aboutSubtitle {
    return Intl.message(
      'Flexibly budget and track your spending, so you stay in control and achieve your goals.',
      name: 'aboutSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- categories ------------------------`
  String get _comment5_ {
    return Intl.message(
      '--------------------- categories ------------------------',
      name: '_comment5_',
      desc: '',
      args: [],
    );
  }

  /// `Food & Drinks`
  String get foodDrinks {
    return Intl.message(
      'Food & Drinks',
      name: 'foodDrinks',
      desc: '',
      args: [],
    );
  }

  /// `Health`
  String get health {
    return Intl.message(
      'Health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle`
  String get vehicle {
    return Intl.message(
      'Vehicle',
      name: 'vehicle',
      desc: '',
      args: [],
    );
  }

  /// `Housing & Rent`
  String get housingRent {
    return Intl.message(
      'Housing & Rent',
      name: 'housingRent',
      desc: '',
      args: [],
    );
  }

  /// `Sports`
  String get sports {
    return Intl.message(
      'Sports',
      name: 'sports',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get others {
    return Intl.message(
      'Others',
      name: 'others',
      desc: '',
      args: [],
    );
  }

  /// `Shopping`
  String get shopping {
    return Intl.message(
      'Shopping',
      name: 'shopping',
      desc: '',
      args: [],
    );
  }

  /// `Edit Category`
  String get editCategory {
    return Intl.message(
      'Edit Category',
      name: 'editCategory',
      desc: '',
      args: [],
    );
  }

  /// `Create Category`
  String get createCategory {
    return Intl.message(
      'Create Category',
      name: 'createCategory',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- Goals ------------------------`
  String get _comment6_ {
    return Intl.message(
      '--------------------- Goals ------------------------',
      name: '_comment6_',
      desc: '',
      args: [],
    );
  }

  /// `Goals`
  String get goals {
    return Intl.message(
      'Goals',
      name: 'goals',
      desc: '',
      args: [],
    );
  }

  /// `My Goals`
  String get myGoals {
    return Intl.message(
      'My Goals',
      name: 'myGoals',
      desc: '',
      args: [],
    );
  }

  /// `Create Goal`
  String get createGoal {
    return Intl.message(
      'Create Goal',
      name: 'createGoal',
      desc: '',
      args: [],
    );
  }

  /// `How much I already saved?`
  String get howMuchSaved {
    return Intl.message(
      'How much I already saved?',
      name: 'howMuchSaved',
      desc: '',
      args: [],
    );
  }

  /// `EGP`
  String get egp {
    return Intl.message(
      'EGP',
      name: 'egp',
      desc: '',
      args: [],
    );
  }

  /// `What are you saving for?`
  String get whatSavingFor {
    return Intl.message(
      'What are you saving for?',
      name: 'whatSavingFor',
      desc: '',
      args: [],
    );
  }

  /// `Some things people save for:`
  String get thingsSaveFor {
    return Intl.message(
      'Some things people save for:',
      name: 'thingsSaveFor',
      desc: '',
      args: [],
    );
  }

  /// `Your goal’s name`
  String get yourGoalName {
    return Intl.message(
      'Your goal’s name',
      name: 'yourGoalName',
      desc: '',
      args: [],
    );
  }

  /// `Donations`
  String get donations {
    return Intl.message(
      'Donations',
      name: 'donations',
      desc: '',
      args: [],
    );
  }

  /// `Travelling`
  String get travelling {
    return Intl.message(
      'Travelling',
      name: 'travelling',
      desc: '',
      args: [],
    );
  }

  /// `Health care`
  String get healthCare {
    return Intl.message(
      'Health care',
      name: 'healthCare',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get educaiton {
    return Intl.message(
      'Education',
      name: 'educaiton',
      desc: '',
      args: [],
    );
  }

  /// `New home`
  String get newHome {
    return Intl.message(
      'New home',
      name: 'newHome',
      desc: '',
      args: [],
    );
  }

  /// `New vehicle`
  String get newVehicle {
    return Intl.message(
      'New vehicle',
      name: 'newVehicle',
      desc: '',
      args: [],
    );
  }

  /// `Add Goal`
  String get addGoal {
    return Intl.message(
      'Add Goal',
      name: 'addGoal',
      desc: '',
      args: [],
    );
  }

  /// `Notes`
  String get notes {
    return Intl.message(
      'Notes',
      name: 'notes',
      desc: '',
      args: [],
    );
  }

  /// `Choose icon`
  String get chooseIcon {
    return Intl.message(
      'Choose icon',
      name: 'chooseIcon',
      desc: '',
      args: [],
    );
  }

  /// `Goal Color`
  String get goalColor {
    return Intl.message(
      'Goal Color',
      name: 'goalColor',
      desc: '',
      args: [],
    );
  }

  /// `Saved already`
  String get savedAlready {
    return Intl.message(
      'Saved already',
      name: 'savedAlready',
      desc: '',
      args: [],
    );
  }

  /// `Target amount`
  String get targetAmount {
    return Intl.message(
      'Target amount',
      name: 'targetAmount',
      desc: '',
      args: [],
    );
  }

  /// `Desired date`
  String get desiredDate {
    return Intl.message(
      'Desired date',
      name: 'desiredDate',
      desc: '',
      args: [],
    );
  }

  /// `Example: Aug 12, 2024`
  String get dateHint {
    return Intl.message(
      'Example: Aug 12, 2024',
      name: 'dateHint',
      desc: '',
      args: [],
    );
  }

  /// `Exampl3: 250`
  String get targetHint {
    return Intl.message(
      'Exampl3: 250',
      name: 'targetHint',
      desc: '',
      args: [],
    );
  }

  /// `Example: 50`
  String get saveHint {
    return Intl.message(
      'Example: 50',
      name: 'saveHint',
      desc: '',
      args: [],
    );
  }

  /// `Note...`
  String get noteHint {
    return Intl.message(
      'Note...',
      name: 'noteHint',
      desc: '',
      args: [],
    );
  }

  /// `Goal Progress`
  String get goalProgress {
    return Intl.message(
      'Goal Progress',
      name: 'goalProgress',
      desc: '',
      args: [],
    );
  }

  /// `Add Saved Amount`
  String get addSavedAmount {
    return Intl.message(
      'Add Saved Amount',
      name: 'addSavedAmount',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Minimum week amount reach goal`
  String get minimumWeekGoal {
    return Intl.message(
      'Minimum week amount reach goal',
      name: 'minimumWeekGoal',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- Colors ------------------------`
  String get _comment7_ {
    return Intl.message(
      '--------------------- Colors ------------------------',
      name: '_comment7_',
      desc: '',
      args: [],
    );
  }

  /// `Blue`
  String get blue {
    return Intl.message(
      'Blue',
      name: 'blue',
      desc: '',
      args: [],
    );
  }

  /// `Red`
  String get red {
    return Intl.message(
      'Red',
      name: 'red',
      desc: '',
      args: [],
    );
  }

  /// `yellow`
  String get yellow {
    return Intl.message(
      'yellow',
      name: 'yellow',
      desc: '',
      args: [],
    );
  }

  /// `Grenn`
  String get green {
    return Intl.message(
      'Grenn',
      name: 'green',
      desc: '',
      args: [],
    );
  }

  /// `Purple`
  String get purple {
    return Intl.message(
      'Purple',
      name: 'purple',
      desc: '',
      args: [],
    );
  }

  /// `Pink`
  String get pink {
    return Intl.message(
      'Pink',
      name: 'pink',
      desc: '',
      args: [],
    );
  }

  /// `Grey`
  String get grey {
    return Intl.message(
      'Grey',
      name: 'grey',
      desc: '',
      args: [],
    );
  }

  /// `Orange`
  String get orange {
    return Intl.message(
      'Orange',
      name: 'orange',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- first inter ------------------------`
  String get _comment8_ {
    return Intl.message(
      '--------------------- first inter ------------------------',
      name: '_comment8_',
      desc: '',
      args: [],
    );
  }

  /// ` Hi,\n Please enter your income`
  String get enterIncom {
    return Intl.message(
      ' Hi,\n Please enter your income',
      name: 'enterIncom',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get Continue {
    return Intl.message(
      'Continue',
      name: 'Continue',
      desc: '',
      args: [],
    );
  }

  /// `Add account`
  String get addAccount {
    return Intl.message(
      'Add account',
      name: 'addAccount',
      desc: '',
      args: [],
    );
  }

  /// `List of accounts`
  String get ListOfAccounts {
    return Intl.message(
      'List of accounts',
      name: 'ListOfAccounts',
      desc: '',
      args: [],
    );
  }

  /// `Add card`
  String get addCard {
    return Intl.message(
      'Add card',
      name: 'addCard',
      desc: '',
      args: [],
    );
  }

  /// `Card holder name`
  String get cardHolderName {
    return Intl.message(
      'Card holder name',
      name: 'cardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get cardNumber {
    return Intl.message(
      'Card number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `wallet number`
  String get walletNumber {
    return Intl.message(
      'wallet number',
      name: 'walletNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiration date`
  String get expirationDate {
    return Intl.message(
      'Expiration date',
      name: 'expirationDate',
      desc: '',
      args: [],
    );
  }

  /// `Add cardCCV - 3 digit`
  String get cardCCV {
    return Intl.message(
      'Add cardCCV - 3 digit',
      name: 'cardCCV',
      desc: '',
      args: [],
    );
  }

  /// `Create Card`
  String get createCard {
    return Intl.message(
      'Create Card',
      name: 'createCard',
      desc: '',
      args: [],
    );
  }

  /// `Add Cash`
  String get addCash {
    return Intl.message(
      'Add Cash',
      name: 'addCash',
      desc: '',
      args: [],
    );
  }

  /// `Add Wallet`
  String get addWallet {
    return Intl.message(
      'Add Wallet',
      name: 'addWallet',
      desc: '',
      args: [],
    );
  }

  /// `Create Cash`
  String get createCash {
    return Intl.message(
      'Create Cash',
      name: 'createCash',
      desc: '',
      args: [],
    );
  }

  /// `current balance`
  String get currentBalance {
    return Intl.message(
      'current balance',
      name: 'currentBalance',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- budget------------------------`
  String get _comment9_ {
    return Intl.message(
      '--------------------- budget------------------------',
      name: '_comment9_',
      desc: '',
      args: [],
    );
  }

  /// `Budget`
  String get budget {
    return Intl.message(
      'Budget',
      name: 'budget',
      desc: '',
      args: [],
    );
  }

  /// `Create Budget`
  String get createBudget {
    return Intl.message(
      'Create Budget',
      name: 'createBudget',
      desc: '',
      args: [],
    );
  }

  /// `Edit Budget`
  String get editBudget {
    return Intl.message(
      'Edit Budget',
      name: 'editBudget',
      desc: '',
      args: [],
    );
  }

  /// `Choose Category`
  String get chooseCategory {
    return Intl.message(
      'Choose Category',
      name: 'chooseCategory',
      desc: '',
      args: [],
    );
  }

  /// `Enter amount`
  String get enterAmount {
    return Intl.message(
      'Enter amount',
      name: 'enterAmount',
      desc: '',
      args: [],
    );
  }

  /// `All Categories`
  String get allCategories {
    return Intl.message(
      'All Categories',
      name: 'allCategories',
      desc: '',
      args: [],
    );
  }

  /// `Enter period`
  String get enterPeriod {
    return Intl.message(
      'Enter period',
      name: 'enterPeriod',
      desc: '',
      args: [],
    );
  }

  /// `Choose account`
  String get chooseAccount {
    return Intl.message(
      'Choose account',
      name: 'chooseAccount',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- accounts------------------------`
  String get _comment18_ {
    return Intl.message(
      '--------------------- accounts------------------------',
      name: '_comment18_',
      desc: '',
      args: [],
    );
  }

  /// `My E- wallet`
  String get myEwallet {
    return Intl.message(
      'My E- wallet',
      name: 'myEwallet',
      desc: '',
      args: [],
    );
  }

  /// `Add E- Wallet`
  String get addEwallet {
    return Intl.message(
      'Add E- Wallet',
      name: 'addEwallet',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `E-wallet number`
  String get ewalletNumber {
    return Intl.message(
      'E-wallet number',
      name: 'ewalletNumber',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get actions {
    return Intl.message(
      'Actions',
      name: 'actions',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccount {
    return Intl.message(
      'Delete account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete this?`
  String get sureDeleteAccount {
    return Intl.message(
      'Are you sure to delete this?',
      name: 'sureDeleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Once deleted, you cannot recover it`
  String get sureDeleteAccountSubTitle {
    return Intl.message(
      'Once deleted, you cannot recover it',
      name: 'sureDeleteAccountSubTitle',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `My Cards`
  String get myCards {
    return Intl.message(
      'My Cards',
      name: 'myCards',
      desc: '',
      args: [],
    );
  }

  /// `My Card`
  String get myCard {
    return Intl.message(
      'My Card',
      name: 'myCard',
      desc: '',
      args: [],
    );
  }

  /// `Payment Card`
  String get paymentCard {
    return Intl.message(
      'Payment Card',
      name: 'paymentCard',
      desc: '',
      args: [],
    );
  }

  /// `2298 1268 3398 9874 `
  String get numberCard {
    return Intl.message(
      '2298 1268 3398 9874 ',
      name: 'numberCard',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete this?`
  String get deleteAccountCash {
    return Intl.message(
      'Are you sure to delete this?',
      name: 'deleteAccountCash',
      desc: '',
      args: [],
    );
  }

  /// `Start Date`
  String get startDate {
    return Intl.message(
      'Start Date',
      name: 'startDate',
      desc: '',
      args: [],
    );
  }

  /// `Due Date`
  String get dueDate {
    return Intl.message(
      'Due Date',
      name: 'dueDate',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- Layouts ------------------------`
  String get _comment10_ {
    return Intl.message(
      '--------------------- Layouts ------------------------',
      name: '_comment10_',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Notificaitons`
  String get notificaitons {
    return Intl.message(
      'Notificaitons',
      name: 'notificaitons',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- Tips ------------------------`
  String get _comment11_ {
    return Intl.message(
      '--------------------- Tips ------------------------',
      name: '_comment11_',
      desc: '',
      args: [],
    );
  }

  /// `Financial Tips`
  String get financialTips {
    return Intl.message(
      'Financial Tips',
      name: 'financialTips',
      desc: '',
      args: [],
    );
  }

  /// `When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals. `
  String get tipsTitle {
    return Intl.message(
      'When you have your finances under control, your financial health improves and you can increase the likelihood of achieving your dreams and goals. ',
      name: 'tipsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Here are some tips you can start with today.`
  String get tipsSubtitle {
    return Intl.message(
      'Here are some tips you can start with today.',
      name: 'tipsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Tip's Article`
  String get tipArticle {
    return Intl.message(
      'Tip\'s Article',
      name: 'tipArticle',
      desc: '',
      args: [],
    );
  }

  /// `Read More`
  String get readMore {
    return Intl.message(
      'Read More',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- Statistics ------------------------`
  String get _comment12_ {
    return Intl.message(
      '--------------------- Statistics ------------------------',
      name: '_comment12_',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get statistics {
    return Intl.message(
      'Statistics',
      name: 'statistics',
      desc: '',
      args: [],
    );
  }

  /// `Show Chart in`
  String get showChartIn {
    return Intl.message(
      'Show Chart in',
      name: 'showChartIn',
      desc: '',
      args: [],
    );
  }

  /// `Spent Category`
  String get spentCategory {
    return Intl.message(
      'Spent Category',
      name: 'spentCategory',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `This Week`
  String get thisWeek {
    return Intl.message(
      'This Week',
      name: 'thisWeek',
      desc: '',
      args: [],
    );
  }

  /// `This Month`
  String get thisMonth {
    return Intl.message(
      'This Month',
      name: 'thisMonth',
      desc: '',
      args: [],
    );
  }

  /// `This Year`
  String get thisYear {
    return Intl.message(
      'This Year',
      name: 'thisYear',
      desc: '',
      args: [],
    );
  }

  /// `--------------------- Budgets ------------------------`
  String get _comment20_ {
    return Intl.message(
      '--------------------- Budgets ------------------------',
      name: '_comment20_',
      desc: '',
      args: [],
    );
  }

  /// `Incomes`
  String get incomes {
    return Intl.message(
      'Incomes',
      name: 'incomes',
      desc: '',
      args: [],
    );
  }

  /// `Expenses`
  String get expenses {
    return Intl.message(
      'Expenses',
      name: 'expenses',
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
