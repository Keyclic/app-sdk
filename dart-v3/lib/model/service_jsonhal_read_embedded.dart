//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ServiceJsonhalReadEmbedded {
  /// Returns a new [ServiceJsonhalReadEmbedded] instance.
  ServiceJsonhalReadEmbedded({
    this.provider,
    this.manager,
    this.organization,
  });

  /// Returns a new [ServiceJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ServiceJsonhalReadEmbedded(
      provider: OrganizationJsonhalRead.fromJson(json[r'provider']),
      manager: CollaboratorJsonhalRead.fromJson(json[r'manager']),
      organization: OrganizationJsonhalRead.fromJson(json[r'organization']),
    );
  }

  OrganizationJsonhalRead? provider;

  CollaboratorJsonhalRead? manager;

  OrganizationJsonhalRead? organization;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ServiceJsonhalReadEmbedded &&
        other.provider == provider &&
        other.manager == manager &&
        other.organization == organization;
  }

  @override
  int get hashCode =>
      (provider == null ? 0 : provider.hashCode) +
      (manager == null ? 0 : manager.hashCode) +
      (organization == null ? 0 : organization.hashCode);

  static List<ServiceJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <ServiceJsonhalReadEmbedded>[];
    }

    return json.fold(<ServiceJsonhalReadEmbedded>[],
        (List<ServiceJsonhalReadEmbedded> previousValue, element) {
      final ServiceJsonhalReadEmbedded? object =
          ServiceJsonhalReadEmbedded.fromJson(element);
      if (object is ServiceJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ServiceJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, ServiceJsonhalReadEmbedded>{},
        (Map<String, ServiceJsonhalReadEmbedded> previousValue, element) {
      final ServiceJsonhalReadEmbedded? object =
          ServiceJsonhalReadEmbedded.fromJson(element.value);
      if (object is ServiceJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ServiceJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<ServiceJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ServiceJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ServiceJsonhalReadEmbedded>>(
          key, ServiceJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ServiceJsonhalReadEmbedded[provider=$provider, manager=$manager, organization=$organization]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^provider\.').hasMatch(key)))
        r'provider': provider?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^provider\.'))) {
            previousValue.add(element.split(RegExp(r'^provider\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^manager\.').hasMatch(key)))
        r'manager': manager?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^manager\.'))) {
            previousValue.add(element.split(RegExp(r'^manager\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
