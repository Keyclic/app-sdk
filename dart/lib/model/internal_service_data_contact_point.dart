//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceDataContactPoint {
  /// Returns a new [InternalServiceDataContactPoint] instance.
  InternalServiceDataContactPoint({
    this.description,
    this.email,
    this.name,
    this.telephone,
  });

  /// Returns a new [InternalServiceDataContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceDataContactPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceDataContactPoint(
      description: json[r'description'],
      email: json[r'email'],
      name: json[r'name'],
      telephone: json[r'telephone'],
    );
  }

  String? description;

  String? email;

  String? name;

  String? telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceDataContactPoint &&
        other.description == description &&
        other.email == email &&
        other.name == name &&
        other.telephone == telephone;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<InternalServiceDataContactPoint> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceDataContactPoint>[];
    }
    return json
        .map((value) {
          return InternalServiceDataContactPoint.fromJson(value);
        })
        .whereType<InternalServiceDataContactPoint>()
        .toList();
  }

  static Map<String, InternalServiceDataContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceDataContactPoint>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InternalServiceDataContactPoint?>(
            key, InternalServiceDataContactPoint.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InternalServiceDataContactPoint>;
  }

  // maps a json object with a list of InternalServiceDataContactPoint-objects as value to a dart map
  static Map<String, List<InternalServiceDataContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InternalServiceDataContactPoint>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InternalServiceDataContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceDataContactPoint[description=$description, email=$email, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) r'description': description,
      if (email != null) r'email': email,
      if (name != null) r'name': name,
      if (telephone != null) r'telephone': telephone,
    };
  }
}
