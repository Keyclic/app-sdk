//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportEmbedded {
  /// Returns a new [ReportEmbedded] instance.
  ReportEmbedded({
    this.assignment,
    this.category,
    this.children = const [],
    this.documents = const [],
    this.feedback,
    this.place,
    this.targetGroups = const [],
    this.workflow,
  });

  /// Returns a new [ReportEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportEmbedded? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportEmbedded(
      assignment: json[r'assignment'] is! Map
          ? null
          : Assignment.fromJson(json[r'assignment']),
      category: json[r'category'] is! Map
          ? null
          : Category.fromJson(json[r'category']),
      children: json[r'children'] is! Iterable
          ? null
          : Operation.listFromJson(json[r'children']),
      documents: json[r'documents'] is! Iterable
          ? null
          : Document.listFromJson(json[r'documents']),
      feedback: json[r'feedback'] is! Map
          ? null
          : Feedback.fromJson(json[r'feedback']),
      place: json[r'place'] is! Map ? null : Place.fromJson(json[r'place']),
      targetGroups: json[r'targetGroups'] is! Iterable
          ? null
          : TargetGroup.listFromJson(json[r'targetGroups']),
      workflow: json[r'workflow'] is! Map
          ? null
          : OperationEmbeddedWorkflow.fromJson(json[r'workflow']),
    );
  }

  Assignment? assignment;

  Category? category;

  List<Operation>? children;

  List<Document>? documents;

  Feedback? feedback;

  Place? place;

  List<TargetGroup>? targetGroups;

  OperationEmbeddedWorkflow? workflow;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportEmbedded &&
        other.assignment == assignment &&
        other.category == category &&
        DeepCollectionEquality.unordered().equals(children, other.children) &&
        DeepCollectionEquality.unordered().equals(documents, other.documents) &&
        other.feedback == feedback &&
        other.place == place &&
        DeepCollectionEquality.unordered()
            .equals(targetGroups, other.targetGroups) &&
        other.workflow == workflow;
  }

  @override
  int get hashCode =>
      (assignment == null ? 0 : assignment.hashCode) +
      (category == null ? 0 : category.hashCode) +
      (children == null ? 0 : children.hashCode) +
      (documents == null ? 0 : documents.hashCode) +
      (feedback == null ? 0 : feedback.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (targetGroups == null ? 0 : targetGroups.hashCode) +
      (workflow == null ? 0 : workflow.hashCode);

  static List<ReportEmbedded> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <ReportEmbedded>[];
    }

    return json.fold(<ReportEmbedded>[],
        (List<ReportEmbedded> previousValue, element) {
      final ReportEmbedded? object = ReportEmbedded.fromJson(element);
      if (object is ReportEmbedded) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportEmbedded> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportEmbedded>{};
    }

    return json.entries.fold(<String, ReportEmbedded>{},
        (Map<String, ReportEmbedded> previousValue, element) {
      final ReportEmbedded? object = ReportEmbedded.fromJson(element.value);
      if (object is ReportEmbedded) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportEmbedded-objects as value to a dart map
  static Map<String, List<ReportEmbedded>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportEmbedded>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportEmbedded>>(
          key, ReportEmbedded.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportEmbedded[assignment=$assignment, category=$category, children=$children, documents=$documents, feedback=$feedback, place=$place, targetGroups=$targetGroups, workflow=$workflow]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && assignment != null) ||
          (keys?.contains(r'assignment') ?? false))
        r'assignment': assignment?.toJson(),
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category?.toJson(),
      if ((keys == null && children != null) ||
          (keys?.contains(r'children') ?? false))
        r'children': children,
      if ((keys == null && documents != null) ||
          (keys?.contains(r'documents') ?? false))
        r'documents': documents,
      if ((keys == null && feedback != null) ||
          (keys?.contains(r'feedback') ?? false))
        r'feedback': feedback?.toJson(),
      if ((keys == null && place != null) ||
          (keys?.contains(r'place') ?? false))
        r'place': place?.toJson(),
      if ((keys == null && targetGroups != null) ||
          (keys?.contains(r'targetGroups') ?? false))
        r'targetGroups': targetGroups,
      if ((keys == null && workflow != null) ||
          (keys?.contains(r'workflow') ?? false))
        r'workflow': workflow?.toJson(),
    };
  }
}
