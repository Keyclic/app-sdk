//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Contribution {
  /// Returns a new [Contribution] instance.
  Contribution({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Contribution] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Contribution? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return Contribution(
      embedded: CheckpointEmbedded.fromJson(json[r'_embedded']),
      links: ContributionLinks.fromJson(json[r'_links']),
      createdAt: mapToDateTime(json[r'createdAt']),
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: mapToDateTime(json[r'updatedAt']),
    );
  }

  CheckpointEmbedded? embedded;

  ContributionLinks? links;

  final DateTime? createdAt;

  final String? id;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Contribution &&
        other.embedded == embedded &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Contribution> listFromJson(Iterable? json) {
    if (json == null) {
      return <Contribution>[];
    }

    return json.fold(<Contribution>[],
        (List<Contribution> previousValue, element) {
      final Contribution? object = Contribution.fromJson(element);
      if (object is Contribution) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Contribution> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Contribution>{};
    }

    return json.entries.fold(<String, Contribution>{},
        (Map<String, Contribution> previousValue, element) {
      final Contribution? object = Contribution.fromJson(element.value);
      if (object is Contribution) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Contribution-objects as value to a dart map
  static Map<String, List<Contribution>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Contribution>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Contribution>>(
          key, Contribution.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Contribution[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

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
      if (keys == null || keys.contains(r'type')) r'type': type,
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
