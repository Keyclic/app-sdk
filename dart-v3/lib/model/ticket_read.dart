//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketRead {
  /// Returns a new [TicketRead] instance.
  TicketRead({
    this.assignments,
    this.category,
    this.description,
    this.dueBy,
    this.name,
    required this.organization,
    this.phase,
    required this.place,
    this.priority,
    this.scheduledAt,
    required this.feedback,
    this.id,
    this.tags,
    this.createdAt,
    this.updatedAt,
    this.parent,
    required this.state,
    this.archived,
  });

  /// Returns a new [TicketRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
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

    return TicketRead(
      assignments: AssignmentRead.listFromJson(json[r'assignments']),
      category: CategoryRead.fromJson(json[r'category']),
      description: json[r'description'],
      dueBy: dueBy,
      name: json[r'name'],
      organization: json[r'organization'],
      phase: WorkflowStateRead.fromJson(json[r'phase']),
      place: PlaceRead.fromJson(json[r'place'])!,
      priority: TicketPriorityRead.fromJson(json[r'priority']),
      scheduledAt: scheduledAt,
      feedback: FeedbackRead.fromJson(json[r'feedback'])!,
      id: json[r'id'],
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      createdAt: createdAt,
      updatedAt: updatedAt,
      parent: json[r'parent'],
      state: WorkflowStateRead.fromJson(json[r'state'])!,
      archived: json[r'archived'],
    );
  }

  final List<AssignmentRead>? assignments;

  CategoryRead? category;

  String? description;

  final DateTime? dueBy;

  String? name;

  final String organization;

  WorkflowStateRead? phase;

  PlaceRead place;

  TicketPriorityRead? priority;

  DateTime? scheduledAt;

  FeedbackRead feedback;

  /// The resource identifier.
  final String? id;

  List<String>? tags;

  /// The date and time when the resource was created, in UTC format.
  final DateTime? createdAt;

  /// The date and time when the resource was updated, in UTC format.
  final DateTime? updatedAt;

  final String? parent;

  WorkflowStateRead state;

  final bool? archived;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketRead &&
        DeepCollectionEquality.unordered()
            .equals(assignments, other.assignments) &&
        other.category == category &&
        other.description == description &&
        other.dueBy == dueBy &&
        other.name == name &&
        other.organization == organization &&
        other.phase == phase &&
        other.place == place &&
        other.priority == priority &&
        other.scheduledAt == scheduledAt &&
        other.feedback == feedback &&
        other.id == id &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt &&
        other.parent == parent &&
        other.state == state &&
        other.archived == archived;
  }

  @override
  int get hashCode =>
      (assignments == null ? 0 : assignments.hashCode) +
      (category == null ? 0 : category.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (dueBy == null ? 0 : dueBy.hashCode) +
      (name == null ? 0 : name.hashCode) +
      organization.hashCode +
      (phase == null ? 0 : phase.hashCode) +
      place.hashCode +
      (priority == null ? 0 : priority.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      feedback.hashCode +
      (id == null ? 0 : id.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode) +
      (parent == null ? 0 : parent.hashCode) +
      state.hashCode +
      (archived == null ? 0 : archived.hashCode);

  static List<TicketRead> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <TicketRead>[];
    }

    return json.fold(<TicketRead>[], (List<TicketRead> previousValue, element) {
      final TicketRead? object = TicketRead.fromJson(element);
      if (object is TicketRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketRead>{};
    }

    return json.entries.fold(<String, TicketRead>{},
        (Map<String, TicketRead> previousValue, element) {
      final TicketRead? object = TicketRead.fromJson(element.value);
      if (object is TicketRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketRead-objects as value to a dart map
  static Map<String, List<TicketRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketRead>>(
          key, TicketRead.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketRead[assignments=$assignments, category=$category, description=$description, dueBy=$dueBy, name=$name, organization=$organization, phase=$phase, place=$place, priority=$priority, scheduledAt=$scheduledAt, feedback=$feedback, id=$id, tags=$tags, createdAt=$createdAt, updatedAt=$updatedAt, parent=$parent, state=$state, archived=$archived]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.contains(r'assignments'))
        r'assignments': assignments,
      if (keys == null ||
          keys.any((key) => RegExp(r'^category\.').hasMatch(key)))
        r'category': category?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^category\.'))) {
            previousValue.add(element.split(RegExp(r'^category\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'description'))
        r'description': description,
      if (keys == null || keys.contains(r'dueBy'))
        r'dueBy': dueBy?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'name')) r'name': name,
      r'organization': organization,
      if (keys == null || keys.any((key) => RegExp(r'^phase\.').hasMatch(key)))
        r'phase': phase?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^phase\.'))) {
            previousValue.add(element.split(RegExp(r'^phase\.')).last);
          }

          return previousValue;
        })),
      r'place': place.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^place\.'))) {
          previousValue.add(element.split(RegExp(r'^place\.')).last);
        }

        return previousValue;
      })),
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
      r'feedback': feedback.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^feedback\.'))) {
          previousValue.add(element.split(RegExp(r'^feedback\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'id')) r'id': id,
      if (keys == null || keys.contains(r'tags')) r'tags': tags,
      if (keys == null || keys.contains(r'createdAt'))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'updatedAt'))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
      if (keys == null || keys.contains(r'parent')) r'parent': parent,
      r'state': state.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^state\.'))) {
          previousValue.add(element.split(RegExp(r'^state\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'archived')) r'archived': archived,
    };
  }
}
