//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class TicketJsonhalReadEmbedded {
  /// Returns a new [TicketJsonhalReadEmbedded] instance.
  TicketJsonhalReadEmbedded({
    this.assignments,
    this.category,
    this.equipments,
    this.phase,
    required this.place,
    this.priority,
    required this.feedback,
    this.children,
    this.state,
  });

  /// Returns a new [TicketJsonhalReadEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TicketJsonhalReadEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return TicketJsonhalReadEmbedded(
      assignments: AssignmentJsonhalRead.listFromJson(json[r'assignments']),
      category: CategoryJsonhalRead.fromJson(json[r'category']),
      equipments: EquipmentJsonhalRead.listFromJson(json[r'equipments']),
      phase: WorkflowStateJsonhalRead.fromJson(json[r'phase']),
      place: PlaceJsonhalRead.fromJson(json[r'place'])!,
      priority: TicketPriorityJsonhalRead.fromJson(json[r'priority']),
      feedback: FeedbackJsonhalRead.fromJson(json[r'feedback'])!,
      children: json[r'children'] == null
          ? null
          : List<String>.from(json[r'children']),
      state: WorkflowStateJsonhalRead.fromJson(json[r'state']),
    );
  }

  final List<AssignmentJsonhalRead>? assignments;

  CategoryJsonhalRead? category;

  final List<EquipmentJsonhalRead>? equipments;

  WorkflowStateJsonhalRead? phase;

  PlaceJsonhalRead place;

  TicketPriorityJsonhalRead? priority;

  FeedbackJsonhalRead feedback;

  final List<String>? children;

  WorkflowStateJsonhalRead? state;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is TicketJsonhalReadEmbedded &&
        DeepCollectionEquality.unordered()
            .equals(assignments, other.assignments) &&
        other.category == category &&
        DeepCollectionEquality.unordered()
            .equals(equipments, other.equipments) &&
        other.phase == phase &&
        other.place == place &&
        other.priority == priority &&
        other.feedback == feedback &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        other.state == state;
  }

  @override
  int get hashCode =>
      (assignments == null ? 0 : assignments.hashCode) +
      (category == null ? 0 : category.hashCode) +
      (equipments == null ? 0 : equipments.hashCode) +
      (phase == null ? 0 : phase.hashCode) +
      place.hashCode +
      (priority == null ? 0 : priority.hashCode) +
      feedback.hashCode +
      (children == null ? 0 : children.hashCode) +
      (state == null ? 0 : state.hashCode);

  static List<TicketJsonhalReadEmbedded> listFromJson(Iterable? json) {
    if (json == null) {
      return <TicketJsonhalReadEmbedded>[];
    }

    return json.fold(<TicketJsonhalReadEmbedded>[],
        (List<TicketJsonhalReadEmbedded> previousValue, element) {
      final TicketJsonhalReadEmbedded? object =
          TicketJsonhalReadEmbedded.fromJson(element);
      if (object is TicketJsonhalReadEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, TicketJsonhalReadEmbedded> mapFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, TicketJsonhalReadEmbedded>{};
    }

    return json.entries.fold(<String, TicketJsonhalReadEmbedded>{},
        (Map<String, TicketJsonhalReadEmbedded> previousValue, element) {
      final TicketJsonhalReadEmbedded? object =
          TicketJsonhalReadEmbedded.fromJson(element.value);
      if (object is TicketJsonhalReadEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of TicketJsonhalReadEmbedded-objects as value to a dart map
  static Map<String, List<TicketJsonhalReadEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<TicketJsonhalReadEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<TicketJsonhalReadEmbedded>>(
          key, TicketJsonhalReadEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'TicketJsonhalReadEmbedded[assignments=$assignments, category=$category, equipments=$equipments, phase=$phase, place=$place, priority=$priority, feedback=$feedback, children=$children, state=$state]';

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
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
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
      r'feedback': feedback.toJson(keys?.fold<List<String>>(<String>[],
          (List<String> previousValue, String element) {
        if (element.contains(RegExp(r'^feedback\.'))) {
          previousValue.add(element.split(RegExp(r'^feedback\.')).last);
        }

        return previousValue;
      })),
      if (keys == null || keys.contains(r'children')) r'children': children,
      if (keys == null || keys.any((key) => RegExp(r'^state\.').hasMatch(key)))
        r'state': state?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^state\.'))) {
            previousValue.add(element.split(RegExp(r'^state\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
