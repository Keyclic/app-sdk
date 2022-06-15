//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class MemberPatchContactPoint {
  /// Returns a new [MemberPatchContactPoint] instance.
  MemberPatchContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.givenName,
    this.telephone,
    this.name,
  });

  /// Returns a new [MemberPatchContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static MemberPatchContactPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return MemberPatchContactPoint(
      description: json[r'description'],
      email: json[r'email'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
      telephone: json[r'telephone'],
      name: json[r'name'],
    );
  }

  String? description;

  String? email;

  String? familyName;

  String? givenName;

  String? telephone;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberPatchContactPoint &&
        other.description == description &&
        other.email == email &&
        other.familyName == familyName &&
        other.givenName == givenName &&
        other.telephone == telephone &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<MemberPatchContactPoint> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <MemberPatchContactPoint>[];
    }
    return json
        .map((value) {
          return MemberPatchContactPoint.fromJson(value);
        })
        .whereType<MemberPatchContactPoint>()
        .toList();
  }

  static Map<String, MemberPatchContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, MemberPatchContactPoint>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, MemberPatchContactPoint?>(
            key, MemberPatchContactPoint.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, MemberPatchContactPoint>;
  }

  // maps a json object with a list of MemberPatchContactPoint-objects as value to a dart map
  static Map<String, List<MemberPatchContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<MemberPatchContactPoint>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: MemberPatchContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'MemberPatchContactPoint[description=$description, email=$email, familyName=$familyName, givenName=$givenName, telephone=$telephone, name=$name]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) r'description': description,
      if (email != null) r'email': email,
      if (familyName != null) r'familyName': familyName,
      if (givenName != null) r'givenName': givenName,
      if (telephone != null) r'telephone': telephone,
      if (name != null) r'name': name,
    };
  }
}
