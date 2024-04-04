//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class OperationLinks {
  /// Returns a new [OperationLinks] instance.
  OperationLinks({
    this.assignments,
    this.feedback,
    this.images,
    this.operator_,
    this.organization,
    this.report,
    this.self,
    this.tracking,
  });

  /// Returns a new [OperationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static OperationLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return OperationLinks(
      assignments: OperationLinksAssignments.fromJson(json[r'assignments']),
      feedback: OperationLinksFeedback.fromJson(json[r'feedback']),
      images: OperationLinksImages.listFromJson(json[r'images']),
      operator_: OperationLinksOperator.fromJson(json[r'operator']),
      organization: OperationLinksOrganization.fromJson(json[r'organization']),
      report: OperationLinksReport.fromJson(json[r'report']),
      self: OperationLinksSelf.fromJson(json[r'self']),
      tracking: OperationLinksTracking.fromJson(json[r'tracking']),
    );
  }

  OperationLinksAssignments? assignments;

  OperationLinksFeedback? feedback;

  List<OperationLinksImages>? images;

  OperationLinksOperator? operator_;

  OperationLinksOrganization? organization;

  OperationLinksReport? report;

  OperationLinksSelf? self;

  OperationLinksTracking? tracking;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinks &&
        other.assignments == assignments &&
        other.feedback == feedback &&
        DeepCollectionEquality.unordered().equals(images, other.images) &&
        other.operator_ == operator_ &&
        other.organization == organization &&
        other.report == report &&
        other.self == self &&
        other.tracking == tracking;
  }

  @override
  int get hashCode =>
      (assignments == null ? 0 : assignments.hashCode) +
      (feedback == null ? 0 : feedback.hashCode) +
      (images == null ? 0 : images.hashCode) +
      (operator_ == null ? 0 : operator_.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<OperationLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <OperationLinks>[];
    }

    return json.fold(<OperationLinks>[],
        (List<OperationLinks> previousValue, element) {
      final OperationLinks? object = OperationLinks.fromJson(element);
      if (object is OperationLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, OperationLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, OperationLinks>{};
    }

    return json.entries.fold(<String, OperationLinks>{},
        (Map<String, OperationLinks> previousValue, element) {
      final OperationLinks? object = OperationLinks.fromJson(element.value);
      if (object is OperationLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of OperationLinks-objects as value to a dart map
  static Map<String, List<OperationLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<OperationLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<OperationLinks>>(
          key, OperationLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'OperationLinks[assignments=$assignments, feedback=$feedback, images=$images, operator_=$operator_, organization=$organization, report=$report, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^assignments\.').hasMatch(key)))
        r'assignments': assignments?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^assignments\.'))) {
            previousValue.add(element.split(RegExp(r'^assignments\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^feedback\.').hasMatch(key)))
        r'feedback': feedback?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^feedback\.'))) {
            previousValue.add(element.split(RegExp(r'^feedback\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'images')) r'images': images,
      if (keys == null ||
          keys.any((key) => RegExp(r'^operator_\.').hasMatch(key)))
        r'operator': operator_?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^operator_\.'))) {
            previousValue.add(element.split(RegExp(r'^operator_\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^organization\.').hasMatch(key)))
        r'organization': organization?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^organization\.'))) {
            previousValue.add(element.split(RegExp(r'^organization\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^report\.').hasMatch(key)))
        r'report': report?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^report\.'))) {
            previousValue.add(element.split(RegExp(r'^report\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.any((key) => RegExp(r'^self\.').hasMatch(key)))
        r'self': self?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^self\.'))) {
            previousValue.add(element.split(RegExp(r'^self\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^tracking\.').hasMatch(key)))
        r'tracking': tracking?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^tracking\.'))) {
            previousValue.add(element.split(RegExp(r'^tracking\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
