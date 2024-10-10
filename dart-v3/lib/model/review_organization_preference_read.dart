//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ReviewOrganizationPreferenceRead {
  /// Returns a new [ReviewOrganizationPreferenceRead] instance.
  ReviewOrganizationPreferenceRead({
    this.enabled,
  });

  /// Returns a new [ReviewOrganizationPreferenceRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReviewOrganizationPreferenceRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReviewOrganizationPreferenceRead(
      enabled: json[r'enabled'],
    );
  }

  bool? enabled;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewOrganizationPreferenceRead &&
        other.enabled == enabled;
  }

  @override
  int get hashCode => (enabled == null ? 0 : enabled.hashCode);

  static List<ReviewOrganizationPreferenceRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ReviewOrganizationPreferenceRead>[];
    }

    return json.fold(<ReviewOrganizationPreferenceRead>[],
        (List<ReviewOrganizationPreferenceRead> previousValue, element) {
      final ReviewOrganizationPreferenceRead? object =
          ReviewOrganizationPreferenceRead.fromJson(element);
      if (object is ReviewOrganizationPreferenceRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReviewOrganizationPreferenceRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReviewOrganizationPreferenceRead>{};
    }

    return json.entries.fold(<String, ReviewOrganizationPreferenceRead>{},
        (Map<String, ReviewOrganizationPreferenceRead> previousValue, element) {
      final ReviewOrganizationPreferenceRead? object =
          ReviewOrganizationPreferenceRead.fromJson(element.value);
      if (object is ReviewOrganizationPreferenceRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReviewOrganizationPreferenceRead-objects as value to a dart map
  static Map<String, List<ReviewOrganizationPreferenceRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReviewOrganizationPreferenceRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReviewOrganizationPreferenceRead>>(
          key, ReviewOrganizationPreferenceRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'ReviewOrganizationPreferenceRead[enabled=$enabled]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'enabled')) r'enabled': enabled,
    };
  }
}
