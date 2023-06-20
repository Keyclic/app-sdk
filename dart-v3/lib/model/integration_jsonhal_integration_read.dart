//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationJsonhalIntegrationRead {
  /// Returns a new [IntegrationJsonhalIntegrationRead] instance.
  IntegrationJsonhalIntegrationRead({
    this.links,
    this.inputs = const {},
    this.id,
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [IntegrationJsonhalIntegrationRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationJsonhalIntegrationRead? fromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return IntegrationJsonhalIntegrationRead(
      links: AssetJsonhalReadLinks.fromJson(json[r'_links']),
      inputs: Map<String, Object>.from(json[r'inputs']),
      id: json[r'id'],
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AssetJsonhalReadLinks? links;

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

    return other is IntegrationJsonhalIntegrationRead &&
        other.links == links &&
        DeepCollectionEquality.unordered().equals(inputs, other.inputs) &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (inputs == null ? 0 : inputs.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<IntegrationJsonhalIntegrationRead> listFromJson(
      List<dynamic>? json) {
    if (json == null) {
      return <IntegrationJsonhalIntegrationRead>[];
    }

    return json.fold(<IntegrationJsonhalIntegrationRead>[],
        (List<IntegrationJsonhalIntegrationRead> previousValue, element) {
      final IntegrationJsonhalIntegrationRead? object =
          IntegrationJsonhalIntegrationRead.fromJson(element);
      if (object is IntegrationJsonhalIntegrationRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationJsonhalIntegrationRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationJsonhalIntegrationRead>{};
    }

    return json.entries.fold(<String, IntegrationJsonhalIntegrationRead>{},
        (Map<String, IntegrationJsonhalIntegrationRead> previousValue,
            element) {
      final IntegrationJsonhalIntegrationRead? object =
          IntegrationJsonhalIntegrationRead.fromJson(element.value);
      if (object is IntegrationJsonhalIntegrationRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationJsonhalIntegrationRead-objects as value to a dart map
  static Map<String, List<IntegrationJsonhalIntegrationRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationJsonhalIntegrationRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationJsonhalIntegrationRead>>(
          key, IntegrationJsonhalIntegrationRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationJsonhalIntegrationRead[links=$links, inputs=$inputs, id=$id, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (inputs != null) r'inputs': inputs,
      if (id != null) r'id': id,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
