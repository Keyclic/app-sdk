//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksOrganization {
  /// Returns a new [OperationLinksOrganization] instance.
  OperationLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksOrganization] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksOrganization? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksOrganization(
      href: json[r'href'],
      iriTemplate:
          OperationLinksOrganizationIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the organization associated to the given operation.
  String? href;

  OperationLinksOrganizationIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksOrganization &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksOrganization> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinksOrganization>[];
    }

    return json.fold(<OperationLinksOrganization>[],
        (List<OperationLinksOrganization> previousValue, element) {
      final OperationLinksOrganization? object =
          OperationLinksOrganization.fromJson(element);
      if (object is OperationLinksOrganization) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksOrganization> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksOrganization>{};
    }

    return json.entries.fold(<String, OperationLinksOrganization>{},
        (Map<String, OperationLinksOrganization> previousValue, element) {
      final OperationLinksOrganization? object =
          OperationLinksOrganization.fromJson(element.value);
      if (object is OperationLinksOrganization) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksOrganization-objects as value to a dart map
  static Map<String, List<OperationLinksOrganization>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksOrganization>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksOrganization>>(
          key, OperationLinksOrganization.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksOrganization[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
