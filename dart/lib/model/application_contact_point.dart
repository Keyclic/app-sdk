//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

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
  static ApplicationContactPoint? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

  String? email;

  final String? id;

  String? name;

  String? telephone;

  String? type;

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

  static List<ApplicationContactPoint> listFromJson(Iterable? json) {
    if (json == null) {
      return <ApplicationContactPoint>[];
    }

    return json.fold(<ApplicationContactPoint>[],
        (List<ApplicationContactPoint> previousValue, element) {
      final ApplicationContactPoint? object =
          ApplicationContactPoint.fromJson(element);
      if (object is ApplicationContactPoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ApplicationContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ApplicationContactPoint>{};
    }

    return json.entries.fold(<String, ApplicationContactPoint>{},
        (Map<String, ApplicationContactPoint> previousValue, element) {
      final ApplicationContactPoint? object =
          ApplicationContactPoint.fromJson(element.value);
      if (object is ApplicationContactPoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ApplicationContactPoint-objects as value to a dart map
  static Map<String, List<ApplicationContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ApplicationContactPoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ApplicationContactPoint>>(
          key, ApplicationContactPoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ApplicationContactPoint[email=$email, id=$id, name=$name, telephone=$telephone, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
