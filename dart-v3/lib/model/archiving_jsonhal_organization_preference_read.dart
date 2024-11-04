//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ArchivingJsonhalOrganizationPreferenceRead {
  /// Returns a new [ArchivingJsonhalOrganizationPreferenceRead] instance.
  ArchivingJsonhalOrganizationPreferenceRead({
    this.links,
    this.enabled,
  });

  /// Returns a new [ArchivingJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ArchivingJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ArchivingJsonhalOrganizationPreferenceRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
      enabled: json[r'enabled'],
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

  bool? enabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArchivingJsonhalOrganizationPreferenceRead &&
        other.links == links &&
        other.enabled == enabled;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (enabled == null ? 0 : enabled.hashCode);

  static List<ArchivingJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ArchivingJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<ArchivingJsonhalOrganizationPreferenceRead>[],
        (List<ArchivingJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ArchivingJsonhalOrganizationPreferenceRead? object =
          ArchivingJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is ArchivingJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ArchivingJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ArchivingJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries.fold(
        <String, ArchivingJsonhalOrganizationPreferenceRead>{},
        (Map<String, ArchivingJsonhalOrganizationPreferenceRead> previousValue,
            element) {
      final ArchivingJsonhalOrganizationPreferenceRead? object =
          ArchivingJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is ArchivingJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ArchivingJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ArchivingJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ArchivingJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ArchivingJsonhalOrganizationPreferenceRead>>(
          key, ArchivingJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ArchivingJsonhalOrganizationPreferenceRead[links=$links, enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
