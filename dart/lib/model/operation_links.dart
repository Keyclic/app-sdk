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
  static OperationLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return OperationLinks(
      assignments: json[r'assignments'] is! Map
          ? null
          : OperationLinksAssignments.fromJson(json[r'assignments']),
      feedback: json[r'feedback'] is! Map
          ? null
          : OperationLinksFeedback.fromJson(json[r'feedback']),
      images: json[r'images'] is! Iterable
          ? null
          : OperationLinksImages.listFromJson(json[r'images']),
      operator_: json[r'operator'] is! Map
          ? null
          : OperationLinksOperator.fromJson(json[r'operator']),
      organization: json[r'organization'] is! Map
          ? null
          : OperationLinksOrganization.fromJson(json[r'organization']),
      report: json[r'report'] is! Map
          ? null
          : OperationLinksReport.fromJson(json[r'report']),
      self: json[r'self'] is! Map
          ? null
          : OperationLinksSelf.fromJson(json[r'self']),
      tracking: json[r'tracking'] is! Map
          ? null
          : OperationLinksTracking.fromJson(json[r'tracking']),
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

  static List<OperationLinks> listFromJson(Iterable<dynamic>? json) {
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

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && assignments != null) ||
          (keys?.contains(r'assignments') ?? false))
        r'assignments': assignments?.toJson(),
      if ((keys == null && feedback != null) ||
          (keys?.contains(r'feedback') ?? false))
        r'feedback': feedback?.toJson(),
      if ((keys == null && images != null) ||
          (keys?.contains(r'images') ?? false))
        r'images': images,
      if ((keys == null && operator_ != null) ||
          (keys?.contains(r'operator_') ?? false))
        r'operator': operator_?.toJson(),
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
      if ((keys == null && report != null) ||
          (keys?.contains(r'report') ?? false))
        r'report': report?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
      if ((keys == null && tracking != null) ||
          (keys?.contains(r'tracking') ?? false))
        r'tracking': tracking?.toJson(),
    };
  }
}
