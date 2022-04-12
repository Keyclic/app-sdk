//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ApplicationContactPoint {
  /// Returns a new [ApplicationContactPoint] instance.
  ApplicationContactPoint({
    this.email,
    this.id,
    this.name,
    this.telephone,
    this.type,
  });

  /// Returns a new [ApplicationContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ApplicationContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationContactPoint(
      email: json[r'email'],
      id: json[r'id'],
      name: json[r'name'],
      telephone: json[r'telephone'],
      type: json[r'type'],
    );
  }

  String email;

  String id;

  String name;

  String telephone;

  String type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationContactPoint &&
        other.email == email &&
        other.id == id &&
        other.name == name &&
        other.telephone == telephone &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (email == null ? 0 : email.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ApplicationContactPoint> listFromJson(List<dynamic> json) {
    return <ApplicationContactPoint>[
      if (json is List)
        for (dynamic value in json) ApplicationContactPoint.fromJson(value),
    ];
  }

  static Map<String, ApplicationContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ApplicationContactPoint>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationContactPoint.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ApplicationContactPoint-objects as value to a dart map
  static Map<String, List<ApplicationContactPoint>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ApplicationContactPoint>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ApplicationContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ApplicationContactPoint[email=$email, id=$id, name=$name, telephone=$telephone, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (email != null) r'email': email,
      if (id != null) r'id': id,
      if (name != null) r'name': name,
      if (telephone != null) r'telephone': telephone,
      if (type != null) r'type': type,
    };
  }
}
