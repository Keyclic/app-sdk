//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class Member {
  /// Returns a new [Member] instance.
  Member({
    this.embedded,
    this.links,
    this.contactPoint,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Member] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory Member.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json[r'createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json[r'updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Member(
      embedded: MemberEmbedded.fromJson(json[r'_embedded']),
      links: MemberLinks.fromJson(json[r'_links']),
      contactPoint: MemberContactPoint.fromJson(json[r'contactPoint']),
      createdAt: createdAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  MemberEmbedded embedded;

  MemberLinks links;

  MemberContactPoint contactPoint;

  DateTime createdAt;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Member &&
        other.embedded == embedded &&
        other.links == links &&
        other.contactPoint == contactPoint &&
        other.createdAt == createdAt &&
        other.id == id &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (contactPoint == null ? 0 : contactPoint.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Member> listFromJson(List<dynamic> json) {
    return <Member>[
      if (json is List)
        for (dynamic value in json) Member.fromJson(value),
    ];
  }

  static Map<String, Member> mapFromJson(Map<String, dynamic> json) {
    return <String, Member>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Member.fromJson(entry.value),
    };
  }

  // maps a json object with a list of Member-objects as value to a dart map
  static Map<String, List<Member>> mapListFromJson(Map<String, dynamic> json) {
    return <String, List<Member>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: Member.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'Member[embedded=$embedded, links=$links, contactPoint=$contactPoint, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (contactPoint != null) r'contactPoint': contactPoint,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
