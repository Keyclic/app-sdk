//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketEditTicketCommandWrite {
  /// Returns a new [TicketEditTicketCommandWrite] instance.
  TicketEditTicketCommandWrite({
    this.archivedAt,
    this.category,
    this.description,
    this.dueBy,
    this.identificationNumber,
    this.name,
    this.priority,
    this.scheduledAt,
    this.tags,
  });

  /// Returns a new [TicketEditTicketCommandWrite] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketEditTicketCommandWrite? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    DateTime? archivedAt = json[r'archivedAt'] == null
        ? null
        : DateTime.parse(json[r'archivedAt']);
    if (archivedAt != null && archivedAt.isUtc == false) {
      archivedAt = DateTime.parse('${json[r'archivedAt']}Z');
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

    return TicketEditTicketCommandWrite(
      archivedAt: archivedAt,
      category: json[r'category'],
      description: json[r'description'],
      dueBy: dueBy,
      identificationNumber: json[r'identificationNumber'],
      name: json[r'name'],
      priority: json[r'priority'],
      scheduledAt: scheduledAt,
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
    );
  }

  DateTime? archivedAt;

  String? category;

  String? description;

  DateTime? dueBy;

  String? identificationNumber;

  String? name;

  String? priority;

  DateTime? scheduledAt;

  List<String>? tags;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketEditTicketCommandWrite &&
        other.archivedAt == archivedAt &&
        other.category == category &&
        other.description == description &&
        other.dueBy == dueBy &&
        other.identificationNumber == identificationNumber &&
        other.name == name &&
        other.priority == priority &&
        other.scheduledAt == scheduledAt &&
        DeepCollectionEquality.unordered().equals(tags, other.tags);
  }

  @override
  int get hashCode =>
      (archivedAt == null ? 0 : archivedAt.hashCode) +
      (category == null ? 0 : category.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (dueBy == null ? 0 : dueBy.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      (name == null ? 0 : name.hashCode) +
      (priority == null ? 0 : priority.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (tags == null ? 0 : tags.hashCode);

  static List<TicketEditTicketCommandWrite> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TicketEditTicketCommandWrite>[];
    }

    return json.fold(<TicketEditTicketCommandWrite>[],
        (List<TicketEditTicketCommandWrite> previousValue, element) {
      final TicketEditTicketCommandWrite? object =
          TicketEditTicketCommandWrite.fromJson(element);
      if (object is TicketEditTicketCommandWrite) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketEditTicketCommandWrite> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketEditTicketCommandWrite>{};
    }

    return json.entries.fold(<String, TicketEditTicketCommandWrite>{},
        (Map<String, TicketEditTicketCommandWrite> previousValue, element) {
      final TicketEditTicketCommandWrite? object =
          TicketEditTicketCommandWrite.fromJson(element.value);
      if (object is TicketEditTicketCommandWrite) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketEditTicketCommandWrite-objects as value to a dart map
  static Map<String, List<TicketEditTicketCommandWrite>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketEditTicketCommandWrite>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketEditTicketCommandWrite>>(
          key, TicketEditTicketCommandWrite.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketEditTicketCommandWrite[archivedAt=$archivedAt, category=$category, description=$description, dueBy=$dueBy, identificationNumber=$identificationNumber, name=$name, priority=$priority, scheduledAt=$scheduledAt, tags=$tags]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'archivedAt'))
        r'archivedAt': archivedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'category')) r'category': category,
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'dueBy'))
        r'dueBy': dueBy?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'identificationNumber'))
        r'identificationNumber': identificationNumber,
      if (keys == null || keys.contains(r'name')) r'name': name,
      if (keys == null || keys.contains(r'priority')) r'priority': priority,
      if (keys == null || keys.contains(r'scheduledAt'))
        r'scheduledAt': scheduledAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'tags')) r'tags': tags,
    };
  }
}
