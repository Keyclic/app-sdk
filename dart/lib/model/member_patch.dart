//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberPatch {
  /// Returns a new [MemberPatch] instance.
  MemberPatch({
    this.contactPoint,
    this.roles,
  });

  /// Returns a new [MemberPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberPatch? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberPatch(
      contactPoint: json[r'contactPoint'] is! Map
          ? null
          : MemberPatchContactPoint.fromJson(json[r'contactPoint']),
      roles: json[r'roles'] == null ? null : List<String>.from(json[r'roles']),
    );
  }

  MemberPatchContactPoint? contactPoint;

  List<String>? roles;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPatch &&
        other.contactPoint == contactPoint &&
        DeepCollectionEquality.unordered().equals(roles, other.roles);
  }

  @override
  int get hashCode =>
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (roles == null ? 0 : roles.hashCode);

  static List<MemberPatch> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberPatch>[];
    }

    return json.fold(<MemberPatch>[],
        (List<MemberPatch> previousValue, element) {
      final MemberPatch? object = MemberPatch.fromJson(element);
      if (object is MemberPatch) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, MemberPatch> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberPatch>{};
    }

    return json.entries.fold(<String, MemberPatch>{},
        (Map<String, MemberPatch> previousValue, element) {
      final MemberPatch? object = MemberPatch.fromJson(element.value);
      if (object is MemberPatch) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of MemberPatch-objects as value to a dart map
  static Map<String, List<MemberPatch>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<MemberPatch>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<MemberPatch>>(
          key, MemberPatch.listFromJson(value));
    });
  }

  @override
  String toString() => 'MemberPatch[contactPoint=$contactPoint, roles=$roles]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && contactPoint != null) ||
          (keys?.contains(r'contactPoint') ?? false))
        r'contactPoint': contactPoint?.toJson(),
      if ((keys == null && roles != null) ||
          (keys?.contains(r'roles') ?? false))
        r'roles': roles,
    };
  }
}
