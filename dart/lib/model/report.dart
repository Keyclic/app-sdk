//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class Report {
  /// Returns a new [Report] instance.
  Report({
    this.embedded,
    this.links,
    this.archived,
    this.createdAt,
    this.description,
    this.dueBy,
    this.id,
    this.identificationNumber,
    this.phase,
    this.priority,
    this.reference,
    this.scheduledAt,
    this.tags = const [],
    this.type,
    this.updatedAt,
  });

  /// Returns a new [Report] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Report? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    DateTime? createdAt = json[r'createdAt'] is String
        ? DateTime.parse(json[r'createdAt'])
        : null;
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${json[r'createdAt']}Z');
    }

    DateTime? dueBy =
        json[r'dueBy'] is String ? DateTime.parse(json[r'dueBy']) : null;
    if (dueBy is DateTime && dueBy.isUtc == false) {
      dueBy = DateTime.parse('${json[r'dueBy']}Z');
    }

    DateTime? scheduledAt = json[r'scheduledAt'] is String
        ? DateTime.parse(json[r'scheduledAt'])
        : null;
    if (scheduledAt is DateTime && scheduledAt.isUtc == false) {
      scheduledAt = DateTime.parse('${json[r'scheduledAt']}Z');
    }

    DateTime? updatedAt = json[r'updatedAt'] is String
        ? DateTime.parse(json[r'updatedAt'])
        : null;
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${json[r'updatedAt']}Z');
    }

    return Report(
      embedded: ReportEmbedded.fromJson(json[r'_embedded']),
      links: ReportLinks.fromJson(json[r'_links']),
      archived: json[r'archived'],
      createdAt: createdAt,
      description: json[r'description'],
      dueBy: dueBy,
      id: json[r'id'],
      identificationNumber: json[r'identificationNumber'],
      phase: WorkflowState.fromJson(json[r'phase']),
      priority: ReportPriority.fromJson(json[r'priority']),
      reference: json[r'reference'],
      scheduledAt: scheduledAt,
      tags: json[r'tags'] == null ? null : List<String>.from(json[r'tags']),
      type: json[r'type'],
      updatedAt: updatedAt,
    );
  }

  ReportEmbedded? embedded;

  ReportLinks? links;

  bool? archived;

  final DateTime? createdAt;

  String? description;

  DateTime? dueBy;

  final String? id;

  String? identificationNumber;

  WorkflowState? phase;

  ReportPriority? priority;

  String? reference;

  DateTime? scheduledAt;

  List<String>? tags;

  String? type;

  final DateTime? updatedAt;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Report &&
        other.embedded == embedded &&
        other.links == links &&
        other.archived == archived &&
        other.createdAt == createdAt &&
        other.description == description &&
        other.dueBy == dueBy &&
        other.id == id &&
        other.identificationNumber == identificationNumber &&
        other.phase == phase &&
        other.priority == priority &&
        other.reference == reference &&
        other.scheduledAt == scheduledAt &&
        DeepCollectionEquality.unordered().equals(tags, other.tags) &&
        other.type == type &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode =>
      (embedded == null ? 0 : embedded.hashCode) +
      (links == null ? 0 : links.hashCode) +
      (archived == null ? 0 : archived.hashCode) +
      (createdAt == null ? 0 : createdAt.hashCode) +
      (description == null ? 0 : description.hashCode) +
      (dueBy == null ? 0 : dueBy.hashCode) +
      (id == null ? 0 : id.hashCode) +
      (identificationNumber == null ? 0 : identificationNumber.hashCode) +
      (phase == null ? 0 : phase.hashCode) +
      (priority == null ? 0 : priority.hashCode) +
      (reference == null ? 0 : reference.hashCode) +
      (scheduledAt == null ? 0 : scheduledAt.hashCode) +
      (tags == null ? 0 : tags.hashCode) +
      (type == null ? 0 : type.hashCode) +
      (updatedAt == null ? 0 : updatedAt.hashCode);

  static List<Report> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <Report>[];
    }

    return json.fold(<Report>[], (List<Report> previousValue, element) {
      final Report? object = Report.fromJson(element);
      if (object is Report) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, Report> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, Report>{};
    }

    return json.entries.fold(<String, Report>{},
        (Map<String, Report> previousValue, element) {
      final Report? object = Report.fromJson(element.value);
      if (object is Report) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of Report-objects as value to a dart map
  static Map<String, List<Report>> mapListFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<Report>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<Report>>(key, Report.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'Report[embedded=$embedded, links=$links, archived=$archived, createdAt=$createdAt, description=$description, dueBy=$dueBy, id=$id, identificationNumber=$identificationNumber, phase=$phase, priority=$priority, reference=$reference, scheduledAt=$scheduledAt, tags=$tags, type=$type, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (embedded != null) r'_embedded': embedded,
      if (links != null) r'_links': links,
      if (archived != null) r'archived': archived,
      if (createdAt != null) r'createdAt': createdAt!.toUtc().toIso8601String(),
      if (description != null) r'description': description,
      if (dueBy != null) r'dueBy': dueBy!.toUtc().toIso8601String(),
      if (id != null) r'id': id,
      if (identificationNumber != null)
        r'identificationNumber': identificationNumber,
      if (phase != null) r'phase': phase,
      if (priority != null) r'priority': priority,
      if (reference != null) r'reference': reference,
      if (scheduledAt != null)
        r'scheduledAt': scheduledAt!.toUtc().toIso8601String(),
      if (tags != null) r'tags': tags,
      if (type != null) r'type': type,
      if (updatedAt != null) r'updatedAt': updatedAt!.toUtc().toIso8601String(),
    };
  }
}
