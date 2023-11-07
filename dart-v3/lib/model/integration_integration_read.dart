//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationIntegrationRead {
  /// Returns a new [IntegrationIntegrationRead] instance.
  IntegrationIntegrationRead({
    this.inputs = const {},
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [IntegrationIntegrationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationIntegrationRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt =
        json[r'updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt != null && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return IntegrationIntegrationRead(
      inputs: json[r'inputs'] is! Map
          ? null
          : Map<String, Object>.from(json[r'inputs']),
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Map<String, Object>? inputs;

  /// The resource identifier.
  final String? id;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is IntegrationIntegrationRead &&
        DeepCollectionEquality.unordered().equals(inputs, other.inputs) &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (inputs == null ? 0 : inputs.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<IntegrationIntegrationRead> listFromJson(
      Iterable<dynamic>? json) {
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
      'IntegrationIntegrationRead[inputs=$inputs, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && inputs != null) ||
          (keys?.contains(r'inputs') ?? false))
        r'inputs': inputs,
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
