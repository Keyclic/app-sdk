//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Workflow {
  /// Returns a new [Workflow] instance.
  Workflow({
    this.links,
    this.createdAt,
    this.description,
    this.end,
    this.id,
    required this.name,
    this.start,
    this.states = const [],
    this.transitions = const [],
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Workflow] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Workflow? fromJson(Map<String, dynamic>? json) {
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

    return Workflow(
      links: json[r'_links'] is! Map
          ? null
          : WorkflowLinks.fromJson(json[r'_links']),
      createdAt: createdAt,
      description: json[r'description'],
      end: json[r'end'] is! Map ? null : WorkflowState.fromJson(json[r'end']),
      id: json[r'id'],
      name: json[r'name'],
      start: json[r'start'] is! Map
          ? null
          : WorkflowState.fromJson(json[r'start']),
      states: WorkflowState.listFromJson(json[r'states']),
      transitions: WorkflowTransition.listFromJson(json[r'transitions']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  WorkflowLinks? links;

  final DateTime? createdAt;

  String? description;

  WorkflowState? end;

  final String? id;

  String name;

  WorkflowState? start;

  List<WorkflowState>? states;

  List<WorkflowTransition>? transitions;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Workflow &&
        other.links == links &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.end == end &&
        other.id == id &&
        other.name == name &&
        other.start == start &&
        DeepCollectionEquality.unordered().equals(states, other.states) &&
        DeepCollectionEquality.unordered()
            .equals(transitions, other.transitions) &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (links == null ? 0 : links.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (end == null ? 0 : end.hashCode) +
      (id == null ? 0 : id.hashCode) +
      name.hashCode +
      (start == null ? 0 : start.hashCode) +
      (states == null ? 0 : states.hashCode) +
      (transitions == null ? 0 : transitions.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Workflow> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Workflow>[];
    }

    return json.fold(<Workflow>[], (List<Workflow> previousValue, element) {
      final Workflow? object = Workflow.fromJson(element);
      if (object is Workflow) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Workflow> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Workflow>{};
    }

    return json.entries.fold(<String, Workflow>{},
        (Map<String, Workflow> previousValue, element) {
      final Workflow? object = Workflow.fromJson(element.value);
      if (object is Workflow) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Workflow-objects as value to a dart map
  static Map<String, List<Workflow>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Workflow>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Workflow>>(
          key, Workflow.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Workflow[links=$links, createdAt=$createdAt, description=$description, end=$end, id=$id, name=$name, start=$start, states=$states, transitions=$transitions, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && links != null) ||
          (keys?.contains(r'links') ?? false))
        r'_links': links?.toJson(),
      if ((keys == null && createdAt != null) ||
          (keys?.contains(r'createdAt') ?? false))
        r'createdAt': createdAt?.toUtc().toIso8601String(),
      if ((keys == null && description != null) ||
          (keys?.contains(r'description') ?? false))
        r'description': description,
      if ((keys == null && end != null) || (keys?.contains(r'end') ?? false))
        r'end': end?.toJson(),
      if ((keys == null && id != null) || (keys?.contains(r'id') ?? false))
        r'id': id,
      r'name': name,
      if ((keys == null && start != null) ||
          (keys?.contains(r'start') ?? false))
        r'start': start?.toJson(),
      if ((keys == null && states != null) ||
          (keys?.contains(r'states') ?? false))
        r'states': states,
      if ((keys == null && transitions != null) ||
          (keys?.contains(r'transitions') ?? false))
        r'transitions': transitions,
      if ((keys == null && type != null) || (keys?.contains(r'type') ?? false))
        r'type': type,
      if ((keys == null && updatedAt != null) ||
          (keys?.contains(r'updatedAt') ?? false))
        r'updatedAt': updatedAt?.toUtc().toIso8601String(),
    };
  }
}
