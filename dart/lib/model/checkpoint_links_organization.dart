//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class CheckpointLinksOrganization {
  /// Returns a new [CheckpointLinksOrganization] instance.
  CheckpointLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [CheckpointLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CheckpointLinksOrganization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return CheckpointLinksOrganization(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : CheckpointLinksOrganizationIriTemplate.fromJson(
              json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given checkpoint.
  String? href;

  CheckpointLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is CheckpointLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<CheckpointLinksOrganization> listFromJson(
      Iterable<dynamic>? json) {
    if (json == null) {
      return <CheckpointLinksOrganization>[];
    }

    return json.fold(<CheckpointLinksOrganization>[],
        (List<CheckpointLinksOrganization> previousValue, element) {
      final CheckpointLinksOrganization? object =
          CheckpointLinksOrganization.fromJson(element);
      if (object is CheckpointLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, CheckpointLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, CheckpointLinksOrganization>{};
    }

    return json.entries.fold(<String, CheckpointLinksOrganization>{},
        (Map<String, CheckpointLinksOrganization> previousValue, element) {
      final CheckpointLinksOrganization? object =
          CheckpointLinksOrganization.fromJson(element.value);
      if (object is CheckpointLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of CheckpointLinksOrganization-objects as value to a dart map
  static Map<String, List<CheckpointLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<CheckpointLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<CheckpointLinksOrganization>>(
          key, CheckpointLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'CheckpointLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && href != null) || (keys?.contains(r'href') ?? false))
        r'href': href,
      if ((keys == null && iriTemplate != null) ||
          (keys?.contains(r'iriTemplate') ?? false))
        r'iriTemplate': iriTemplate?.toJson(),
    };
  }
}
