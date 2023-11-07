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
  static Assignment? fromJson(Map<String, dynamic>? json) {
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

    return Assignment(
      embedded: json[r'_embedded'] is! Map
          ? null
          : AssignmentEmbedded.fromJson(json[r'_embedded']),
      links: json[r'_links'] is! Map
          ? null
          : AssignmentLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      outOfContract: json[r'outOfContract'],
      type: json[r'type'],
      updatedAt: updatedAt,
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

  static List<Assignment> listFromJson(Iterable<dynamic>? json) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && embedded != null) ||
          (keys?.contains(r'embedded') ?? false))
        r'_embedded': embedded?.toJson(),
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      if ((keys == null && outOfContract != null) ||
          (keys?.contains(r'outOfContract') ?? false))
        r'outOfContract': outOfContract,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
