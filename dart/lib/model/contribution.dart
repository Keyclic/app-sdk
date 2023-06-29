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
  static Contribution? fromJson(Map<String, dynamic>? json) {
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

    return Contribution(
      embedded: CheckpointEmbedded.fromJson(json[r'_embedded']),
      links: ContributionLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
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

  static List<Contribution> listFromJson(List<dynamic>? json) {
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

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
