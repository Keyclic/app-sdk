//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ExternalServiceContactPoint {
  /// Returns a new [ExternalServiceContactPoint] instance.
  ExternalServiceContactPoint({
    this.description,
    this.email,
    this.isOpen,
    this.name,
    this.telephone,
  });

  /// Returns a new [ExternalServiceContactPoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ExternalServiceContactPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ExternalServiceContactPoint(
      description: json[r'description'],
      email: json[r'email'],
      isOpen: json[r'isOpen'],
      name: json[r'name'],
      telephone: json[r'telephone'],
    );
  }

  String description;

  String email;

  bool isOpen;

  String name;

  String telephone;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ExternalServiceContactPoint &&
        other.description == description &&
        other.email == email &&
        other.isOpen == isOpen &&
        other.name == name &&
        other.telephone == telephone;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (isOpen == null ? 0 : isOpen.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (telephone == null ? 0 : telephone.hashCode);

  static List<ExternalServiceContactPoint> listFromJson(List<dynamic> json) {
    return <ExternalServiceContactPoint>[
      if (json is List)
        for (dynamic value in json) ExternalServiceContactPoint.fromJson(value),
    ];
  }

  static Map<String, ExternalServiceContactPoint> mapFromJson(
      Map<String, dynamic> json) {
    return <String, ExternalServiceContactPoint>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceContactPoint.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ExternalServiceContactPoint-objects as value to a dart map
  static Map<String, List<ExternalServiceContactPoint>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ExternalServiceContactPoint>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ExternalServiceContactPoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ExternalServiceContactPoint[description=$description, email=$email, isOpen=$isOpen, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (description != null) r'description': description,
      if (email != null) r'email': email,
      if (isOpen != null) r'isOpen': isOpen,
      if (name != null) r'name': name,
      if (telephone != null) r'telephone': telephone,
    };
  }
}
