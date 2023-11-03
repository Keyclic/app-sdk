//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class AssignmentLinksMemberIriTemplateMapping {
  /// Returns a new [AssignmentLinksMemberIriTemplateMapping] instance.
  AssignmentLinksMemberIriTemplateMapping({
    this.member,
  });

  /// Returns a new [AssignmentLinksMemberIriTemplateMapping] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static AssignmentLinksMemberIriTemplateMapping? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksMemberIriTemplateMapping(
      member: json[r'member'],
    );
  }

  String? member;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksMemberIriTemplateMapping &&
        other.member == member;
  }

  @override
  int get hashCode => (member == null ? 0 : member.hashCode);

  static List<AssignmentLinksMemberIriTemplateMapping> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <AssignmentLinksMemberIriTemplateMapping>[];
    }

    return json.fold(<AssignmentLinksMemberIriTemplateMapping>[],
        (List<AssignmentLinksMemberIriTemplateMapping> previousValue, element) {
      final AssignmentLinksMemberIriTemplateMapping? object =
          AssignmentLinksMemberIriTemplateMapping.fromJson(element);
      if (object is AssignmentLinksMemberIriTemplateMapping) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, AssignmentLinksMemberIriTemplateMapping> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, AssignmentLinksMemberIriTemplateMapping>{};
    }

    return json.entries
        .fold(<String, AssignmentLinksMemberIriTemplateMapping>{},
            (Map<String, AssignmentLinksMemberIriTemplateMapping> previousValue,
                element) {
      final AssignmentLinksMemberIriTemplateMapping? object =
          AssignmentLinksMemberIriTemplateMapping.fromJson(element.value);
      if (object is AssignmentLinksMemberIriTemplateMapping) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of AssignmentLinksMemberIriTemplateMapping-objects as value to a dart map
  static Map<String, List<AssignmentLinksMemberIriTemplateMapping>>
      mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<AssignmentLinksMemberIriTemplateMapping>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<AssignmentLinksMemberIriTemplateMapping>>(
          key, AssignmentLinksMemberIriTemplateMapping.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'AssignmentLinksMemberIriTemplateMapping[member=$member]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && member != null) ||
          (keys?.contains(r'member') ?? false))
        r'member': member,
    };
  }
}
