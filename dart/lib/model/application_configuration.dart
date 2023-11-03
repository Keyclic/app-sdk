//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ApplicationConfiguration {
  /// Returns a new [ApplicationConfiguration] instance.
  ApplicationConfiguration({
    this.public,
  });

  /// Returns a new [ApplicationConfiguration] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApplicationConfiguration? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ApplicationConfiguration(
      public: json[r'public'],
    );
  }

  bool? public;

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

  static List<ApplicationConfiguration> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ApplicationConfiguration>[];
    }

    return json.fold(<ApplicationConfiguration>[],
        (List<ApplicationConfiguration> previousValue, element) {
      final ApplicationConfiguration? object =
          ApplicationConfiguration.fromJson(element);
      if (object is ApplicationConfiguration) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationConfiguration> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationConfiguration>{};
    }

    return json.entries.fold(<String, ApplicationConfiguration>{},
        (Map<String, ApplicationConfiguration> previousValue, element) {
      final ApplicationConfiguration? object =
          ApplicationConfiguration.fromJson(element.value);
      if (object is ApplicationConfiguration) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationConfiguration-objects as value to a dart map
  static Map<String, List<ApplicationConfiguration>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationConfiguration>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationConfiguration>>(
          key, ApplicationConfiguration.listFromJson(value));
    });
  }

  @override
  String toString() => 'ApplicationConfiguration[public=$public]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && public != null) ||
          (keys?.contains(r'public') ?? false))
        r'public': public,
    };
  }
}
