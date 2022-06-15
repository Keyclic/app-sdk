//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Dispatcher {
  /// Returns a new [Dispatcher] instance.
  Dispatcher({
    this.id,
    this.type,
  });

  /// Returns a new [Dispatcher] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Dispatcher? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return Dispatcher(
      id: json[r'id'],
      type: json[r'type'],
    );
  }

  final String? id;

  String? type;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Dispatcher && other.id == id && other.type == type;
  }

  @override
  int get hashCode =>
      (id == null ? 0 : id.hashCode) + (type == null ? 0 : type.hashCode);

  static List<Dispatcher> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Dispatcher>[];
    }
    return json
        .map((value) {
          return Dispatcher.fromJson(value);
        })
        .whereType<Dispatcher>()
        .toList();
  }

  static Map<String, Dispatcher> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Dispatcher>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Dispatcher?>(key, Dispatcher.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Dispatcher>;
  }

  // maps a json object with a list of Dispatcher-objects as value to a dart map
  static Map<String, List<Dispatcher>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Dispatcher>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Dispatcher.listFromJson(entry.value),
    };
  }

  @override
  String toString() => 'Dispatcher[id=$id, type=$type]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (id != null) r'id': id,
      if (type != null) r'type': type,
    };
  }
}
