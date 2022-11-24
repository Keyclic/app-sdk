//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReviewRequest {
  /// Returns a new [ReviewRequest] instance.
  ReviewRequest({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  /// Returns a new [ReviewRequest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReviewRequest.fromJson(Map<String, dynamic> json) {
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

    return ReviewRequest(
      embedded: ReviewRequestEmbedded.fromJson(json[r'_embedded']),
      links: ReviewRequestLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      id: json[r'id'],
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ReviewRequestEmbedded embedded;

  ReviewRequestLinks links;

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

    return other is ReviewRequest &&
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

  static List<ReviewRequest> listFromJson(List<dynamic> json) {
    return <ReviewRequest>[
      if (json is List)
        for (dynamic value in json) ReviewRequest.fromJson(value),
    ];
  }

  static Map<String, ReviewRequest> mapFromJson(Map<String, dynamic> json) {
    return <String, ReviewRequest>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequest.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReviewRequest-objects as value to a dart map
  static Map<String, List<ReviewRequest>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReviewRequest>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReviewRequest.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReviewRequest[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (createdAt != null) r'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }
}
