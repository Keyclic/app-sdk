//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsonhalRead {
  /// Returns a new [TicketJsonhalRead] instance.
  TicketJsonhalRead({
    required this.links,
    this.description,
    this.dueBy,
    this.name,
    this.scheduledAt,
    required this.completed,
    required this.id,
    this.tags,
    required this.createdAt,
    required this.updatedAt,
    this.reference,
    required this.archived,
    this.images = const [],
    required this.embedded,
  });

  /// Returns a new [TicketJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketJsonhalRead(
      links: TicketJsonhalReadLinks.fromJson(json[r'_links'])!,
      description: json[r'description'],
      dueBy: mapToDateTime(json[r'dueBy']),
      name: json[r'name'],
      scheduledAt: mapToDateTime(json[r'scheduledAt']),
      completed: json[r'completed'],
      id: json[r'id'],
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      createdAt: mapToDateTime(json[r'createdAt'])!,
      updatedAt: mapToDateTime(json[r'updatedAt'])!,
      reference: json[r'reference'],
      archived: json[r'archived'],
      images: List<String>.from(json[r'images']),
      embedded: TicketJsonhalReadEmbedded.fromJson(json[r'_embedded'])!,
    );
  }

  TicketJsonhalReadLinks links;

  String? description;

  final DateTime? dueBy;

  String? name;

  DateTime? scheduledAt;

  bool completed;

  /// The resource identifier.
  final String id;

  List<String>? tags;

  /// The date and time when the resource was created, in UTC format.
  final DateTime createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime updatedAt;

  final String? reference;

  bool archived;

  final List<String> images;

  TicketJsonhalReadEmbedded embedded;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsonhalRead &&
        other.links == links &&
        other.description == description &&
        other.dueBy == dueBy &&
        other.name == name &&
        other.scheduledAt == scheduledAt &&
        other.completed == completed &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.reference == reference &&
        other.archived == archived &&
        DeepCollectionEquality.unordered().equals(images, other.images) &&
        other.embedded == embedded;
  }

  @override
  int get hashCode =>
      links.hashCode +
      (description == null ? 0 : description.hashCode) +
      (dueBy == null ? 0 : dueBy.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      completed.hashCode +
      id.hashCode +
      (tags == null ? 0 : tags.hashCode) +
      createdAt.hashCode +
      updatedAt.hashCode +
      (reference == null ? 0 : reference.hashCode) +
      archived.hashCode +
      images.hashCode +
      embedded.hashCode;

  static List<TicketJsonhalRead> listFromJson(Iterable? json) {
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
      'TicketJsonhalRead[links=$links, description=$description, dueBy=$dueBy, name=$name, scheduledAt=$scheduledAt, completed=$completed, id=$id, tags=$tags, createdAt=$createdAt, updatedAt=$updatedAt, reference=$reference, archived=$archived, images=$images, embedded=$embedded]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      r'_links': links.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^links\.'))) {
          previousValue.add(element.split(RegExp(r'^links\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'dueBy'))
        r'dueBy': dueBy?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'scheduledAt'))
        r'scheduledAt': scheduledAt?.toUtc().toIso8601String(),
      r'completed': completed,
      r'id': id,
      if (keys == null || keys.contains(r'tags')) r'tags': tags,
      r'createdAt': createdAt.toUtc().toIso8601String(),
      r'updatedAt': updatedAt.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'reference')) r'reference': reference,
      r'archived': archived,
      r'images': images,
      r'_embedded': embedded.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^embedded\.'))) {
          previousValue.add(element.split(RegExp(r'^embedded\.')).last);
        }

        return previousValue;
      })),
    };
  }
}
