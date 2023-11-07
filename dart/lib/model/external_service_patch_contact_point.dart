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
      Iterable<dynamic>? json) {
    if (json == null) {
      return <ExternalServicePatchContactPoint>[];
    }

    return json.fold(<ExternalServicePatchContactPoint>[],
        (List<ExternalServicePatchContactPoint> previousValue, element) {
      final ExternalServicePatchContactPoint? object =
          ExternalServicePatchContactPoint.fromJson(element);
      if (object is ExternalServicePatchContactPoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ExternalServicePatchContactPoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ExternalServicePatchContactPoint>{};
    }

    return json.entries.fold(<String, ExternalServicePatchContactPoint>{},
        (Map<String, ExternalServicePatchContactPoint> previousValue, element) {
      final ExternalServicePatchContactPoint? object =
          ExternalServicePatchContactPoint.fromJson(element.value);
      if (object is ExternalServicePatchContactPoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ExternalServicePatchContactPoint-objects as value to a dart map
  static Map<String, List<ExternalServicePatchContactPoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ExternalServicePatchContactPoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ExternalServicePatchContactPoint>>(
          key, ExternalServicePatchContactPoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ExternalServicePatchContactPoint[email=$email, name=$name, telephone=$telephone]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && email != null) ||
          (keys?.contains(r'email') ?? false))
        r'email': email,
      if ((keys == null && name != null) || (keys?.contains(r'name') ?? false))
        r'name': name,
      if ((keys == null && telephone != null) ||
          (keys?.contains(r'telephone') ?? false))
        r'telephone': telephone,
    };
  }
}
