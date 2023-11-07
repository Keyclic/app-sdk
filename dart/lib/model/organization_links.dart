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
  static OrganizationLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinks(
      application: json[r'application'] is! Map
          ? null
          : OrganizationLinksApplication.fromJson(json[r'application']),
      businessActivity: json[r'businessActivity'] is! Map
          ? null
          : OrganizationLinksBusinessActivity.fromJson(
              json[r'businessActivity']),
      configuration: json[r'configuration'] is! Map
          ? null
          : OrganizationLinksConfiguration.fromJson(json[r'configuration']),
      dispatcher: json[r'dispatcher'] is! Map
          ? null
          : OrganizationLinksDispatcher.fromJson(json[r'dispatcher']),
      logo: json[r'logo'] is! Map
          ? null
          : OrganizationLinksLogo.fromJson(json[r'logo']),
      self: json[r'self'] is! Map
          ? null
          : OrganizationLinksSelf.fromJson(json[r'self']),
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

  static List<OrganizationLinks> listFromJson(Iterable<dynamic>? json) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && application != null) ||
          (keys?.contains(r'application') ?? false))
        r'application': application?.toJson(),
      if ((keys == null && businessActivity != null) ||
          (keys?.contains(r'businessActivity') ?? false))
        r'businessActivity': businessActivity?.toJson(),
      if ((keys == null && configuration != null) ||
          (keys?.contains(r'configuration') ?? false))
        r'configuration': configuration?.toJson(),
      if ((keys == null && dispatcher != null) ||
          (keys?.contains(r'dispatcher') ?? false))
        r'dispatcher': dispatcher?.toJson(),
      if ((keys == null && logo != null) || (keys?.contains(r'logo') ?? false))
        r'logo': logo?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
    };
  }
}
