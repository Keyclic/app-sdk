//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TargetGroupRead {
  /// Returns a new [TargetGroupRead] instance.
  TargetGroupRead({
    this.description,
    this.id,
    this.name,
  });

  /// Returns a new [TargetGroupRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TargetGroupRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TargetGroupRead(
      description: json[r'description'],
      id: json[r'id'],
      name: json[r'name'],
    );
  }

  final String? description;

  String? id;

  String? name;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TargetGroupRead &&
        other.description == description &&
        other.id == id &&
        other.name == name;
  }

  @override
  int get hashCode =>
      (description == null ? 0 : description.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (name == null ? 0 : name.hashCode);

  static List<TargetGroupRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <TargetGroupRead>[];
    }

    return json.fold(<TargetGroupRead>[],
        (List<TargetGroupRead> previousValue, element) {
      final TargetGroupRead? object = TargetGroupRead.fromJson(element);
      if (object is TargetGroupRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TargetGroupRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TargetGroupRead>{};
    }

    return json.entries.fold(<String, TargetGroupRead>{},
        (Map<String, TargetGroupRead> previousValue, element) {
      final TargetGroupRead? object = TargetGroupRead.fromJson(element.value);
      if (object is TargetGroupRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TargetGroupRead-objects as value to a dart map
  static Map<String, List<TargetGroupRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TargetGroupRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TargetGroupRead>>(
          key, TargetGroupRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TargetGroupRead[description=$description, id=$id, name=$name]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'name')) r'name': name,
    };
  }
}
