//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationIntegrationRead {
  /// Returns a new [IntegrationIntegrationRead] instance.
  IntegrationIntegrationRead({
    this.connector,
    this.inputs,
    this.organization,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
  });

  /// Returns a new [IntegrationIntegrationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationIntegrationRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return IntegrationIntegrationRead(
      connector: json[r'connector'],
      inputs: json[r'inputs'] == null
          ? null
          : Map<String, Object?>.from(json[r'inputs']),
      organization: json[r'organization'],
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      name: json[r'name'],
    );
  }

  String? connector;

  Map<String, Object?>? inputs;

  String? organization;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationIntegrationRead &&
        other.connector == connector &&
        DeepCollectionEquality.unordered().equals(inputs, other.inputs) &&
        other.organization == organization &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (connector == null ? 0 : connector.hashCode) +
      (inputs == null ? 0 : inputs.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<IntegrationIntegrationRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <IntegrationIntegrationRead>[];
    }

    return json.fold(<IntegrationIntegrationRead>[],
        (List<IntegrationIntegrationRead> previousValue, element) {
      final IntegrationIntegrationRead? object =
          IntegrationIntegrationRead.fromJson(element);
      if (object is IntegrationIntegrationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationIntegrationRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationIntegrationRead>{};
    }

    return json.entries.fold(<String, IntegrationIntegrationRead>{},
        (Map<String, IntegrationIntegrationRead> previousValue, element) {
      final IntegrationIntegrationRead? object =
          IntegrationIntegrationRead.fromJson(element.value);
      if (object is IntegrationIntegrationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationIntegrationRead-objects as value to a dart map
  static Map<String, List<IntegrationIntegrationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationIntegrationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationIntegrationRead>>(
          key, IntegrationIntegrationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationIntegrationRead[connector=$connector, inputs=$inputs, organization=$organization, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'connector')) r'connector': connector,
      if (keys == null || keys.contains(r'inputs')) r'inputs': inputs,
      if (keys == null || keys.contains(r'organization'))
        r'organization': organization,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
