//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsonhalRead {
  /// Returns a new [TicketJsonhalRead] instance.
  TicketJsonhalRead({
    this.links,
    this.description,
    this.scheduledAt,
    this.id,
    this.tags = const {},
    this.createdAt,
    this.updatedAt,
  });

  /// Returns a new [TicketJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? scheduledAt = json[r'scheduledAt'] == null
        ? null
        : DateTime.parse(json[r'scheduledAt']);
    if (scheduledAt != null && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${json[r'scheduledAt']}Z');
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

    return TicketJsonhalRead(
      links: AssetTypeJsonhalReadLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      scheduledAt: scheduledAt,
      id: json[r'id'],
      tags: Map<String, Object>.from(json[r'tags']),
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  AssetTypeJsonhalReadLinks? links;

  String? description;

  DateTime? scheduledAt;

  /// The resource identifier.
  final String? id;

  Map<String, Object>? tags;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.scheduledAt == scheduledAt &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<TicketJsonhalRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TicketJsonhalRead>[];
    }

    return json.fold(<TicketJsonhalRead>[],
        (List<TicketJsonhalRead> previousValue, element) {
      final TicketJsonhalRead? object = TicketJsonhalRead.fromJson(element);
      if (object is TicketJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketJsonhalRead> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketJsonhalRead>{};
    }

    return json.entries.fold(<String, TicketJsonhalRead>{},
        (Map<String, TicketJsonhalRead> previousValue, element) {
      final TicketJsonhalRead? object =
          TicketJsonhalRead.fromJson(element.value);
      if (object is TicketJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketJsonhalRead-objects as value to a dart map
  static Map<String, List<TicketJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketJsonhalRead>>(
          key, TicketJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketJsonhalRead[links=$links, description=$description, scheduledAt=$scheduledAt, id=$id, tags=$tags, createdAt=$createdAt, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (links != null) r'_links': links,
      if (description != null) r'description': description,
      if (scheduledAt != null)
        r'scheduledAt': scheduledAt!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (tags != null) r'tags': tags,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
