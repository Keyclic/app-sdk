//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportEmbedded {
  /// Returns a new [ReportEmbedded] instance.
  ReportEmbedded({
    this.assignment,
    this.category,
    this.children,
    this.documents,
    this.feedback,
    this.place,
    this.targetGroups,
    this.workflow,
  });

  /// Returns a new [ReportEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportEmbedded? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportEmbedded(
      assignment: Assignment.fromJson(json[r'assignment']),
      category: Category.fromJson(json[r'category']),
      children: Operation.listFromJson(json[r'children']),
      documents: Document.listFromJson(json[r'documents']),
      feedback: Feedback.fromJson(json[r'feedback']),
      place: Place.fromJson(json[r'place']),
      targetGroups: TargetGroup.listFromJson(json[r'targetGroups']),
      workflow: OperationEmbeddedWorkflow.fromJson(json[r'workflow']),
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

  static List<ReportEmbedded> listFromJson(Iterable? json) {
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

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^assignment\.').hasMatch(key)))
        r'assignment': assignment?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^assignment\.'))) {
            previousValue.add(element.split(RegExp(r'^assignment\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^category\.').hasMatch(key)))
        r'category': category?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^category\.'))) {
            previousValue.add(element.split(RegExp(r'^category\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'children')) r'children': children,
      if (keys == null || keys.contains(r'documents')) r'documents': documents,
      if (keys == null ||
          keys.any((key) => RegExp(r'^feedback\.').hasMatch(key)))
        r'feedback': feedback?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^feedback\.'))) {
            previousValue.add(element.split(RegExp(r'^feedback\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^place\.').hasMatch(key)))
        r'place': place?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^place\.'))) {
            previousValue.add(element.split(RegExp(r'^place\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'targetGroups'))
        r'targetGroups': targetGroups,
      if (keys == null ||
          keys.any((key) => RegExp(r'^workflow\.').hasMatch(key)))
        r'workflow': workflow?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^workflow\.'))) {
            previousValue.add(element.split(RegExp(r'^workflow\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
