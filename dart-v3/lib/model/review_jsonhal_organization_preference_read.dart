//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewJsonhalOrganizationPreferenceRead {
  /// Returns a new [ReviewJsonhalOrganizationPreferenceRead] instance.
  ReviewJsonhalOrganizationPreferenceRead({
    this.links,
    this.enabled,
  });

  /// Returns a new [ReviewJsonhalOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewJsonhalOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewJsonhalOrganizationPreferenceRead(
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

    return other is ReviewJsonhalOrganizationPreferenceRead &&
        other.links == links &&
        other.enabled == enabled;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (enabled == null ? 0 : enabled.hashCode);

  static List<ReviewJsonhalOrganizationPreferenceRead> listFromJson(
      Iterable? json) {
    if (json == null) {
      return <ReviewJsonhalOrganizationPreferenceRead>[];
    }

    return json.fold(<ReviewJsonhalOrganizationPreferenceRead>[],
        (List<ReviewJsonhalOrganizationPreferenceRead> previousValue, element) {
      final ReviewJsonhalOrganizationPreferenceRead? object =
          ReviewJsonhalOrganizationPreferenceRead.fromJson(element);
      if (object is ReviewJsonhalOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewJsonhalOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewJsonhalOrganizationPreferenceRead>{};
    }

    return json.entries
        .fold(<String, ReviewJsonhalOrganizationPreferenceRead>{},
            (Map<String, ReviewJsonhalOrganizationPreferenceRead> previousValue,
                element) {
      final ReviewJsonhalOrganizationPreferenceRead? object =
          ReviewJsonhalOrganizationPreferenceRead.fromJson(element.value);
      if (object is ReviewJsonhalOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewJsonhalOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ReviewJsonhalOrganizationPreferenceRead>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewJsonhalOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewJsonhalOrganizationPreferenceRead>>(
          key, ReviewJsonhalOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReviewJsonhalOrganizationPreferenceRead[links=$links, enabled=$enabled]';

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
