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

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(_current != null,
        'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// `Log in`
  String get login {
    return Intl.message(
      'Log in',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save changes`
  String get save_changes {
    return Intl.message(
      'Save changes',
      name: 'save_changes',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your credientials to access your account`
  String get please_enter_credentials {
    return Intl.message(
      'Please enter your credientials to access your account',
      name: 'please_enter_credentials',
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

  /// `Alerts`
  String get alerts {
    return Intl.message(
      'Alerts',
      name: 'alerts',
      desc: '',
      args: [],
    );
  }

  /// `Analytics`
  String get analytic {
    return Intl.message(
      'Analytics',
      name: 'analytic',
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

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_password {
    return Intl.message(
      'Change Password',
      name: 'change_password',
      desc: '',
      args: [],
    );
  }

  /// `Support options`
  String get support_options {
    return Intl.message(
      'Support options',
      name: 'support_options',
      desc: '',
      args: [],
    );
  }

  /// `Talk to us now`
  String get talk_to_us_now {
    return Intl.message(
      'Talk to us now',
      name: 'talk_to_us_now',
      desc: '',
      args: [],
    );
  }

  /// `Send us an email`
  String get send_us_an_email {
    return Intl.message(
      'Send us an email',
      name: 'send_us_an_email',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest {
    return Intl.message(
      'Latest',
      name: 'latest',
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

  /// `Found: {count}`
  String found(Object count) {
    return Intl.message(
      'Found: $count',
      name: 'found',
      desc: '',
      args: [count],
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

  /// `Re-Password`
  String get re_password {
    return Intl.message(
      'Re-Password',
      name: 're_password',
      desc: '',
      args: [],
    );
  }

  /// `Enter a password`
  String get enter_password {
    return Intl.message(
      'Enter a password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Re-Enter a password`
  String get re_enter_password {
    return Intl.message(
      'Re-Enter a password',
      name: 're_enter_password',
      desc: '',
      args: [],
    );
  }

  /// `Password is needed`
  String get password_needed {
    return Intl.message(
      'Password is needed',
      name: 'password_needed',
      desc: '',
      args: [],
    );
  }

  /// `Passwords don't match`
  String get password_dont_match {
    return Intl.message(
      'Passwords don\'t match',
      name: 'password_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `The alert has been Deleted`
  String get alert_deleted {
    return Intl.message(
      'The alert has been Deleted',
      name: 'alert_deleted',
      desc: '',
      args: [],
    );
  }

  /// `comments`
  String get comments {
    return Intl.message(
      'comments',
      name: 'comments',
      desc: '',
      args: [],
    );
  }

  /// `posts`
  String get posts {
    return Intl.message(
      'posts',
      name: 'posts',
      desc: '',
      args: [],
    );
  }

  /// `reacts`
  String get reacts {
    return Intl.message(
      'reacts',
      name: 'reacts',
      desc: '',
      args: [],
    );
  }

  /// `View all activity`
  String get view_all_activty {
    return Intl.message(
      'View all activity',
      name: 'view_all_activty',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_your_phone {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `or sign up`
  String get or_sign_up {
    return Intl.message(
      'or sign up',
      name: 'or_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password`
  String get forgot_password {
    return Intl.message(
      'Forgot password',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Or you can use social network login`
  String get social_network_login {
    return Intl.message(
      'Or you can use social network login',
      name: 'social_network_login',
      desc: '',
      args: [],
    );
  }

  /// `You make the decision`
  String get onboard_title_1 {
    return Intl.message(
      'You make the decision',
      name: 'onboard_title_1',
      desc: '',
      args: [],
    );
  }

  /// `Follow the latest news`
  String get onboard_title_2 {
    return Intl.message(
      'Follow the latest news',
      name: 'onboard_title_2',
      desc: '',
      args: [],
    );
  }

  /// `Be aware of the laws`
  String get onboard_title_3 {
    return Intl.message(
      'Be aware of the laws',
      name: 'onboard_title_3',
      desc: '',
      args: [],
    );
  }

  /// `Where the application gives opportunities to vote on polls and choose who can represent you in the Iraqi political scene`
  String get onboard_subtitle_1 {
    return Intl.message(
      'Where the application gives opportunities to vote on polls and choose who can represent you in the Iraqi political scene',
      name: 'onboard_subtitle_1',
      desc: '',
      args: [],
    );
  }

  /// `The application allows you to follow day by day what is happening in the political arena in Iraq.`
  String get onboard_subtitle_2 {
    return Intl.message(
      'The application allows you to follow day by day what is happening in the political arena in Iraq.',
      name: 'onboard_subtitle_2',
      desc: '',
      args: [],
    );
  }

  /// `The application also allows surveying the laws that have been ratified in Iraq.`
  String get onboard_subtitle_3 {
    return Intl.message(
      'The application also allows surveying the laws that have been ratified in Iraq.',
      name: 'onboard_subtitle_3',
      desc: '',
      args: [],
    );
  }

  /// `Log in as MP`
  String get login_as_mp {
    return Intl.message(
      'Log in as MP',
      name: 'login_as_mp',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up {
    return Intl.message(
      'Sign Up',
      name: 'sign_up',
      desc: '',
      args: [],
    );
  }

  /// `or Login`
  String get or_login {
    return Intl.message(
      'or Login',
      name: 'or_login',
      desc: '',
      args: [],
    );
  }

  /// `Verify account`
  String get enter_verification_code {
    return Intl.message(
      'Verify account',
      name: 'enter_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t get a verification code`
  String get didnt_get_verification_code {
    return Intl.message(
      'Didn’t get a verification code',
      name: 'didnt_get_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain more than 8 chars`
  String get password_too_short {
    return Intl.message(
      'Password must contain more than 8 chars',
      name: 'password_too_short',
      desc: '',
      args: [],
    );
  }

  /// `Enter MFA code provided for you`
  String get enter_mfa_code {
    return Intl.message(
      'Enter MFA code provided for you',
      name: 'enter_mfa_code',
      desc: '',
      args: [],
    );
  }

  /// `Log in as voter`
  String get login_as_voter {
    return Intl.message(
      'Log in as voter',
      name: 'login_as_voter',
      desc: '',
      args: [],
    );
  }

  /// `Scan QR code`
  String get qr_code {
    return Intl.message(
      'Scan QR code',
      name: 'qr_code',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get no_internet {
    return Intl.message(
      'No internet connection',
      name: 'no_internet',
      desc: '',
      args: [],
    );
  }

  /// `Service is unavaliable:(`
  String get server_not_avaliable {
    return Intl.message(
      'Service is unavaliable:(',
      name: 'server_not_avaliable',
      desc: '',
      args: [],
    );
  }

  /// `You need to sign in first`
  String get un_authorized {
    return Intl.message(
      'You need to sign in first',
      name: 'un_authorized',
      desc: '',
      args: [],
    );
  }

  /// `Your access to the app is denied`
  String get app_access_denied {
    return Intl.message(
      'Your access to the app is denied',
      name: 'app_access_denied',
      desc: '',
      args: [],
    );
  }

  /// `Sucess`
  String get success {
    return Intl.message(
      'Sucess',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `You made too many requests in a short time period, please wait and try again later`
  String get too_many_requests {
    return Intl.message(
      'You made too many requests in a short time period, please wait and try again later',
      name: 'too_many_requests',
      desc: '',
      args: [],
    );
  }

  /// `Please accept terms to continue`
  String get accept_terms {
    return Intl.message(
      'Please accept terms to continue',
      name: 'accept_terms',
      desc: '',
      args: [],
    );
  }

  /// `Map`
  String get map {
    return Intl.message(
      'Map',
      name: 'map',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Dark mode`
  String get dark_mode {
    return Intl.message(
      'Dark mode',
      name: 'dark_mode',
      desc: '',
      args: [],
    );
  }

  /// `Light mode`
  String get light_mode {
    return Intl.message(
      'Light mode',
      name: 'light_mode',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Activities`
  String get activities {
    return Intl.message(
      'Activities',
      name: 'activities',
      desc: '',
      args: [],
    );
  }

  /// `Biometrics`
  String get biometrics {
    return Intl.message(
      'Biometrics',
      name: 'biometrics',
      desc: '',
      args: [],
    );
  }

  /// `Delete profile`
  String get delete_profile {
    return Intl.message(
      'Delete profile',
      name: 'delete_profile',
      desc: '',
      args: [],
    );
  }

  /// `{count} Voters`
  String voter_count(Object count) {
    return Intl.message(
      '$count Voters',
      name: 'voter_count',
      desc: '',
      args: [count],
    );
  }

  /// `Make a complaint`
  String get make_a_complaint {
    return Intl.message(
      'Make a complaint',
      name: 'make_a_complaint',
      desc: '',
      args: [],
    );
  }

  /// `Make a request`
  String get make_a_request {
    return Intl.message(
      'Make a request',
      name: 'make_a_request',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `MPs`
  String get mps {
    return Intl.message(
      'MPs',
      name: 'mps',
      desc: '',
      args: [],
    );
  }

  /// `Laws`
  String get laws {
    return Intl.message(
      'Laws',
      name: 'laws',
      desc: '',
      args: [],
    );
  }

  /// `Complaints`
  String get complaints {
    return Intl.message(
      'Complaints',
      name: 'complaints',
      desc: '',
      args: [],
    );
  }

  /// `Surveys`
  String get surveys {
    return Intl.message(
      'Surveys',
      name: 'surveys',
      desc: '',
      args: [],
    );
  }

  /// `Place Of Birth`
  String get place_of_birth {
    return Intl.message(
      'Place Of Birth',
      name: 'place_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Date Of Birth`
  String get date_of_birth {
    return Intl.message(
      'Date Of Birth',
      name: 'date_of_birth',
      desc: '',
      args: [],
    );
  }

  /// `Former deputy`
  String get former_deputy {
    return Intl.message(
      'Former deputy',
      name: 'former_deputy',
      desc: '',
      args: [],
    );
  }

  /// `About candidate`
  String get about_candidate {
    return Intl.message(
      'About candidate',
      name: 'about_candidate',
      desc: '',
      args: [],
    );
  }

  /// `Political programme`
  String get political_programme {
    return Intl.message(
      'Political programme',
      name: 'political_programme',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Latest news`
  String get latest_news {
    return Intl.message(
      'Latest news',
      name: 'latest_news',
      desc: '',
      args: [],
    );
  }

  /// `All MPs`
  String get all_mps {
    return Intl.message(
      'All MPs',
      name: 'all_mps',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Highest`
  String get highest {
    return Intl.message(
      'Highest',
      name: 'highest',
      desc: '',
      args: [],
    );
  }

  /// `Women`
  String get women {
    return Intl.message(
      'Women',
      name: 'women',
      desc: '',
      args: [],
    );
  }

  /// `Men`
  String get men {
    return Intl.message(
      'Men',
      name: 'men',
      desc: '',
      args: [],
    );
  }

  /// `Share your opinion`
  String get share_your_opinion {
    return Intl.message(
      'Share your opinion',
      name: 'share_your_opinion',
      desc: '',
      args: [],
    );
  }

  /// `Vote`
  String get vote {
    return Intl.message(
      'Vote',
      name: 'vote',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Update your vote`
  String get update_your_vote {
    return Intl.message(
      'Update your vote',
      name: 'update_your_vote',
      desc: '',
      args: [],
    );
  }

  /// `Click to get information on MPS from other regions`
  String get click_to_get_info_on_mp_from_other_reg {
    return Intl.message(
      'Click to get information on MPS from other regions',
      name: 'click_to_get_info_on_mp_from_other_reg',
      desc: '',
      args: [],
    );
  }

  /// `Click to get information on PCMs from other regions`
  String get click_to_get_info_on_pcm_from_other_reg {
    return Intl.message(
      'Click to get information on PCMs from other regions',
      name: 'click_to_get_info_on_pcm_from_other_reg',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please retry`
  String get general_error {
    return Intl.message(
      'Something went wrong, please retry',
      name: 'general_error',
      desc: '',
      args: [],
    );
  }

  /// `file is too large. The maximum allowed size is {allowedSize}, but the image you selected is {imageSize}.`
  String general_error_max_upload_size(Object allowedSize, Object imageSize) {
    return Intl.message(
      'file is too large. The maximum allowed size is $allowedSize, but the image you selected is $imageSize.',
      name: 'general_error_max_upload_size',
      desc: '',
      args: [allowedSize, imageSize],
    );
  }

  /// `Required field`
  String get general_required_field {
    return Intl.message(
      'Required field',
      name: 'general_required_field',
      desc: '',
      args: [],
    );
  }

  /// `Value should be at least {length} characters long`
  String general_min_length_field(num length) {
    return Intl.message(
      'Value should be at least $length characters long',
      name: 'general_min_length_field',
      desc: '',
      args: [length],
    );
  }

  /// `Value must not exceed {max_length} characters in length`
  String general_max_length_field(num max_length) {
    return Intl.message(
      'Value must not exceed $max_length characters in length',
      name: 'general_max_length_field',
      desc: '',
      args: [max_length],
    );
  }

  /// `Value should be {length} characters long`
  String general_chars_length_field_error(num length) {
    return Intl.message(
      'Value should be $length characters long',
      name: 'general_chars_length_field_error',
      desc: '',
      args: [length],
    );
  }

  /// `Value should be between {min} and {max} characters long`
  String general_chars_range_length_field_error(num min, num max) {
    return Intl.message(
      'Value should be between $min and $max characters long',
      name: 'general_chars_range_length_field_error',
      desc: '',
      args: [min, max],
    );
  }

  /// `you are uploading too large file`
  String get general_upload_max_size_error {
    return Intl.message(
      'you are uploading too large file',
      name: 'general_upload_max_size_error',
      desc: '',
      args: [],
    );
  }

  /// `Only Arabic and English characters are allowed`
  String get general_only_chars_error {
    return Intl.message(
      'Only Arabic and English characters are allowed',
      name: 'general_only_chars_error',
      desc: '',
      args: [],
    );
  }

  /// `Only Arabic allowed`
  String get general_only_arabic_error {
    return Intl.message(
      'Only Arabic allowed',
      name: 'general_only_arabic_error',
      desc: '',
      args: [],
    );
  }

  /// `No results`
  String get no_results {
    return Intl.message(
      'No results',
      name: 'no_results',
      desc: '',
      args: [],
    );
  }

  /// `Podcast`
  String get podcast {
    return Intl.message(
      'Podcast',
      name: 'podcast',
      desc: '',
      args: [],
    );
  }

  /// `Other parties`
  String get other_parties {
    return Intl.message(
      'Other parties',
      name: 'other_parties',
      desc: '',
      args: [],
    );
  }

  /// `No Name`
  String get no_name {
    return Intl.message(
      'No Name',
      name: 'no_name',
      desc: '',
      args: [],
    );
  }

  /// `Parties`
  String get parties {
    return Intl.message(
      'Parties',
      name: 'parties',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Request #{id}`
  String request_no(Object id) {
    return Intl.message(
      'Request #$id',
      name: 'request_no',
      desc: '',
      args: [id],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Your request`
  String get your_request {
    return Intl.message(
      'Your request',
      name: 'your_request',
      desc: '',
      args: [],
    );
  }

  /// `Localisation`
  String get localisation {
    return Intl.message(
      'Localisation',
      name: 'localisation',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select {
    return Intl.message(
      'Select',
      name: 'select',
      desc: '',
      args: [],
    );
  }

  /// `Please pick your district manually!`
  String get choose_district_manually {
    return Intl.message(
      'Please pick your district manually!',
      name: 'choose_district_manually',
      desc: '',
      args: [],
    );
  }

  /// `Province`
  String get province {
    return Intl.message(
      'Province',
      name: 'province',
      desc: '',
      args: [],
    );
  }

  /// `Neighbourhood`
  String get neighbourhood {
    return Intl.message(
      'Neighbourhood',
      name: 'neighbourhood',
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

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Select video`
  String get select_video {
    return Intl.message(
      'Select video',
      name: 'select_video',
      desc: '',
      args: [],
    );
  }

  /// `Choose your picture from gallery`
  String get choose_your_picture {
    return Intl.message(
      'Choose your picture from gallery',
      name: 'choose_your_picture',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get error {
    return Intl.message(
      'Error',
      name: 'error',
      desc: '',
      args: [],
    );
  }

  /// `Video length is too long`
  String get video_too_long {
    return Intl.message(
      'Video length is too long',
      name: 'video_too_long',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error happened`
  String get unknown_error {
    return Intl.message(
      'Unknown error happened',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `You make the decision`
  String get you_make_decision {
    return Intl.message(
      'You make the decision',
      name: 'you_make_decision',
      desc: '',
      args: [],
    );
  }

  /// `By sharing your opinion`
  String get by_sharing_your_opinion {
    return Intl.message(
      'By sharing your opinion',
      name: 'by_sharing_your_opinion',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get requests {
    return Intl.message(
      'Requests',
      name: 'requests',
      desc: '',
      args: [],
    );
  }

  /// `View details`
  String get view_details {
    return Intl.message(
      'View details',
      name: 'view_details',
      desc: '',
      args: [],
    );
  }

  /// `Complaints #{no}`
  String complaint_no(Object no) {
    return Intl.message(
      'Complaints #$no',
      name: 'complaint_no',
      desc: '',
      args: [no],
    );
  }

  /// `Select complaints category`
  String get select_complaints_category {
    return Intl.message(
      'Select complaints category',
      name: 'select_complaints_category',
      desc: '',
      args: [],
    );
  }

  /// `Enter complaints text`
  String get enter_complaint_text {
    return Intl.message(
      'Enter complaints text',
      name: 'enter_complaint_text',
      desc: '',
      args: [],
    );
  }

  /// `Create complaint`
  String get create_complaint {
    return Intl.message(
      'Create complaint',
      name: 'create_complaint',
      desc: '',
      args: [],
    );
  }

  /// `Submit complaint`
  String get submit_complaint {
    return Intl.message(
      'Submit complaint',
      name: 'submit_complaint',
      desc: '',
      args: [],
    );
  }

  /// `Select document`
  String get select_document {
    return Intl.message(
      'Select document',
      name: 'select_document',
      desc: '',
      args: [],
    );
  }

  /// `Take picture`
  String get take_picture {
    return Intl.message(
      'Take picture',
      name: 'take_picture',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Choose your district`
  String get choose_your_district {
    return Intl.message(
      'Choose your district',
      name: 'choose_your_district',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
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

  /// `Federal Supreme Court decision`
  String get federal_supreme_court_decision {
    return Intl.message(
      'Federal Supreme Court decision',
      name: 'federal_supreme_court_decision',
      desc: '',
      args: [],
    );
  }

  /// `Governing Council decision`
  String get governing_council_decision {
    return Intl.message(
      'Governing Council decision',
      name: 'governing_council_decision',
      desc: '',
      args: [],
    );
  }

  /// `Cabinet decision`
  String get cabinet_decision {
    return Intl.message(
      'Cabinet decision',
      name: 'cabinet_decision',
      desc: '',
      args: [],
    );
  }

  /// `advertisement`
  String get advertisement {
    return Intl.message(
      'advertisement',
      name: 'advertisement',
      desc: '',
      args: [],
    );
  }

  /// `internal system`
  String get internal_system {
    return Intl.message(
      'internal system',
      name: 'internal_system',
      desc: '',
      args: [],
    );
  }

  /// `Command`
  String get command {
    return Intl.message(
      'Command',
      name: 'command',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get system {
    return Intl.message(
      'System',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `resolution`
  String get resolution {
    return Intl.message(
      'resolution',
      name: 'resolution',
      desc: '',
      args: [],
    );
  }

  /// `decree`
  String get decree {
    return Intl.message(
      'decree',
      name: 'decree',
      desc: '',
      args: [],
    );
  }

  /// `coalition authority order`
  String get coalition_authority_order {
    return Intl.message(
      'coalition authority order',
      name: 'coalition_authority_order',
      desc: '',
      args: [],
    );
  }

  /// `royal will`
  String get royal_will {
    return Intl.message(
      'royal will',
      name: 'royal_will',
      desc: '',
      args: [],
    );
  }

  /// `agreement`
  String get agreement {
    return Intl.message(
      'agreement',
      name: 'agreement',
      desc: '',
      args: [],
    );
  }

  /// `Constitution`
  String get constitution {
    return Intl.message(
      'Constitution',
      name: 'constitution',
      desc: '',
      args: [],
    );
  }

  /// `Law`
  String get law {
    return Intl.message(
      'Law',
      name: 'law',
      desc: '',
      args: [],
    );
  }

  /// `International agreements`
  String get international_agreements {
    return Intl.message(
      'International agreements',
      name: 'international_agreements',
      desc: '',
      args: [],
    );
  }

  /// `Governing Council decisions`
  String get governing_council_decisions {
    return Intl.message(
      'Governing Council decisions',
      name: 'governing_council_decisions',
      desc: '',
      args: [],
    );
  }

  /// `Federal Court decisions`
  String get federal_court_decisions {
    return Intl.message(
      'Federal Court decisions',
      name: 'federal_court_decisions',
      desc: '',
      args: [],
    );
  }

  /// `Council decisions`
  String get council_decisions {
    return Intl.message(
      'Council decisions',
      name: 'council_decisions',
      desc: '',
      args: [],
    );
  }

  /// ` Representatives - Cabinet decisions`
  String get representatives_cabinet_decisions {
    return Intl.message(
      ' Representatives - Cabinet decisions',
      name: 'representatives_cabinet_decisions',
      desc: '',
      args: [],
    );
  }

  /// `Resolutions of the Revolutionary Command Council`
  String get resolution_of_the_revolutionary_command_council {
    return Intl.message(
      'Resolutions of the Revolutionary Command Council',
      name: 'resolution_of_the_revolutionary_command_council',
      desc: '',
      args: [],
    );
  }

  /// ` Coalition authority orders`
  String get coalition_authority_orders {
    return Intl.message(
      ' Coalition authority orders',
      name: 'coalition_authority_orders',
      desc: '',
      args: [],
    );
  }

  /// `Systems`
  String get systems {
    return Intl.message(
      'Systems',
      name: 'systems',
      desc: '',
      args: [],
    );
  }

  /// `Instructions`
  String get instructions {
    return Intl.message(
      'Instructions',
      name: 'instructions',
      desc: '',
      args: [],
    );
  }

  /// ` State Council decisions`
  String get state_council_decisions {
    return Intl.message(
      ' State Council decisions',
      name: 'state_council_decisions',
      desc: '',
      args: [],
    );
  }

  /// `the federal government`
  String get the_federal_government {
    return Intl.message(
      'the federal government',
      name: 'the_federal_government',
      desc: '',
      args: [],
    );
  }

  /// `Kurdistan Region`
  String get kurdistan_region {
    return Intl.message(
      'Kurdistan Region',
      name: 'kurdistan_region',
      desc: '',
      args: [],
    );
  }

  /// `Iraq - Federal`
  String get iraq_federal {
    return Intl.message(
      'Iraq - Federal',
      name: 'iraq_federal',
      desc: '',
      args: [],
    );
  }

  /// `Wired and wireless communications`
  String get wired_and_wireless_co {
    return Intl.message(
      'Wired and wireless communications',
      name: 'wired_and_wireless_co',
      desc: '',
      args: [],
    );
  }

  /// `Postal and telecommunications`
  String get postal_and_telecommun {
    return Intl.message(
      'Postal and telecommunications',
      name: 'postal_and_telecommun',
      desc: '',
      args: [],
    );
  }

  /// `foreigners`
  String get foreigners {
    return Intl.message(
      'foreigners',
      name: 'foreigners',
      desc: '',
      args: [],
    );
  }

  /// `Personal and civil status`
  String get personal_and_civil_st {
    return Intl.message(
      'Personal and civil status',
      name: 'personal_and_civil_st',
      desc: '',
      args: [],
    );
  }

  /// `Personal conditions`
  String get personal_conditions {
    return Intl.message(
      'Personal conditions',
      name: 'personal_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get nationality {
    return Intl.message(
      'Nationality',
      name: 'nationality',
      desc: '',
      args: [],
    );
  }

  /// `passport`
  String get passport {
    return Intl.message(
      'passport',
      name: 'passport',
      desc: '',
      args: [],
    );
  }

  /// `Religious denominations and institutions`
  String get religious_denominatio {
    return Intl.message(
      'Religious denominations and institutions',
      name: 'religious_denominatio',
      desc: '',
      args: [],
    );
  }

  /// `care of minors`
  String get care_of_minors {
    return Intl.message(
      'care of minors',
      name: 'care_of_minors',
      desc: '',
      args: [],
    );
  }

  /// `Personal Status`
  String get personal_status {
    return Intl.message(
      'Personal Status',
      name: 'personal_status',
      desc: '',
      args: [],
    );
  }

  /// `Civil affairs`
  String get civil_affairs {
    return Intl.message(
      'Civil affairs',
      name: 'civil_affairs',
      desc: '',
      args: [],
    );
  }

  /// `acquisition`
  String get acquisition {
    return Intl.message(
      'acquisition',
      name: 'acquisition',
      desc: '',
      args: [],
    );
  }

  /// `Possession and confiscation`
  String get possession_and_confis {
    return Intl.message(
      'Possession and confiscation',
      name: 'possession_and_confis',
      desc: '',
      args: [],
    );
  }

  /// `Confiscation and seizure of money`
  String get confiscation_and_seiz {
    return Intl.message(
      'Confiscation and seizure of money',
      name: 'confiscation_and_seiz',
      desc: '',
      args: [],
    );
  }

  /// `housing`
  String get housing {
    return Intl.message(
      'housing',
      name: 'housing',
      desc: '',
      args: [],
    );
  }

  /// `General works and contracting`
  String get general_works_and_con {
    return Intl.message(
      'General works and contracting',
      name: 'general_works_and_con',
      desc: '',
      args: [],
    );
  }

  /// `public works`
  String get public_works {
    return Intl.message(
      'public works',
      name: 'public_works',
      desc: '',
      args: [],
    );
  }

  /// `Excellence`
  String get excellence {
    return Intl.message(
      'Excellence',
      name: 'excellence',
      desc: '',
      args: [],
    );
  }

  /// `roads and bridges`
  String get roads_and_bridges {
    return Intl.message(
      'roads and bridges',
      name: 'roads_and_bridges',
      desc: '',
      args: [],
    );
  }

  /// `Media and publications`
  String get media_and_publication {
    return Intl.message(
      'Media and publications',
      name: 'media_and_publication',
      desc: '',
      args: [],
    );
  }

  /// `Flags`
  String get flags {
    return Intl.message(
      'Flags',
      name: 'flags',
      desc: '',
      args: [],
    );
  }

  /// `Publications and Publications`
  String get publications_and_publ {
    return Intl.message(
      'Publications and Publications',
      name: 'publications_and_publ',
      desc: '',
      args: [],
    );
  }

  /// `Economics and Planning`
  String get economics_and_plannin {
    return Intl.message(
      'Economics and Planning',
      name: 'economics_and_plannin',
      desc: '',
      args: [],
    );
  }

  /// `Economie`
  String get economie {
    return Intl.message(
      'Economie',
      name: 'economie',
      desc: '',
      args: [],
    );
  }

  /// `Planning`
  String get planning {
    return Intl.message(
      'Planning',
      name: 'planning',
      desc: '',
      args: [],
    );
  }

  /// `Insurance`
  String get insurance {
    return Intl.message(
      'Insurance',
      name: 'insurance',
      desc: '',
      args: [],
    );
  }

  /// `insurance companies`
  String get insurance_companies {
    return Intl.message(
      'insurance companies',
      name: 'insurance_companies',
      desc: '',
      args: [],
    );
  }

  /// `urban planning`
  String get urban_planning {
    return Intl.message(
      'urban planning',
      name: 'urban_planning',
      desc: '',
      args: [],
    );
  }

  /// `Administrative regulation`
  String get administrative_regula {
    return Intl.message(
      'Administrative regulation',
      name: 'administrative_regula',
      desc: '',
      args: [],
    );
  }

  /// `control devices`
  String get control_devices {
    return Intl.message(
      'control devices',
      name: 'control_devices',
      desc: '',
      args: [],
    );
  }

  /// `Administrative division`
  String get administrative_divisi {
    return Intl.message(
      'Administrative division',
      name: 'administrative_divisi',
      desc: '',
      args: [],
    );
  }

  /// `General Administration`
  String get general_administratio {
    return Intl.message(
      'General Administration',
      name: 'general_administratio',
      desc: '',
      args: [],
    );
  }

  /// `public institutions`
  String get public_institutions {
    return Intl.message(
      'public institutions',
      name: 'public_institutions',
      desc: '',
      args: [],
    );
  }

  /// `public bodies`
  String get public_bodies {
    return Intl.message(
      'public bodies',
      name: 'public_bodies',
      desc: '',
      args: [],
    );
  }

  /// `Basic law and public liberties`
  String get basic_law_and_public_ {
    return Intl.message(
      'Basic law and public liberties',
      name: 'basic_law_and_public_',
      desc: '',
      args: [],
    );
  }

  /// `Holidays and public holidays`
  String get holidays_and_public_h {
    return Intl.message(
      'Holidays and public holidays',
      name: 'holidays_and_public_h',
      desc: '',
      args: [],
    );
  }

  /// `National flag and emblem`
  String get national_flag_and_emb {
    return Intl.message(
      'National flag and emblem',
      name: 'national_flag_and_emb',
      desc: '',
      args: [],
    );
  }

  /// `medals`
  String get medals {
    return Intl.message(
      'medals',
      name: 'medals',
      desc: '',
      args: [],
    );
  }

  /// `public liberties`
  String get public_liberties {
    return Intl.message(
      'public liberties',
      name: 'public_liberties',
      desc: '',
      args: [],
    );
  }

  /// `public authorities`
  String get public_authorities {
    return Intl.message(
      'public authorities',
      name: 'public_authorities',
      desc: '',
      args: [],
    );
  }

  /// `Governing Council`
  String get governing_council {
    return Intl.message(
      'Governing Council',
      name: 'governing_council',
      desc: '',
      args: [],
    );
  }

  /// `state money`
  String get state_money {
    return Intl.message(
      'state money',
      name: 'state_money',
      desc: '',
      args: [],
    );
  }

  /// `State property`
  String get state_property {
    return Intl.message(
      'State property',
      name: 'state_property',
      desc: '',
      args: [],
    );
  }

  /// `rent`
  String get rent {
    return Intl.message(
      'rent',
      name: 'rent',
      desc: '',
      args: [],
    );
  }

  /// `environment`
  String get environment {
    return Intl.message(
      'environment',
      name: 'environment',
      desc: '',
      args: [],
    );
  }

  /// `commercial`
  String get commercial {
    return Intl.message(
      'commercial',
      name: 'commercial',
      desc: '',
      args: [],
    );
  }

  /// `General Trading`
  String get general_trading {
    return Intl.message(
      'General Trading',
      name: 'general_trading',
      desc: '',
      args: [],
    );
  }

  /// `Trading`
  String get trading {
    return Intl.message(
      'Trading',
      name: 'trading',
      desc: '',
      args: [],
    );
  }

  /// `comp`
  String get comp {
    return Intl.message(
      'comp',
      name: 'comp',
      desc: '',
      args: [],
    );
  }

  /// `Free zones  exhibitions and conferences`
  String get free_zones__exhibitio {
    return Intl.message(
      'Free zones  exhibitions and conferences',
      name: 'free_zones__exhibitio',
      desc: '',
      args: [],
    );
  }

  /// `Chambers of Commerce and Industry`
  String get chambers_of_commerce_ {
    return Intl.message(
      'Chambers of Commerce and Industry',
      name: 'chambers_of_commerce_',
      desc: '',
      args: [],
    );
  }

  /// `investment`
  String get investment {
    return Intl.message(
      'investment',
      name: 'investment',
      desc: '',
      args: [],
    );
  }

  /// `customs`
  String get customs {
    return Intl.message(
      'customs',
      name: 'customs',
      desc: '',
      args: [],
    );
  }

  /// `culture  education and higher education`
  String get culture__education_an {
    return Intl.message(
      'culture  education and higher education',
      name: 'culture__education_an',
      desc: '',
      args: [],
    );
  }

  /// `scientific researches`
  String get scientific_researches {
    return Intl.message(
      'scientific researches',
      name: 'scientific_researches',
      desc: '',
      args: [],
    );
  }

  /// `Translation and Languages`
  String get translation_and_langu {
    return Intl.message(
      'Translation and Languages',
      name: 'translation_and_langu',
      desc: '',
      args: [],
    );
  }

  /// `Higher education and universities`
  String get higher_education_and_ {
    return Intl.message(
      'Higher education and universities',
      name: 'higher_education_and_',
      desc: '',
      args: [],
    );
  }

  /// `youth and sports`
  String get youth_and_sports {
    return Intl.message(
      'youth and sports',
      name: 'youth_and_sports',
      desc: '',
      args: [],
    );
  }

  /// `Culture and arts`
  String get culture_and_arts {
    return Intl.message(
      'Culture and arts',
      name: 'culture_and_arts',
      desc: '',
      args: [],
    );
  }

  /// `associations`
  String get associations {
    return Intl.message(
      'associations',
      name: 'associations',
      desc: '',
      args: [],
    );
  }

  /// `Trade unions  associations and federations`
  String get trade_unions__associa {
    return Intl.message(
      'Trade unions  associations and federations',
      name: 'trade_unions__associa',
      desc: '',
      args: [],
    );
  }

  /// `political parties`
  String get political_parties {
    return Intl.message(
      'political parties',
      name: 'political_parties',
      desc: '',
      args: [],
    );
  }

  /// `criminal`
  String get criminal {
    return Intl.message(
      'criminal',
      name: 'criminal',
      desc: '',
      args: [],
    );
  }

  /// `public etiquette`
  String get public_etiquette {
    return Intl.message(
      'public etiquette',
      name: 'public_etiquette',
      desc: '',
      args: [],
    );
  }

  /// `Weapons and ammunition`
  String get weapons_and_ammunitio {
    return Intl.message(
      'Weapons and ammunition',
      name: 'weapons_and_ammunitio',
      desc: '',
      args: [],
    );
  }

  /// `sanctions`
  String get sanctions {
    return Intl.message(
      'sanctions',
      name: 'sanctions',
      desc: '',
      args: [],
    );
  }

  /// `Principles of criminal trials for the Internal Security Forces`
  String get principles_of_crimina {
    return Intl.message(
      'Principles of criminal trials for the Internal Security Forces',
      name: 'principles_of_crimina',
      desc: '',
      args: [],
    );
  }

  /// `pardon`
  String get pardon {
    return Intl.message(
      'pardon',
      name: 'pardon',
      desc: '',
      args: [],
    );
  }

  /// `Alcoholic drinks`
  String get alcoholic_drinks {
    return Intl.message(
      'Alcoholic drinks',
      name: 'alcoholic_drinks',
      desc: '',
      args: [],
    );
  }

  /// `Drugs`
  String get drugs {
    return Intl.message(
      'Drugs',
      name: 'drugs',
      desc: '',
      args: [],
    );
  }

  /// `Principles of military criminal trials`
  String get principles_of_militar {
    return Intl.message(
      'Principles of military criminal trials',
      name: 'principles_of_militar',
      desc: '',
      args: [],
    );
  }

  /// `Military Sanctions`
  String get military_sanctions {
    return Intl.message(
      'Military Sanctions',
      name: 'military_sanctions',
      desc: '',
      args: [],
    );
  }

  /// `Internal Security Forces Penalties`
  String get internal_security_for {
    return Intl.message(
      'Internal Security Forces Penalties',
      name: 'internal_security_for',
      desc: '',
      args: [],
    );
  }

  /// `anti-terrorism`
  String get anti_terrorism {
    return Intl.message(
      'anti-terrorism',
      name: 'anti_terrorism',
      desc: '',
      args: [],
    );
  }

  /// `juvenile care`
  String get juvenile_care {
    return Intl.message(
      'juvenile care',
      name: 'juvenile_care',
      desc: '',
      args: [],
    );
  }

  /// `Political Prisoners Foundation`
  String get political_prisoners_f {
    return Intl.message(
      'Political Prisoners Foundation',
      name: 'political_prisoners_f',
      desc: '',
      args: [],
    );
  }

  /// `Integrity Law`
  String get integrity_law {
    return Intl.message(
      'Integrity Law',
      name: 'integrity_law',
      desc: '',
      args: [],
    );
  }

  /// `prostitution`
  String get prostitution {
    return Intl.message(
      'prostitution',
      name: 'prostitution',
      desc: '',
      args: [],
    );
  }

  /// `combating human trafficking`
  String get combating_human_traff {
    return Intl.message(
      'combating human trafficking',
      name: 'combating_human_traff',
      desc: '',
      args: [],
    );
  }

  /// `human rights`
  String get human_rights {
    return Intl.message(
      'human rights',
      name: 'human_rights',
      desc: '',
      args: [],
    );
  }

  /// `consumer protection`
  String get consumer_protection {
    return Intl.message(
      'consumer protection',
      name: 'consumer_protection',
      desc: '',
      args: [],
    );
  }

  /// `foodstuffs`
  String get foodstuffs {
    return Intl.message(
      'foodstuffs',
      name: 'foodstuffs',
      desc: '',
      args: [],
    );
  }

  /// `civil service`
  String get civil_service {
    return Intl.message(
      'civil service',
      name: 'civil_service',
      desc: '',
      args: [],
    );
  }

  /// `Salaries and wages`
  String get salaries_and_wages {
    return Intl.message(
      'Salaries and wages',
      name: 'salaries_and_wages',
      desc: '',
      args: [],
    );
  }

  /// `general function`
  String get general_function {
    return Intl.message(
      'general function',
      name: 'general_function',
      desc: '',
      args: [],
    );
  }

  /// `Agriculture and Livestock`
  String get agriculture_and_lives {
    return Intl.message(
      'Agriculture and Livestock',
      name: 'agriculture_and_lives',
      desc: '',
      args: [],
    );
  }

  /// `Veterinary and livestock`
  String get veterinary_and_livest {
    return Intl.message(
      'Veterinary and livestock',
      name: 'veterinary_and_livest',
      desc: '',
      args: [],
    );
  }

  /// `Farming`
  String get farming {
    return Intl.message(
      'Farming',
      name: 'farming',
      desc: '',
      args: [],
    );
  }

  /// `tobacco`
  String get tobacco {
    return Intl.message(
      'tobacco',
      name: 'tobacco',
      desc: '',
      args: [],
    );
  }

  /// `cotton`
  String get cotton {
    return Intl.message(
      'cotton',
      name: 'cotton',
      desc: '',
      args: [],
    );
  }

  /// `local authorities`
  String get local_authorities {
    return Intl.message(
      'local authorities',
      name: 'local_authorities',
      desc: '',
      args: [],
    );
  }

  /// `Tourism and Antiquities`
  String get tourism_and_antiquiti {
    return Intl.message(
      'Tourism and Antiquities',
      name: 'tourism_and_antiquiti',
      desc: '',
      args: [],
    );
  }

  /// `antiquities and heritage`
  String get antiquities_and_herit {
    return Intl.message(
      'antiquities and heritage',
      name: 'antiquities_and_herit',
      desc: '',
      args: [],
    );
  }

  /// `tourism`
  String get tourism {
    return Intl.message(
      'tourism',
      name: 'tourism',
      desc: '',
      args: [],
    );
  }

  /// `social Affairs`
  String get social_affairs {
    return Intl.message(
      'social Affairs',
      name: 'social_affairs',
      desc: '',
      args: [],
    );
  }

  /// `Foreign affairs of the state`
  String get foreign_affairs_of_th {
    return Intl.message(
      'Foreign affairs of the state',
      name: 'foreign_affairs_of_th',
      desc: '',
      args: [],
    );
  }

  /// `foreign affairs`
  String get foreign_affairs {
    return Intl.message(
      'foreign affairs',
      name: 'foreign_affairs',
      desc: '',
      args: [],
    );
  }

  /// `Security Council`
  String get security_council {
    return Intl.message(
      'Security Council',
      name: 'security_council',
      desc: '',
      args: [],
    );
  }

  /// `Public health medicine and medicine`
  String get public_health_medicin {
    return Intl.message(
      'Public health medicine and medicine',
      name: 'public_health_medicin',
      desc: '',
      args: [],
    );
  }

  /// `health`
  String get health {
    return Intl.message(
      'health',
      name: 'health',
      desc: '',
      args: [],
    );
  }

  /// `industry`
  String get industry {
    return Intl.message(
      'industry',
      name: 'industry',
      desc: '',
      args: [],
    );
  }

  /// `industrial organization and development`
  String get industrial_organizati {
    return Intl.message(
      'industrial organization and development',
      name: 'industrial_organizati',
      desc: '',
      args: [],
    );
  }

  /// `Standards and Specifications`
  String get standards_and_specifi {
    return Intl.message(
      'Standards and Specifications',
      name: 'standards_and_specifi',
      desc: '',
      args: [],
    );
  }

  /// `Fishing`
  String get fishing {
    return Intl.message(
      'Fishing',
      name: 'fishing',
      desc: '',
      args: [],
    );
  }

  /// `Energy and Natural Resources`
  String get energy_and_natural_re {
    return Intl.message(
      'Energy and Natural Resources',
      name: 'energy_and_natural_re',
      desc: '',
      args: [],
    );
  }

  /// `energy`
  String get energy {
    return Intl.message(
      'energy',
      name: 'energy',
      desc: '',
      args: [],
    );
  }

  /// `waters`
  String get waters {
    return Intl.message(
      'waters',
      name: 'waters',
      desc: '',
      args: [],
    );
  }

  /// `Oil and fuel`
  String get oil_and_fuel {
    return Intl.message(
      'Oil and fuel',
      name: 'oil_and_fuel',
      desc: '',
      args: [],
    );
  }

  /// `Mines and quarries`
  String get mines_and_quarries {
    return Intl.message(
      'Mines and quarries',
      name: 'mines_and_quarries',
      desc: '',
      args: [],
    );
  }

  /// `minerals`
  String get minerals {
    return Intl.message(
      'minerals',
      name: 'minerals',
      desc: '',
      args: [],
    );
  }

  /// `justice and justice`
  String get justice_and_justice {
    return Intl.message(
      'justice and justice',
      name: 'justice_and_justice',
      desc: '',
      args: [],
    );
  }

  /// `circles of reform`
  String get circles_of_reform {
    return Intl.message(
      'circles of reform',
      name: 'circles_of_reform',
      desc: '',
      args: [],
    );
  }

  /// `spend`
  String get spend {
    return Intl.message(
      'spend',
      name: 'spend',
      desc: '',
      args: [],
    );
  }

  /// `Notary`
  String get notary {
    return Intl.message(
      'Notary',
      name: 'notary',
      desc: '',
      args: [],
    );
  }

  /// `Judicial organization`
  String get judicial_organization {
    return Intl.message(
      'Judicial organization',
      name: 'judicial_organization',
      desc: '',
      args: [],
    );
  }

  /// `Federal Supreme Court`
  String get federal_supreme_court {
    return Intl.message(
      'Federal Supreme Court',
      name: 'federal_supreme_court',
      desc: '',
      args: [],
    );
  }

  /// `State Shura Council`
  String get state_shura_council {
    return Intl.message(
      'State Shura Council',
      name: 'state_shura_council',
      desc: '',
      args: [],
    );
  }

  /// `real estate`
  String get real_estate {
    return Intl.message(
      'real estate',
      name: 'real_estate',
      desc: '',
      args: [],
    );
  }

  /// `property`
  String get property {
    return Intl.message(
      'property',
      name: 'property',
      desc: '',
      args: [],
    );
  }

  /// `real estate registration`
  String get real_estate_registrat {
    return Intl.message(
      'real estate registration',
      name: 'real_estate_registrat',
      desc: '',
      args: [],
    );
  }

  /// `Work and social security`
  String get work_and_social_secur {
    return Intl.message(
      'Work and social security',
      name: 'work_and_social_secur',
      desc: '',
      args: [],
    );
  }

  /// `social Security`
  String get social_security {
    return Intl.message(
      'social Security',
      name: 'social_security',
      desc: '',
      args: [],
    );
  }

  /// `a job`
  String get a_job {
    return Intl.message(
      'a job',
      name: 'a_job',
      desc: '',
      args: [],
    );
  }

  /// `International law`
  String get international_law {
    return Intl.message(
      'International law',
      name: 'international_law',
      desc: '',
      args: [],
    );
  }

  /// `International conventions and treaties`
  String get international_convent {
    return Intl.message(
      'International conventions and treaties',
      name: 'international_convent',
      desc: '',
      args: [],
    );
  }

  /// `Gambling and betting`
  String get gambling_and_betting {
    return Intl.message(
      'Gambling and betting',
      name: 'gambling_and_betting',
      desc: '',
      args: [],
    );
  }

  /// `Gambling gambling and betting`
  String get gambling_gambling_and {
    return Intl.message(
      'Gambling gambling and betting',
      name: 'gambling_gambling_and',
      desc: '',
      args: [],
    );
  }

  /// `Lotteries and subscriptions`
  String get lotteries_and_subscri {
    return Intl.message(
      'Lotteries and subscriptions',
      name: 'lotteries_and_subscri',
      desc: '',
      args: [],
    );
  }

  /// `armed forces`
  String get armed_forces {
    return Intl.message(
      'armed forces',
      name: 'armed_forces',
      desc: '',
      args: [],
    );
  }

  /// `national security`
  String get national_security {
    return Intl.message(
      'national security',
      name: 'national_security',
      desc: '',
      args: [],
    );
  }

  /// `as mark`
  String get as_mark {
    return Intl.message(
      'as mark',
      name: 'as_mark',
      desc: '',
      args: [],
    );
  }

  /// `public finance`
  String get public_finance {
    return Intl.message(
      'public finance',
      name: 'public_finance',
      desc: '',
      args: [],
    );
  }

  /// `public debt`
  String get public_debt {
    return Intl.message(
      'public debt',
      name: 'public_debt',
      desc: '',
      args: [],
    );
  }

  /// `Taxes and fees`
  String get taxes_and_fees {
    return Intl.message(
      'Taxes and fees',
      name: 'taxes_and_fees',
      desc: '',
      args: [],
    );
  }

  /// `General Accounting`
  String get general_accounting {
    return Intl.message(
      'General Accounting',
      name: 'general_accounting',
      desc: '',
      args: [],
    );
  }

  /// `Arbitrage`
  String get arbitrage {
    return Intl.message(
      'Arbitrage',
      name: 'arbitrage',
      desc: '',
      args: [],
    );
  }

  /// `civil`
  String get civil {
    return Intl.message(
      'civil',
      name: 'civil',
      desc: '',
      args: [],
    );
  }

  /// `Civil pleadings`
  String get civil_pleadings {
    return Intl.message(
      'Civil pleadings',
      name: 'civil_pleadings',
      desc: '',
      args: [],
    );
  }

  /// `Execution`
  String get execution {
    return Intl.message(
      'Execution',
      name: 'execution',
      desc: '',
      args: [],
    );
  }

  /// `proof`
  String get proof {
    return Intl.message(
      'proof',
      name: 'proof',
      desc: '',
      args: [],
    );
  }

  /// `embed`
  String get embed {
    return Intl.message(
      'embed',
      name: 'embed',
      desc: '',
      args: [],
    );
  }

  /// `Selling and renting state money`
  String get selling_and_renting_s {
    return Intl.message(
      'Selling and renting state money',
      name: 'selling_and_renting_s',
      desc: '',
      args: [],
    );
  }

  /// `Government debt collection`
  String get government_debt_colle {
    return Intl.message(
      'Government debt collection',
      name: 'government_debt_colle',
      desc: '',
      args: [],
    );
  }

  /// `forensic fees`
  String get forensic_fees {
    return Intl.message(
      'forensic fees',
      name: 'forensic_fees',
      desc: '',
      args: [],
    );
  }

  /// `Public Prosecution`
  String get public_prosecution {
    return Intl.message(
      'Public Prosecution',
      name: 'public_prosecution',
      desc: '',
      args: [],
    );
  }

  /// `Shiite Endowment office`
  String get shiite_endowment_offi {
    return Intl.message(
      'Shiite Endowment office',
      name: 'shiite_endowment_offi',
      desc: '',
      args: [],
    );
  }

  /// `Sunni Endowment Diwan`
  String get sunni_endowment_diwan {
    return Intl.message(
      'Sunni Endowment Diwan',
      name: 'sunni_endowment_diwan',
      desc: '',
      args: [],
    );
  }

  /// `The Right Book`
  String get the_right_book {
    return Intl.message(
      'The Right Book',
      name: 'the_right_book',
      desc: '',
      args: [],
    );
  }

  /// `Provincial district and sub-district councils`
  String get provincial_district_a {
    return Intl.message(
      'Provincial district and sub-district councils',
      name: 'provincial_district_a',
      desc: '',
      args: [],
    );
  }

  /// `Lawyer`
  String get lawyer {
    return Intl.message(
      'Lawyer',
      name: 'lawyer',
      desc: '',
      args: [],
    );
  }

  /// `the traffic`
  String get the_traffic {
    return Intl.message(
      'the traffic',
      name: 'the_traffic',
      desc: '',
      args: [],
    );
  }

  /// `Judicial supervision`
  String get judicial_supervision {
    return Intl.message(
      'Judicial supervision',
      name: 'judicial_supervision',
      desc: '',
      args: [],
    );
  }

  /// `Foreign Judgments Execution Law`
  String get foreign_judgments_exe {
    return Intl.message(
      'Foreign Judgments Execution Law',
      name: 'foreign_judgments_exe',
      desc: '',
      args: [],
    );
  }

  /// `Decree permitting liquidation of the atomic endowment`
  String get decree_permitting_liq {
    return Intl.message(
      'Decree permitting liquidation of the atomic endowment',
      name: 'decree_permitting_liq',
      desc: '',
      args: [],
    );
  }

  /// `Executive Procedures for the Formation of Regions`
  String get executive_procedures_ {
    return Intl.message(
      'Executive Procedures for the Formation of Regions',
      name: 'executive_procedures_',
      desc: '',
      args: [],
    );
  }

  /// `Traffic and vehicles`
  String get traffic_and_vehicles {
    return Intl.message(
      'Traffic and vehicles',
      name: 'traffic_and_vehicles',
      desc: '',
      args: [],
    );
  }

  /// `banking`
  String get banking {
    return Intl.message(
      'banking',
      name: 'banking',
      desc: '',
      args: [],
    );
  }

  /// `Market`
  String get market {
    return Intl.message(
      'Market',
      name: 'market',
      desc: '',
      args: [],
    );
  }

  /// `banks`
  String get banks {
    return Intl.message(
      'banks',
      name: 'banks',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `stock markets`
  String get stock_markets {
    return Intl.message(
      'stock markets',
      name: 'stock_markets',
      desc: '',
      args: [],
    );
  }

  /// `investment promotion`
  String get investment_promotion {
    return Intl.message(
      'investment promotion',
      name: 'investment_promotion',
      desc: '',
      args: [],
    );
  }

  /// `Money laundering`
  String get money_laundering {
    return Intl.message(
      'Money laundering',
      name: 'money_laundering',
      desc: '',
      args: [],
    );
  }

  /// `central bank`
  String get central_bank {
    return Intl.message(
      'central bank',
      name: 'central_bank',
      desc: '',
      args: [],
    );
  }

  /// `commercial bank`
  String get commercial_bank {
    return Intl.message(
      'commercial bank',
      name: 'commercial_bank',
      desc: '',
      args: [],
    );
  }

  /// `loans`
  String get loans {
    return Intl.message(
      'loans',
      name: 'loans',
      desc: '',
      args: [],
    );
  }

  /// `Intellectual property`
  String get intellectual_property {
    return Intl.message(
      'Intellectual property',
      name: 'intellectual_property',
      desc: '',
      args: [],
    );
  }

  /// `informative`
  String get informative {
    return Intl.message(
      'informative',
      name: 'informative',
      desc: '',
      args: [],
    );
  }

  /// `free professions`
  String get free_professions {
    return Intl.message(
      'free professions',
      name: 'free_professions',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get transfer {
    return Intl.message(
      'Transfer',
      name: 'transfer',
      desc: '',
      args: [],
    );
  }

  /// `air Transport`
  String get air_transport {
    return Intl.message(
      'air Transport',
      name: 'air_transport',
      desc: '',
      args: [],
    );
  }

  /// `Maritime transport`
  String get maritime_transport {
    return Intl.message(
      'Maritime transport',
      name: 'maritime_transport',
      desc: '',
      args: [],
    );
  }

  /// `land trasportation`
  String get land_trasportation {
    return Intl.message(
      'land trasportation',
      name: 'land_trasportation',
      desc: '',
      args: [],
    );
  }

  /// `Doors list`
  String get doors_list {
    return Intl.message(
      'Doors list',
      name: 'doors_list',
      desc: '',
      args: [],
    );
  }

  /// `Categories List`
  String get categories_list {
    return Intl.message(
      'Categories List',
      name: 'categories_list',
      desc: '',
      args: [],
    );
  }

  /// `Enforcement Of The Law`
  String get enforcement_of_the_law {
    return Intl.message(
      'Enforcement Of The Law',
      name: 'enforcement_of_the_law',
      desc: '',
      args: [],
    );
  }

  /// `Not expired`
  String get not_expired {
    return Intl.message(
      'Not expired',
      name: 'not_expired',
      desc: '',
      args: [],
    );
  }

  /// `Not valid`
  String get not_valid {
    return Intl.message(
      'Not valid',
      name: 'not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Valid`
  String get valid {
    return Intl.message(
      'Valid',
      name: 'valid',
      desc: '',
      args: [],
    );
  }

  /// `Issuer`
  String get issuer {
    return Intl.message(
      'Issuer',
      name: 'issuer',
      desc: '',
      args: [],
    );
  }

  /// `Legislation Type`
  String get legislation_type {
    return Intl.message(
      'Legislation Type',
      name: 'legislation_type',
      desc: '',
      args: [],
    );
  }

  /// `Legislation Number`
  String get legislation_number {
    return Intl.message(
      'Legislation Number',
      name: 'legislation_number',
      desc: '',
      args: [],
    );
  }

  /// `Legislative title`
  String get legislative_title {
    return Intl.message(
      'Legislative title',
      name: 'legislative_title',
      desc: '',
      args: [],
    );
  }

  /// `Issue Number`
  String get issue_number {
    return Intl.message(
      'Issue Number',
      name: 'issue_number',
      desc: '',
      args: [],
    );
  }

  /// `Legislation Date`
  String get legislation_date {
    return Intl.message(
      'Legislation Date',
      name: 'legislation_date',
      desc: '',
      args: [],
    );
  }

  /// `Issue date`
  String get issue_date {
    return Intl.message(
      'Issue date',
      name: 'issue_date',
      desc: '',
      args: [],
    );
  }

  /// `Source`
  String get source {
    return Intl.message(
      'Source',
      name: 'source',
      desc: '',
      args: [],
    );
  }

  /// `Note`
  String get note {
    return Intl.message(
      'Note',
      name: 'note',
      desc: '',
      args: [],
    );
  }

  /// `Expire in`
  String get expire_in {
    return Intl.message(
      'Expire in',
      name: 'expire_in',
      desc: '',
      args: [],
    );
  }

  /// `days`
  String get days {
    return Intl.message(
      'days',
      name: 'days',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get expired {
    return Intl.message(
      'Expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `The app is not affiliated with the government. It is a social application to connect candidates, representatives and voters. All information is managed and provided by users. The source of the information is the users directly.`
  String get not_affiliated_with_the_government {
    return Intl.message(
      'The app is not affiliated with the government. It is a social application to connect candidates, representatives and voters. All information is managed and provided by users. The source of the information is the users directly.',
      name: 'not_affiliated_with_the_government',
      desc: '',
      args: [],
    );
  }

  /// `Federal`
  String get federal {
    return Intl.message(
      'Federal',
      name: 'federal',
      desc: '',
      args: [],
    );
  }

  /// `Provincial Ninawa`
  String get provincial_ninawa {
    return Intl.message(
      'Provincial Ninawa',
      name: 'provincial_ninawa',
      desc: '',
      args: [],
    );
  }

  /// `Provincial Wasit`
  String get provincial_wasit {
    return Intl.message(
      'Provincial Wasit',
      name: 'provincial_wasit',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get document {
    return Intl.message(
      'Document',
      name: 'document',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Statement`
  String get statement {
    return Intl.message(
      'Statement',
      name: 'statement',
      desc: '',
      args: [],
    );
  }

  /// `Where the application gives opportunities to vote on polls`
  String get where_the_application {
    return Intl.message(
      'Where the application gives opportunities to vote on polls',
      name: 'where_the_application',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get sign_in {
    return Intl.message(
      'Sign In',
      name: 'sign_in',
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

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter number`
  String get enter_number {
    return Intl.message(
      'Enter number',
      name: 'enter_number',
      desc: '',
      args: [],
    );
  }

  /// `Your password`
  String get your_password {
    return Intl.message(
      'Your password',
      name: 'your_password',
      desc: '',
      args: [],
    );
  }

  /// `More news`
  String get more_news {
    return Intl.message(
      'More news',
      name: 'more_news',
      desc: '',
      args: [],
    );
  }

  /// `Party Name`
  String get party_name {
    return Intl.message(
      'Party Name',
      name: 'party_name',
      desc: '',
      args: [],
    );
  }

  /// `if you don’t an account you can`
  String get can_register {
    return Intl.message(
      'if you don’t an account you can',
      name: 'can_register',
      desc: '',
      args: [],
    );
  }

  /// `Register here!`
  String get register_here {
    return Intl.message(
      'Register here!',
      name: 'register_here',
      desc: '',
      args: [],
    );
  }

  /// `Have an account already?`
  String get have_account {
    return Intl.message(
      'Have an account already?',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Login here!`
  String get login_here {
    return Intl.message(
      'Login here!',
      name: 'login_here',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Phone must contain 10 chars`
  String get phone_not_correct {
    return Intl.message(
      'Phone must contain 10 chars',
      name: 'phone_not_correct',
      desc: '',
      args: [],
    );
  }

  /// `OTP code`
  String get otp_code {
    return Intl.message(
      'OTP code',
      name: 'otp_code',
      desc: '',
      args: [],
    );
  }

  /// `Request code again`
  String get request_code_again {
    return Intl.message(
      'Request code again',
      name: 'request_code_again',
      desc: '',
      args: [],
    );
  }

  /// `Please Enter the OTP code you received to`
  String get please_enter_otp {
    return Intl.message(
      'Please Enter the OTP code you received to',
      name: 'please_enter_otp',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get last_name {
    return Intl.message(
      'Last name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name {
    return Intl.message(
      'First name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Change profile`
  String get change_profile {
    return Intl.message(
      'Change profile',
      name: 'change_profile',
      desc: '',
      args: [],
    );
  }

  /// `Verify phone number to reset your password`
  String get verify_phone_number {
    return Intl.message(
      'Verify phone number to reset your password',
      name: 'verify_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Continue as a guest`
  String get continue_as_guest {
    return Intl.message(
      'Continue as a guest',
      name: 'continue_as_guest',
      desc: '',
      args: [],
    );
  }

  /// `Achvievements`
  String get achvievements {
    return Intl.message(
      'Achvievements',
      name: 'achvievements',
      desc: '',
      args: [],
    );
  }

  /// `Function`
  String get function {
    return Intl.message(
      'Function',
      name: 'function',
      desc: '',
      args: [],
    );
  }

  /// `Position Against Main Issues`
  String get position_againts_main_issue {
    return Intl.message(
      'Position Against Main Issues',
      name: 'position_againts_main_issue',
      desc: '',
      args: [],
    );
  }

  /// `Seat type`
  String get seat_type {
    return Intl.message(
      'Seat type',
      name: 'seat_type',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get arabic {
    return Intl.message(
      'Arabic',
      name: 'arabic',
      desc: '',
      args: [],
    );
  }

  /// `Support: {count}`
  String support_count(Object count) {
    return Intl.message(
      'Support: $count',
      name: 'support_count',
      desc: '',
      args: [count],
    );
  }

  /// `Search Law`
  String get search_law {
    return Intl.message(
      'Search Law',
      name: 'search_law',
      desc: '',
      args: [],
    );
  }

  /// `Search Category`
  String get search_category {
    return Intl.message(
      'Search Category',
      name: 'search_category',
      desc: '',
      args: [],
    );
  }

  /// `Sign in as a MP`
  String get sign_in_mp {
    return Intl.message(
      'Sign in as a MP',
      name: 'sign_in_mp',
      desc: '',
      args: [],
    );
  }

  /// `MFA code`
  String get mfa_code {
    return Intl.message(
      'MFA code',
      name: 'mfa_code',
      desc: '',
      args: [],
    );
  }

  /// `Place a barcode inside the viewfinder rectangle to scan it`
  String get place_barcode {
    return Intl.message(
      'Place a barcode inside the viewfinder rectangle to scan it',
      name: 'place_barcode',
      desc: '',
      args: [],
    );
  }

  /// `Law No.`
  String get law_no {
    return Intl.message(
      'Law No.',
      name: 'law_no',
      desc: '',
      args: [],
    );
  }

  /// `Information About The Law`
  String get info_law {
    return Intl.message(
      'Information About The Law',
      name: 'info_law',
      desc: '',
      args: [],
    );
  }

  /// `Article`
  String get article {
    return Intl.message(
      'Article',
      name: 'article',
      desc: '',
      args: [],
    );
  }

  /// `In progress`
  String get in_progress {
    return Intl.message(
      'In progress',
      name: 'in_progress',
      desc: '',
      args: [],
    );
  }

  /// `Resolved`
  String get resolved {
    return Intl.message(
      'Resolved',
      name: 'resolved',
      desc: '',
      args: [],
    );
  }

  /// `Not going to be done`
  String get not_going_to_be_done {
    return Intl.message(
      'Not going to be done',
      name: 'not_going_to_be_done',
      desc: '',
      args: [],
    );
  }

  /// `Created by me`
  String get created_by_me {
    return Intl.message(
      'Created by me',
      name: 'created_by_me',
      desc: '',
      args: [],
    );
  }

  /// `My complaints`
  String get my_complaints {
    return Intl.message(
      'My complaints',
      name: 'my_complaints',
      desc: '',
      args: [],
    );
  }

  /// `By date`
  String get by_date {
    return Intl.message(
      'By date',
      name: 'by_date',
      desc: '',
      args: [],
    );
  }

  /// `By support`
  String get by_support {
    return Intl.message(
      'By support',
      name: 'by_support',
      desc: '',
      args: [],
    );
  }

  /// `Sort by`
  String get sort_by {
    return Intl.message(
      'Sort by',
      name: 'sort_by',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get later {
    return Intl.message(
      'Later',
      name: 'later',
      desc: '',
      args: [],
    );
  }

  /// `Use biometrics to protect your app?`
  String get use_biometrics {
    return Intl.message(
      'Use biometrics to protect your app?',
      name: 'use_biometrics',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Running for selecion`
  String get running_for_selection {
    return Intl.message(
      'Running for selecion',
      name: 'running_for_selection',
      desc: '',
      args: [],
    );
  }

  /// `Previous MP`
  String get previous_mp {
    return Intl.message(
      'Previous MP',
      name: 'previous_mp',
      desc: '',
      args: [],
    );
  }

  /// `Achivements`
  String get achivements {
    return Intl.message(
      'Achivements',
      name: 'achivements',
      desc: '',
      args: [],
    );
  }

  /// `Seat`
  String get seat {
    return Intl.message(
      'Seat',
      name: 'seat',
      desc: '',
      args: [],
    );
  }

  /// `App version`
  String get app_version {
    return Intl.message(
      'App version',
      name: 'app_version',
      desc: '',
      args: [],
    );
  }

  /// `Enter birthday`
  String get enter_birthday {
    return Intl.message(
      'Enter birthday',
      name: 'enter_birthday',
      desc: '',
      args: [],
    );
  }

  /// `{number}%`
  String percentage(Object number) {
    return Intl.message(
      '$number%',
      name: 'percentage',
      desc: '',
      args: [number],
    );
  }

  /// `Do you really want to delete your profile?`
  String get do_u_want_to_delete_profile {
    return Intl.message(
      'Do you really want to delete your profile?',
      name: 'do_u_want_to_delete_profile',
      desc: '',
      args: [],
    );
  }

  /// `Pending approval`
  String get pending_approval {
    return Intl.message(
      'Pending approval',
      name: 'pending_approval',
      desc: '',
      args: [],
    );
  }

  /// `Rejected`
  String get rejected {
    return Intl.message(
      'Rejected',
      name: 'rejected',
      desc: '',
      args: [],
    );
  }

  /// `You can’t change your location more than three time.`
  String get you_cant_change_your_location_more_3 {
    return Intl.message(
      'You can’t change your location more than three time.',
      name: 'you_cant_change_your_location_more_3',
      desc: '',
      args: [],
    );
  }

  /// `Sorry`
  String get sorry {
    return Intl.message(
      'Sorry',
      name: 'sorry',
      desc: '',
      args: [],
    );
  }

  /// `there is currently no information available Content in progress`
  String get there_is_currently_no_info_avaliable {
    return Intl.message(
      'there is currently no information available Content in progress',
      name: 'there_is_currently_no_info_avaliable',
      desc: '',
      args: [],
    );
  }

  /// `Data is not found`
  String get not_found {
    return Intl.message(
      'Data is not found',
      name: 'not_found',
      desc: '',
      args: [],
    );
  }

  /// `Election code`
  String get election_code {
    return Intl.message(
      'Election code',
      name: 'election_code',
      desc: '',
      args: [],
    );
  }

  /// `Active Survey`
  String get active_survey {
    return Intl.message(
      'Active Survey',
      name: 'active_survey',
      desc: '',
      args: [],
    );
  }

  /// `Expired Survey`
  String get expired_survey {
    return Intl.message(
      'Expired Survey',
      name: 'expired_survey',
      desc: '',
      args: [],
    );
  }

  /// `Voted`
  String get voted {
    return Intl.message(
      'Voted',
      name: 'voted',
      desc: '',
      args: [],
    );
  }

  /// `You did not vote`
  String get did_not_vote {
    return Intl.message(
      'You did not vote',
      name: 'did_not_vote',
      desc: '',
      args: [],
    );
  }

  /// `This is not an Iraqi phone number`
  String get not_iraqi_phone_number {
    return Intl.message(
      'This is not an Iraqi phone number',
      name: 'not_iraqi_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `PCM`
  String get pcm {
    return Intl.message(
      'PCM',
      name: 'pcm',
      desc: '',
      args: [],
    );
  }

  /// `PCMs`
  String get pcms {
    return Intl.message(
      'PCMs',
      name: 'pcms',
      desc: '',
      args: [],
    );
  }

  /// `Candidates`
  String get candidates {
    return Intl.message(
      'Candidates',
      name: 'candidates',
      desc: '',
      args: [],
    );
  }

  /// `Winners`
  String get winners {
    return Intl.message(
      'Winners',
      name: 'winners',
      desc: '',
      args: [],
    );
  }

  /// `Election`
  String get election {
    return Intl.message(
      'Election',
      name: 'election',
      desc: '',
      args: [],
    );
  }

  /// `Counting`
  String get counting {
    return Intl.message(
      'Counting',
      name: 'counting',
      desc: '',
      args: [],
    );
  }

  /// `Final`
  String get final_mode {
    return Intl.message(
      'Final',
      name: 'final_mode',
      desc: '',
      args: [],
    );
  }

  /// `Unable to process`
  String get unable_to_process {
    return Intl.message(
      'Unable to process',
      name: 'unable_to_process',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone or password`
  String get invalid_phone_or_password {
    return Intl.message(
      'Invalid phone or password',
      name: 'invalid_phone_or_password',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong, please try again later`
  String get something_went_wrong_try_again_later {
    return Intl.message(
      'Something went wrong, please try again later',
      name: 'something_went_wrong_try_again_later',
      desc: '',
      args: [],
    );
  }

  /// `The phone is invalid`
  String get phone_is_invalid {
    return Intl.message(
      'The phone is invalid',
      name: 'phone_is_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Terms&Conditions`
  String get terms_conditions {
    return Intl.message(
      'Terms&Conditions',
      name: 'terms_conditions',
      desc: '',
      args: [],
    );
  }

  /// `The phone number exists`
  String get phone_exists {
    return Intl.message(
      'The phone number exists',
      name: 'phone_exists',
      desc: '',
      args: [],
    );
  }

  /// `Open settings`
  String get open_settings {
    return Intl.message(
      'Open settings',
      name: 'open_settings',
      desc: '',
      args: [],
    );
  }

  /// `Please enter otp :{otp_code}`
  String please_enter_otp_code(Object otp_code) {
    return Intl.message(
      'Please enter otp :$otp_code',
      name: 'please_enter_otp_code',
      desc: '',
      args: [otp_code],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Update required`
  String get update_required {
    return Intl.message(
      'Update required',
      name: 'update_required',
      desc: '',
      args: [],
    );
  }

  /// `To continue using our app, please update to the latest version. This will ensure you have the best experience and access to new features.`
  String get you_have_to_update_in_order_to_use_our_service {
    return Intl.message(
      'To continue using our app, please update to the latest version. This will ensure you have the best experience and access to new features.',
      name: 'you_have_to_update_in_order_to_use_our_service',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contact_us {
    return Intl.message(
      'Contact us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Email is not valid`
  String get email_is_not_correct {
    return Intl.message(
      'Email is not valid',
      name: 'email_is_not_correct',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_ {
    return Intl.message(
      'Continue',
      name: 'continue_',
      desc: '',
      args: [],
    );
  }

  /// `Complete`
  String get complete {
    return Intl.message(
      'Complete',
      name: 'complete',
      desc: '',
      args: [],
    );
  }

  /// `Saved recipes`
  String get saved_recipes {
    return Intl.message(
      'Saved recipes',
      name: 'saved_recipes',
      desc: '',
      args: [],
    );
  }

  /// `Hello, {name}`
  String hello_name(Object name) {
    return Intl.message(
      'Hello, $name',
      name: 'hello_name',
      desc: '',
      args: [name],
    );
  }

  /// `Unknown`
  String get unknown {
    return Intl.message(
      'Unknown',
      name: 'unknown',
      desc: '',
      args: [],
    );
  }

  /// `Groceries`
  String get groceries {
    return Intl.message(
      'Groceries',
      name: 'groceries',
      desc: '',
      args: [],
    );
  }

  /// `Dining`
  String get dining {
    return Intl.message(
      'Dining',
      name: 'dining',
      desc: '',
      args: [],
    );
  }

  /// `Electronics`
  String get electronics {
    return Intl.message(
      'Electronics',
      name: 'electronics',
      desc: '',
      args: [],
    );
  }

  /// `Clothing`
  String get clothing {
    return Intl.message(
      'Clothing',
      name: 'clothing',
      desc: '',
      args: [],
    );
  }

  /// `Healthcare`
  String get healthcare {
    return Intl.message(
      'Healthcare',
      name: 'healthcare',
      desc: '',
      args: [],
    );
  }

  /// `Entertainment`
  String get entertainment {
    return Intl.message(
      'Entertainment',
      name: 'entertainment',
      desc: '',
      args: [],
    );
  }

  /// `Travel`
  String get travel {
    return Intl.message(
      'Travel',
      name: 'travel',
      desc: '',
      args: [],
    );
  }

  /// `Automotive`
  String get automotive {
    return Intl.message(
      'Automotive',
      name: 'automotive',
      desc: '',
      args: [],
    );
  }

  /// `Utilities`
  String get utilities {
    return Intl.message(
      'Utilities',
      name: 'utilities',
      desc: '',
      args: [],
    );
  }

  /// `Home Improvement`
  String get homeImprovement {
    return Intl.message(
      'Home Improvement',
      name: 'homeImprovement',
      desc: '',
      args: [],
    );
  }

  /// `Education`
  String get education {
    return Intl.message(
      'Education',
      name: 'education',
      desc: '',
      args: [],
    );
  }

  /// `Beauty & Personal Care`
  String get beautyPersonalCare {
    return Intl.message(
      'Beauty & Personal Care',
      name: 'beautyPersonalCare',
      desc: '',
      args: [],
    );
  }

  /// `Fitness`
  String get fitness {
    return Intl.message(
      'Fitness',
      name: 'fitness',
      desc: '',
      args: [],
    );
  }

  /// `Pet Care`
  String get petCare {
    return Intl.message(
      'Pet Care',
      name: 'petCare',
      desc: '',
      args: [],
    );
  }

  /// `Gifts & Donations`
  String get giftsDonations {
    return Intl.message(
      'Gifts & Donations',
      name: 'giftsDonations',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
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
