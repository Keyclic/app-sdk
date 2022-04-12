//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

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
  factory OrganizationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
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

  OrganizationLinksApplication application;

  OrganizationLinksBusinessActivity businessActivity;

  OrganizationLinksConfiguration configuration;

  OrganizationLinksDispatcher dispatcher;

  OrganizationLinksLogo logo;

  OrganizationLinksSelf self;

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

  static List<OrganizationLinks> listFromJson(List<dynamic> json) {
    return <OrganizationLinks>[
      if (json is List)
        for (dynamic value in json) OrganizationLinks.fromJson(value),
    ];
  }

  static Map<String, OrganizationLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, OrganizationLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OrganizationLinks-objects as value to a dart map
  static Map<String, List<OrganizationLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OrganizationLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OrganizationLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OrganizationLinks[application=$application, businessActivity=$businessActivity, configuration=$configuration, dispatcher=$dispatcher, logo=$logo, self=$self]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (application != null) r'application': application,
      if (businessActivity != null) r'businessActivity': businessActivity,
      if (configuration != null) r'configuration': configuration,
      if (dispatcher != null) r'dispatcher': dispatcher,
      if (logo != null) r'logo': logo,
      if (self != null) r'self': self,
    };
  }
}
