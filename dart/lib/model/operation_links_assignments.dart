//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinksAssignments {
  /// Returns a new [OperationLinksAssignments] instance.
  OperationLinksAssignments({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksAssignments] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinksAssignments.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignments(
      href: json[r'href'],
      iriTemplate:
          OperationLinksAssignmentsIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the assignments associated to the given operation.
  String href;

  OperationLinksAssignmentsIriTemplate iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksAssignments &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<OperationLinksAssignments> listFromJson(List<dynamic> json) {
    return <OperationLinksAssignments>[
      if (json is List)
        for (dynamic value in json) OperationLinksAssignments.fromJson(value),
    ];
  }

  static Map<String, OperationLinksAssignments> mapFromJson(
      Map<String, dynamic> json) {
    return <String, OperationLinksAssignments>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksAssignments.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinksAssignments-objects as value to a dart map
  static Map<String, List<OperationLinksAssignments>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinksAssignments>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinksAssignments.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinksAssignments[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (href != null) r'href': href,
      if (iriTemplate != null) r'iriTemplate': iriTemplate,
    };
  }
}
