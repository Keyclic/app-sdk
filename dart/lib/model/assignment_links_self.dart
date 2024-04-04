//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksSelf {
  /// Returns a new [AssignmentLinksSelf] instance.
  AssignmentLinksSelf({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [AssignmentLinksSelf] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksSelf? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentLinksSelf(
      href: json[r'href'],
      iriTemplate:
          AssignmentLinksSelfIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the self associated to the given assignment.
  String? href;

  AssignmentLinksSelfIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksSelf &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<AssignmentLinksSelf> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksSelf>[];
    }

    return json.fold(<AssignmentLinksSelf>[],
        (List<AssignmentLinksSelf> previousValue, element) {
      final AssignmentLinksSelf? object = AssignmentLinksSelf.fromJson(element);
      if (object is AssignmentLinksSelf) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksSelf> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksSelf>{};
    }

    return json.entries.fold(<String, AssignmentLinksSelf>{},
        (Map<String, AssignmentLinksSelf> previousValue, element) {
      final AssignmentLinksSelf? object =
          AssignmentLinksSelf.fromJson(element.value);
      if (object is AssignmentLinksSelf) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksSelf-objects as value to a dart map
  static Map<String, List<AssignmentLinksSelf>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksSelf>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksSelf>>(
          key, AssignmentLinksSelf.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksSelf[href=$href, iriTemplate=$iriTemplate]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'href')) r'href': href,
      if (keys == null ||
          keys.any((key) => RegExp(r'^iriTemplate\.').hasMatch(key)))
        r'iriTemplate': iriTemplate?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^iriTemplate\.'))) {
            previousValue.add(element.split(RegExp(r'^iriTemplate\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
