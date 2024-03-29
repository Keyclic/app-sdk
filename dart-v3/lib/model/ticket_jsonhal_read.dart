//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsonhalRead {
  /// Returns a new [TicketJsonhalRead] instance.
  TicketJsonhalRead({
    this.links,
    this.description,
    this.dueBy,
    this.priority,
    this.scheduledAt,
    this.id,
    this.tags,
    this.createdAt,
    this.updatedAt,
    this.archived,
  });

  /// Returns a new [TicketJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsonhalRead? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? dueBy =
        json[r'dueBy'] == null ? null : DateTime.parse(json[r'dueBy']);
    if (dueBy != null && dueBy.isUtc == false) {
      dueBy = DateTime.parse('${json[r'dueBy']}Z');
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
      links: TicketJsonhalReadLinks.fromJson(json[r'_links']),
      description: json[r'description'],
      dueBy: dueBy,
      priority: TicketPriorityJsonhalRead.fromJson(json[r'priority']),
      scheduledAt: scheduledAt,
      id: json[r'id'],
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      createdAt: createdAt,
      updatedAt: updatedAt,
      archived: json[r'archived'],
    );
  }

  TicketJsonhalReadLinks? links;

  String? description;

  DateTime? dueBy;

  TicketPriorityJsonhalRead? priority;

  DateTime? scheduledAt;

  /// The resource identifier.
  final String? id;

  List<String>? tags;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final bool? archived;

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
        other.priority == priority &&
        other.scheduledAt == scheduledAt &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.archived == archived;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (dueBy == null ? 0 : dueBy.hashCode) +
      (priority == null ? 0 : priority.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (archived == null ? 0 : archived.hashCode);

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
      'TicketJsonhalRead[links=$links, description=$description, dueBy=$dueBy, priority=$priority, scheduledAt=$scheduledAt, id=$id, tags=$tags, createdAt=$createdAt, updatedAt=$updatedAt, archived=$archived]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
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
      if (keys == null ||
          keys.any((key) => RegExp(r'^priority\.').hasMatch(key)))
        r'priority': priority?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^priority\.'))) {
            previousValue.add(element.split(RegExp(r'^priority\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'scheduledAt'))
        r'scheduledAt': scheduledAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'tags')) r'tags': tags,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'archived')) r'archived': archived,
    };
  }
}
