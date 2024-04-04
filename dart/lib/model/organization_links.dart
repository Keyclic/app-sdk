//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OrganizationLinks {
  /// Returns a new [OrganizationLinks] instance.
  OrganizationLinks({
    this.application,
    this.businessActivity,
    this.configuration,
    this.dispatcher,
    this.logo,
    this.self,
  });

  /// Returns a new [OrganizationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OrganizationLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OrganizationLinks(
      application: OrganizationLinksApplication.fromJson(json[r'application']),
      businessActivity:
          OrganizationLinksBusinessActivity.fromJson(json[r'businessActivity']),
      configuration:
          OrganizationLinksConfiguration.fromJson(json[r'configuration']),
      dispatcher: OrganizationLinksDispatcher.fromJson(json[r'dispatcher']),
      logo: OrganizationLinksLogo.fromJson(json[r'logo']),
      self: OrganizationLinksSelf.fromJson(json[r'self']),
    );
  }

  OrganizationLinksApplication? application;

  OrganizationLinksBusinessActivity? businessActivity;

  OrganizationLinksConfiguration? configuration;

  OrganizationLinksDispatcher? dispatcher;

  OrganizationLinksLogo? logo;

  OrganizationLinksSelf? self;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinks &&
        other.application == application &&
        other.businessActivity == businessActivity &&
        other.configuration == configuration &&
        other.dispatcher == dispatcher &&
        other.logo == logo &&
        other.self == self;
  }

  @override
  int get hashCode =>
      (application == null ? 0 : application.hashCode) +
      (businessActivity == null ? 0 : businessActivity.hashCode) +
      (configuration == null ? 0 : configuration.hashCode) +
      (dispatcher == null ? 0 : dispatcher.hashCode) +
      (logo == null ? 0 : logo.hashCode) +
      (self == null ? 0 : self.hashCode);

  static List<OrganizationLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OrganizationLinks>[];
    }

    return json.fold(<OrganizationLinks>[],
        (List<OrganizationLinks> previousValue, element) {
      final OrganizationLinks? object = OrganizationLinks.fromJson(element);
      if (object is OrganizationLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OrganizationLinks> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OrganizationLinks>{};
    }

    return json.entries.fold(<String, OrganizationLinks>{},
        (Map<String, OrganizationLinks> previousValue, element) {
      final OrganizationLinks? object =
          OrganizationLinks.fromJson(element.value);
      if (object is OrganizationLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OrganizationLinks-objects as value to a dart map
  static Map<String, List<OrganizationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OrganizationLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OrganizationLinks>>(
          key, OrganizationLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OrganizationLinks[application=$application, businessActivity=$businessActivity, configuration=$configuration, dispatcher=$dispatcher, logo=$logo, self=$self]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^application\.').hasMatch(key)))
        r'application': application?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^application\.'))) {
            previousValue.add(element.split(RegExp(r'^application\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^businessActivity\.').hasMatch(key)))
        r'businessActivity': businessActivity?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^businessActivity\.'))) {
            previousValue
                .add(element.split(RegExp(r'^businessActivity\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^configuration\.').hasMatch(key)))
        r'configuration': configuration?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^configuration\.'))) {
            previousValue.add(element.split(RegExp(r'^configuration\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^dispatcher\.').hasMatch(key)))
        r'dispatcher': dispatcher?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^dispatcher\.'))) {
            previousValue.add(element.split(RegExp(r'^dispatcher\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^logo\.').hasMatch(key)))
        r'logo': logo?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^logo\.'))) {
            previousValue.add(element.split(RegExp(r'^logo\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
