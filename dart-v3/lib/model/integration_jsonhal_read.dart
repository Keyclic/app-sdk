//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class IntegrationJsonhalRead {
  /// Returns a new [IntegrationJsonhalRead] instance.
  IntegrationJsonhalRead({
    this.links,
    this.inputs,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.name,
  });

  /// Returns a new [IntegrationJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static IntegrationJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return IntegrationJsonhalRead(
      links: IntegrationJsonhalReadLinks.fromJson(json[r'_links']),
      inputs: json[r'inputs'] == null
          ? null
          : Map<String, Object?>.from(json[r'inputs']),
      id: json[r'id'],
      createdAt: mapToDateTime(json[r'createdAt']),
      updatedAt: mapToDateTime(json[r'updatedAt']),
      name: json[r'name'],
    );
  }

  IntegrationJsonhalReadLinks? links;

  Map<String, Object?>? inputs;

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

    return other is IntegrationJsonhalRead &&
        other.links == links &&
        DeepCollectionEquality.unordered().equals(inputs, other.inputs) &&
        other.id == id &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (inputs == null ? 0 : inputs.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<IntegrationJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <IntegrationJsonhalRead>[];
    }

    return json.fold(<IntegrationJsonhalRead>[],
        (List<IntegrationJsonhalRead> previousValue, element) {
      final IntegrationJsonhalRead? object =
          IntegrationJsonhalRead.fromJson(element);
      if (object is IntegrationJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, IntegrationJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, IntegrationJsonhalRead>{};
    }

    return json.entries.fold(<String, IntegrationJsonhalRead>{},
        (Map<String, IntegrationJsonhalRead> previousValue, element) {
      final IntegrationJsonhalRead? object =
          IntegrationJsonhalRead.fromJson(element.value);
      if (object is IntegrationJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of IntegrationJsonhalRead-objects as value to a dart map
  static Map<String, List<IntegrationJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<IntegrationJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<IntegrationJsonhalRead>>(
          key, IntegrationJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'IntegrationJsonhalRead[links=$links, inputs=$inputs, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'inputs')) r'inputs': inputs,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
