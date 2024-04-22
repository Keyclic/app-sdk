//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksMember {
  /// Returns a new [AssignmentLinksMember] instance.
  AssignmentLinksMember({
    this.href,
    this.iriTemplate,
  });

  /// Returns a new [AssignmentLinksMember] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksMember? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return AssignmentLinksMember(
      href: json[r'href'],
      iriTemplate:
          AssignmentLinksMemberIriTemplate.fromJson(json[r'iriTemplate']),
    );
  }

  /// The URI of the member associated to the given assignment.
  String? href;

  AssignmentLinksMemberIriTemplate? iriTemplate;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMember &&
        other.href == href &&
        other.iriTemplate == iriTemplate;
  }

  @override
  int get hashCode =>
      (href == null ? 0 : href.hashCode) +
      (iriTemplate == null ? 0 : iriTemplate.hashCode);

  static List<AssignmentLinksMember> listFromJson(Iterable? json) {
    if (json == null) {
      return <AssignmentLinksMember>[];
    }

    return json.fold(<AssignmentLinksMember>[],
        (List<AssignmentLinksMember> previousValue, element) {
      final AssignmentLinksMember? object =
          AssignmentLinksMember.fromJson(element);
      if (object is AssignmentLinksMember) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksMember> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksMember>{};
    }

    return json.entries.fold(<String, AssignmentLinksMember>{},
        (Map<String, AssignmentLinksMember> previousValue, element) {
      final AssignmentLinksMember? object =
          AssignmentLinksMember.fromJson(element.value);
      if (object is AssignmentLinksMember) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksMember-objects as value to a dart map
  static Map<String, List<AssignmentLinksMember>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksMember>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksMember>>(
          key, AssignmentLinksMember.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksMember[href=$href, iriTemplate=$iriTemplate]';

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
