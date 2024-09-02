/// represents a collection of endpoints for a web service.
library;
// ignore_for_file: library_private_types_in_public_api

abstract class EndPoints {
  const EndPoints._();

  /// endpoints for authentication-related actions.
  static _Auth auth = const _Auth._();

  /// endpoints for home-related actions.
  static _Home home = const _Home._();

  /// endpoints for alert-related actions.
  static _Alert alert = const _Alert._();

  /// endpoints for projects-related actions.
  static _Projects projects = const _Projects._();

  /// endpoints for filter-related actions.
  static _Filters filter = const _Filters._();

  /// endpoints for analytic-related actions.
  static _Analytic analytic = const _Analytic._();
}

class _Auth {
  const _Auth._();
  String get login => '/auth/login';
}

class _Home {
  const _Home._();
  String get latest => '/home/latest';
}

class _Alert {
  const _Alert._();

  String get getAlerts => '/v1/contents';

  String getContentImage(int id) => '/v1/contents/$id/image';

  String deleteAlert(int projectId, int contentId) =>
      '/v1/projects/$projectId/contents/$contentId/alert';
}

class _Projects {
  const _Projects._();

  String get getProjects => '/v1/users/me/projects';
}

class _Filters {
  const _Filters._();

  String getKeywords(int projectId) => '/v1/projects/$projectId/keywords';
}

class _Analytic {
  const _Analytic._();

  String get getWorldCloud => '/v1/contents/charts/word-cloud';
  String get analytics => '/v1/contents/analytics';
  String getCharts(int projectId) => '/v1/contents/charts/reactions';
}
