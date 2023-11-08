//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinksAssignments {
  /// Returns a new [OperationLinksAssignments] instance.
  OperationLinksAssignments({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [OperationLinksAssignments] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinksAssignments? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinksAssignments(
      href: json[r'href'],
      iriTemplate: json[r'iriTemplate'] is! Map
          ? null
          : OperationLinksAssignmentsIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the assignments associated to the given operation.
  String? href;

  OperationLinksAssignmentsIriTemplate? iriTemplate;

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

  static List<OperationLinksAssignments> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <OperationLinksAssignments>[];
    }

    return json.fold(<OperationLinksAssignments>[],
        (List<OperationLinksAssignments> previousValue, element) {
      final OperationLinksAssignments? object =
          OperationLinksAssignments.fromJson(element);
      if (object is OperationLinksAssignments) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinksAssignments> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinksAssignments>{};
    }

    return json.entries.fold(<String, OperationLinksAssignments>{},
        (Map<String, OperationLinksAssignments> previousValue, element) {
      final OperationLinksAssignments? object =
          OperationLinksAssignments.fromJson(element.value);
      if (object is OperationLinksAssignments) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinksAssignments-objects as value to a dart map
  static Map<String, List<OperationLinksAssignments>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinksAssignments>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinksAssignments>>(
          key, OperationLinksAssignments.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinksAssignments[href=$href, iriTemplate=$iriTemplate]';

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
