//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class ReportLinks {
  /// Returns a new [ReportLinks] instance.
  ReportLinks({
    this.asset,
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
  static ReportLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return ReportLinks(
      asset: ReportLinksAsset.fromJson(json[r'asset']),
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

  ReportLinksAsset? asset;

  ReportLinksCategory? category;

  ReportLinksChildren? children;

  ReportLinksFeedback? feedback;

  ReportLinksOperations? operations;

  ReportLinksOrganization? organization;

  ReportLinksPlace? place;

  ReportLinksSelf? self;

  ReportLinksTracking? tracking;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinks &&
        other.asset == asset &&
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
      (asset == null ? 0 : asset.hashCode) +
      (category == null ? 0 : category.hashCode) +
      (children == null ? 0 : children.hashCode) +
      (feedback == null ? 0 : feedback.hashCode) +
      (operations == null ? 0 : operations.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<ReportLinks> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return <ReportLinks>[];
    }

    return json.fold(<ReportLinks>[],
        (List<ReportLinks> previousValue, element) {
      final ReportLinks? object = ReportLinks.fromJson(element);
      if (object is ReportLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, ReportLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, ReportLinks>{};
    }

    return json.entries.fold(<String, ReportLinks>{},
        (Map<String, ReportLinks> previousValue, element) {
      final ReportLinks? object = ReportLinks.fromJson(element.value);
      if (object is ReportLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of ReportLinks-objects as value to a dart map
  static Map<String, List<ReportLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<ReportLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<ReportLinks>>(
          key, ReportLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'ReportLinks[asset=$asset, category=$category, children=$children, feedback=$feedback, operations=$operations, organization=$organization, place=$place, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (asset != null) r'asset': asset,
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
