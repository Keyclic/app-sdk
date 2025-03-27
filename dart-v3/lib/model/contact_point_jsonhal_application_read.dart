//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class ContactPointJsonhalApplicationRead {
  /// Returns a new [ContactPointJsonhalApplicationRead] instance.
  ContactPointJsonhalApplicationRead({
    this.id,
    this.email,
    this.telephone,
    this.name,
    this.type,
  });

  /// Returns a new [ContactPointJsonhalApplicationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ContactPointJsonhalApplicationRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ContactPointJsonhalApplicationRead(
      id: json[r'id'],
      email: json[r'email'],
      telephone: json[r'telephone'],
      name: json[r'name'],
      type: json[r'type'],
    );
  }

  /// The resource identifier.
  final String? id;

  String? email;

  String? telephone;

  String? name;

  final String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ContactPointJsonhalApplicationRead &&
        other.id == id &&
        other.email == email &&
        other.telephone == telephone &&
        other.name == name &&
        other.type == type;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) +
      (email == null ? 0 : email.hashCode) +
      (telephone == null ? 0 : telephone.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (type == null ? 0 : type.hashCode);

  static List<ContactPointJsonhalApplicationRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <ContactPointJsonhalApplicationRead>[];
    }

    return json.fold(<ContactPointJsonhalApplicationRead>[],
        (List<ContactPointJsonhalApplicationRead> previousValue, element) {
      final ContactPointJsonhalApplicationRead? object =
          ContactPointJsonhalApplicationRead.fromJson(element);
      if (object is ContactPointJsonhalApplicationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ContactPointJsonhalApplicationRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ContactPointJsonhalApplicationRead>{};
    }

    return json.entries.fold(<String, ContactPointJsonhalApplicationRead>{},
        (Map<String, ContactPointJsonhalApplicationRead> previousValue,
            element) {
      final ContactPointJsonhalApplicationRead? object =
          ContactPointJsonhalApplicationRead.fromJson(element.value);
      if (object is ContactPointJsonhalApplicationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ContactPointJsonhalApplicationRead-objects as value to a dart map
  static Map<String, List<ContactPointJsonhalApplicationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ContactPointJsonhalApplicationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ContactPointJsonhalApplicationRead>>(
          key, ContactPointJsonhalApplicationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ContactPointJsonhalApplicationRead[id=$id, email=$email, telephone=$telephone, name=$name, type=$type]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'email')) r'email': email,
      if (keys == null || keys.contains(r'telephone')) r'telephone': telephone,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'type')) r'type': type,
    };
  }
}
