//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ServiceContactPoint {
  /// Returns a new [ServiceContactPoint] instance.
  ServiceContactPoint({
    this.description,
    this.email,
    this.familyName,
    this.givenName,
    this.isOpen,
    this.name,
    this.telephone,
  });

  /// Returns a new [ServiceContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ServiceContactPoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ServiceContactPoint(
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

    return other is ServiceContactPoint &&
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

  static List<ServiceContactPoint> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ServiceContactPoint>[];
    }
    return json
        .map((value) {
          return ServiceContactPoint.fromJson(value);
        })
        .whereType<ServiceContactPoint>()
        .toList();
  }

  static Map<String, ServiceContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ServiceContactPoint>{};
    }

    final map = json.map((key, value) => MapEntry<String, ServiceContactPoint?>(
        key, ServiceContactPoint.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, ServiceContactPoint>;
  }

  // maps a json object with a list of ServiceContactPoint-objects as value to a dart map
  static Map<String, List<ServiceContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<ServiceContactPoint>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: ServiceContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ServiceContactPoint[description=$description, email=$email, familyName=$familyName, givenName=$givenName, isOpen=$isOpen, name=$name, telephone=$telephone]';

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
