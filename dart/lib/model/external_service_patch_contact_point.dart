//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ExternalServicePatchContactPoint {
  /// Returns a new [ExternalServicePatchContactPoint] instance.
  ExternalServicePatchContactPoint({
    this.email,
    this.name,
    this.telephone,
  });

  /// Returns a new [ExternalServicePatchContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ExternalServicePatchContactPoint? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ExternalServicePatchContactPoint(
      email: json[r'email'],
      name: json[r'name'],
      telephone: json[r'telephone'],
    );
  }

  String? email;

  String? name;

  String? telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServicePatchContactPoint &&
        other.email == email &&
        other.name == name &&
        other.telephone == telephone;
  }

  @override
  int get hashCode =>
      (email == null ? 0 : email.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<ExternalServicePatchContactPoint> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <ExternalServicePatchContactPoint>[];
    }
    return json
        .map((value) {
          return ExternalServicePatchContactPoint.fromJson(value);
        })
        .whereType<ExternalServicePatchContactPoint>()
        .toList();
  }

  static Map<String, ExternalServicePatchContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServicePatchContactPoint>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, ExternalServicePatchContactPoint?>(
            key, ExternalServicePatchContactPoint.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ExternalServicePatchContactPoint>;
  }

  // maps a json object with a list of ExternalServicePatchContactPoint-objects as value to a dart map
  static Map<String, List<ExternalServicePatchContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ExternalServicePatchContactPoint>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ExternalServicePatchContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServicePatchContactPoint[email=$email, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (email != null) r'email': email,
      if (name != null) r'name': name,
      if (telephone != null) r'telephone': telephone,
    };
  }
}
