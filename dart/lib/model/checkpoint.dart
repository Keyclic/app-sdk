//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Checkpoint {
  /// Returns a new [Checkpoint] instance.
  Checkpoint({
    this.createdAt,
    this.data,
    this.state = const [],
    this.links,
    this.embedded,
  });

  /// Returns a new [Checkpoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Checkpoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt = DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    return Checkpoint(
      createdAt: createdAt,
      data: CheckpointState.fromJson(json[r'data']),
      state: List<String>.from(json[r'state'] ?? []),
      links: CheckpointLinks.fromJson(json[r'_links']),
      embedded: CheckpointEmbedded.fromJson(json[r'_embedded']),
    );
  }

  final DateTime? createdAt;

  CheckpointState? data;

  List<String>? state;

  CheckpointLinks? links;

  CheckpointEmbedded? embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Checkpoint &&
        other.createdAt == createdAt &&
        other.data == data &&
        DeepCollectionEquality.unordered().equals(state, other.state) &&
        other.links == links &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      (createdAt == null ? 0 : createdAt.hashCode) +
      (data == null ? 0 : data.hashCode) +
      (state == null ? 0 : state.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (embedded == null ? 0 : embedded.hashCode);

  static List<Checkpoint> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Checkpoint>[];
    }
    return json
        .map((value) {
          return Checkpoint.fromJson(value);
        })
        .whereType<Checkpoint>()
        .toList();
  }

  static Map<String, Checkpoint> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Checkpoint>{};
    }

    final map = json.map((key, value) =>
        MapEntry<String, Checkpoint?>(key, Checkpoint.fromJson(value)))
      ..removeWhere((_, value) => value != null);

    return map as Map<String, Checkpoint>;
  }

  // maps a json object with a list of Checkpoint-objects as value to a dart map
  static Map<String, List<Checkpoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    return <String, List<Checkpoint>>{
      if (json is Map)
        for (final entry in json!.entries)
          entry.key: Checkpoint.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Checkpoint[createdAt=$createdAt, data=$data, state=$state, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (data != null) r'data': data,
      if (state != null) r'state': state,
      if (links != null) r'_links': links,
      if (embedded != null) r'_embedded': embedded,
    };
  }
}
