//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class InternalServiceContactPoint {
  /// Returns a new [InternalServiceContactPoint] instance.
  InternalServiceContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.givenName,
    this.isOpen,
    this.name,
    this.telephone,
  });

  /// Returns a new [InternalServiceContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InternalServiceContactPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return InternalServiceContactPoint(
      description: json[r'description'],
      email: json[r'email'],
      familyName: json[r'familyName'],
      givenName: json[r'givenName'],
      isOpen: json[r'isOpen'],
      name: json[r'name'],
      telephone: json[r'telephone'],
    );
  }

  String? description;

  String? email;

  String? familyName;

  String? givenName;

  bool? isOpen;

  String? name;

  String? telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InternalServiceContactPoint &&
        other.description == description &&
        other.email == email &&
        other.familyName == familyName &&
        other.givenName == givenName &&
        other.isOpen == isOpen &&
        other.name == name &&
        other.telephone == telephone;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (familyName == null ? 0 : familyName.hashCode) +
      (givenName == null ? 0 : givenName.hashCode) +
      (isOpen == null ? 0 : isOpen.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<InternalServiceContactPoint> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <InternalServiceContactPoint>[];
    }
    return json
        .map((value) {
          return InternalServiceContactPoint.fromJson(value);
        })
        .whereType<InternalServiceContactPoint>()
        .toList();
  }

  static Map<String, InternalServiceContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, InternalServiceContactPoint>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, InternalServiceContactPoint?>(
            key, InternalServiceContactPoint.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, InternalServiceContactPoint>;
  }

  // maps a json object with a list of InternalServiceContactPoint-objects as value to a dart map
  static Map<String, List<InternalServiceContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<InternalServiceContactPoint>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: InternalServiceContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'InternalServiceContactPoint[description=$description, email=$email, familyName=$familyName, givenName=$givenName, isOpen=$isOpen, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) r'description': description,
      if (email != null) r'email': email,
      if (familyName != null) r'familyName': familyName,
      if (givenName != null) r'givenName': givenName,
      if (isOpen != null) r'isOpen': isOpen,
      if (name != null) r'name': name,
      if (telephone != null) r'telephone': telephone,
    };
  }
}
