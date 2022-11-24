//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class MemberPatch {
  /// Returns a new [MemberPatch] instance.
  MemberPatch({
    this.contactPoint,
    this.roles = const [],
  });

  /// Returns a new [MemberPatch] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory MemberPatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return MemberPatch(
      contactPoint: MemberPatchContactPoint.fromJson(json[r'contactPoint']),
      roles: List<String>.from(json[r'roles'] ?? []),
    );
  }

  MemberPatchContactPoint contactPoint;

  List<String> roles;

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

  static List<MemberPatch> listFromJson(List<dynamic> json) {
    return <MemberPatch>[
      if (json is List)
        for (dynamic value in json) MemberPatch.fromJson(value),
    ];
  }

  static Map<String, MemberPatch> mapFromJson(Map<String, dynamic> json) {
    return <String, MemberPatch>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberPatch.fromJson(entry.value),
    };
  }

  // maps a json object with a list of MemberPatch-objects as value to a dart map
  static Map<String, List<MemberPatch>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<MemberPatch>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: MemberPatch.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'MemberPatch[contactPoint=$contactPoint, roles=$roles]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (contactPoint != null) r'contactPoint': contactPoint,
      if (roles != null) r'roles': roles,
    };
  }
}
