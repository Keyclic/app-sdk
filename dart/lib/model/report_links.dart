//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class ReportLinks {
  /// Returns a new [ReportLinks] instance.
  ReportLinks({
    this.category,
    this.children,
    this.feedback,
    this.operations,
    this.organization,
    this.place,
    this.self,
    this.tracking,
  });

  /// Returns a new [ReportLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory ReportLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinks(
      category: ReportLinksCategory.fromJson(json[r'category']),
      children: ReportLinksChildren.fromJson(json[r'children']),
      feedback: ReportLinksFeedback.fromJson(json[r'feedback']),
      operations: ReportLinksOperations.fromJson(json[r'operations']),
      organization: ReportLinksOrganization.fromJson(json[r'organization']),
      place: ReportLinksPlace.fromJson(json[r'place']),
      self: ReportLinksSelf.fromJson(json[r'self']),
      tracking: ReportLinksTracking.fromJson(json[r'tracking']),
    );
  }

  ReportLinksCategory category;

  ReportLinksChildren children;

  ReportLinksFeedback feedback;

  ReportLinksOperations operations;

  ReportLinksOrganization organization;

  ReportLinksPlace place;

  ReportLinksSelf self;

  ReportLinksTracking tracking;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinks &&
        other.category == category &&
        other.children == children &&
        other.feedback == feedback &&
        other.operations == operations &&
        other.organization == organization &&
        other.place == place &&
        other.self == self &&
        other.tracking == tracking;
  }

  @override
  int get hashCode =>
      (category == null ? 0 : category.hashCode) +
      (children == null ? 0 : children.hashCode) +
      (feedback == null ? 0 : feedback.hashCode) +
      (operations == null ? 0 : operations.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<ReportLinks> listFromJson(List<dynamic> json) {
    return <ReportLinks>[
      if (json is List)
        for (dynamic value in json) ReportLinks.fromJson(value),
    ];
  }

  static Map<String, ReportLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, ReportLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of ReportLinks-objects as value to a dart map
  static Map<String, List<ReportLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<ReportLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: ReportLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'ReportLinks[category=$category, children=$children, feedback=$feedback, operations=$operations, organization=$organization, place=$place, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (category != null) r'category': category,
      if (children != null) r'children': children,
      if (feedback != null) r'feedback': feedback,
      if (operations != null) r'operations': operations,
      if (organization != null) r'organization': organization,
      if (place != null) r'place': place,
      if (self != null) r'self': self,
      if (tracking != null) r'tracking': tracking,
    };
  }
}
