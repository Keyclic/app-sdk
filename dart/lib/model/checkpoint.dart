//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Checkpoint {
  /// Returns a new [Checkpoint] instance.
  Checkpoint({
    this.createdAt,
    this.data,
    this.state,
    this.links,
    this.embedded,
  });

  /// Returns a new [Checkpoint] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Checkpoint? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? createdAt =
        json[r'createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt != null && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    return Checkpoint(
      createdAt: createdAt,
      data: CheckpointState.fromJson(json[r'data']),
      state: json[r'state'] == null ? null : List<String>.from(json[r'state']),
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

    return json.fold(<Checkpoint>[], (List<Checkpoint> previousValue, element) {
      final Checkpoint? object = Checkpoint.fromJson(element);
      if (object is Checkpoint) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Checkpoint> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Checkpoint>{};
    }

    return json.entries.fold(<String, Checkpoint>{},
        (Map<String, Checkpoint> previousValue, element) {
      final Checkpoint? object = Checkpoint.fromJson(element.value);
      if (object is Checkpoint) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Checkpoint-objects as value to a dart map
  static Map<String, List<Checkpoint>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Checkpoint>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Checkpoint>>(
          key, Checkpoint.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Checkpoint[createdAt=$createdAt, data=$data, state=$state, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.any((key) => RegExp(r'^data\.').hasMatch(key)))
        r'data': data?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^data\.'))) {
            previousValue.add(element.split(RegExp(r'^data\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'state')) r'state': state,
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
