//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationConfiguration {
  /// Returns a new [ApplicationConfiguration] instance.
  ApplicationConfiguration({
    this.public,
  });

  /// Returns a new [ApplicationConfiguration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationConfiguration.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationConfiguration(
      public: json[r'public'],
    );
  }

  bool public;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationConfiguration && other.public == public;
  }

  @override
  int get hashCode => (public == null ? 0 : public.hashCode);

  static List<ApplicationConfiguration> listFromJson(List<dynamic> json) {
    return <ApplicationConfiguration>[
      if (json is List)
        for (dynamic value in json) ApplicationConfiguration.fromJson(value),
    ];
  }

  static Map<String, ApplicationConfiguration> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ApplicationConfiguration>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationConfiguration.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationConfiguration-objects as value to a dart map
  static Map<String, List<ApplicationConfiguration>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ApplicationConfiguration>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationConfiguration.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'ApplicationConfiguration[public=$public]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (public != null) r'public': public,
    };
  }
}
