//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Assignment {
  /// Returns a new [Assignment] instance.
  Assignment({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.outOfContract,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Assignment] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Assignment? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Assignment(
      embedded: AssignmentEmbedded.fromJson(json[r'_embedded']),
      links: AssignmentLinks.fromJson(json[r'_links']),
      createdAt: mapToDateTime(json[r'createdAt']),
      id: json[r'id'],
      outOfContract: json[r'outOfContract'],
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  AssignmentEmbedded? embedded;

  AssignmentLinks? links;

  final DateTime? createdAt;

  final String? id;

  bool? outOfContract;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Assignment &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.outOfContract == outOfContract &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (outOfContract == null ? 0 : outOfContract.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Assignment> listFromJson(Iterable? json) {
    if (json == null) {
      return <Assignment>[];
    }

    return json.fold(<Assignment>[], (List<Assignment> previousValue, element) {
      final Assignment? object = Assignment.fromJson(element);
      if (object is Assignment) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Assignment> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Assignment>{};
    }

    return json.entries.fold(<String, Assignment>{},
        (Map<String, Assignment> previousValue, element) {
      final Assignment? object = Assignment.fromJson(element.value);
      if (object is Assignment) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Assignment-objects as value to a dart map
  static Map<String, List<Assignment>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Assignment>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Assignment>>(
          key, Assignment.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Assignment[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, outOfContract=$outOfContract, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^embedded\.').hasMatch(key)))
        r'_embedded': embedded?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^embedded\.'))) {
            previousValue.add(element.split(RegExp(r'^embedded\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'outOfContract'))
        r'outOfContract': outOfContract,
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
