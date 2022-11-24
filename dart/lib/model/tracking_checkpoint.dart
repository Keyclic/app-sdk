//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class TrackingCheckpoint {
  /// Returns a new [TrackingCheckpoint] instance.
  TrackingCheckpoint({
    this.createdAt,
    this.data,
    this.state = const [],
    this.links,
    this.embedded,
  });

  /// Returns a new [TrackingCheckpoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TrackingCheckpoint? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    return TrackingCheckpoint(
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

    return other is TrackingCheckpoint &&
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

  static List<TrackingCheckpoint> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TrackingCheckpoint>[];
    }

    return json.fold(<TrackingCheckpoint>[],
        (List<TrackingCheckpoint> previousValue, element) {
      final TrackingCheckpoint? object = TrackingCheckpoint.fromJson(element);
      if (object is TrackingCheckpoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TrackingCheckpoint> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TrackingCheckpoint>{};
    }

    return json.entries.fold(<String, TrackingCheckpoint>{},
        (Map<String, TrackingCheckpoint> previousValue, element) {
      final TrackingCheckpoint? object =
          TrackingCheckpoint.fromJson(element.value);
      if (object is TrackingCheckpoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TrackingCheckpoint-objects as value to a dart map
  static Map<String, List<TrackingCheckpoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TrackingCheckpoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TrackingCheckpoint>>(
          key, TrackingCheckpoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TrackingCheckpoint[createdAt=$createdAt, data=$data, state=$state, links=$links, embedded=$embedded]';

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
