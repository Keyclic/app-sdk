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
    this.equipment,
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
      asset: json[r'asset'] is! Map
          ? null
          : ReportLinksAsset.fromJson(json[r'asset']),
      category: json[r'category'] is! Map
          ? null
          : ReportLinksCategory.fromJson(json[r'category']),
      children: json[r'children'] is! Map
          ? null
          : ReportLinksChildren.fromJson(json[r'children']),
      equipment: json[r'equipment'] is! Map
          ? null
          : ReportLinksEquipment.fromJson(json[r'equipment']),
      feedback: json[r'feedback'] is! Map
          ? null
          : ReportLinksFeedback.fromJson(json[r'feedback']),
      operations: json[r'operations'] is! Map
          ? null
          : ReportLinksOperations.fromJson(json[r'operations']),
      organization: json[r'organization'] is! Map
          ? null
          : ReportLinksOrganization.fromJson(json[r'organization']),
      place: json[r'place'] is! Map
          ? null
          : ReportLinksPlace.fromJson(json[r'place']),
      self: json[r'self'] is! Map
          ? null
          : ReportLinksSelf.fromJson(json[r'self']),
      tracking: json[r'tracking'] is! Map
          ? null
          : ReportLinksTracking.fromJson(json[r'tracking']),
    );
  }

  ReportLinksAsset? asset;

  ReportLinksCategory? category;

  ReportLinksChildren? children;

  ReportLinksEquipment? equipment;

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
        other.equipment == equipment &&
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
      (equipment == null ? 0 : equipment.hashCode) +
      (feedback == null ? 0 : feedback.hashCode) +
      (operations == null ? 0 : operations.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<ReportLinks> listFromJson(Iterable<dynamic>? json) {
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
      'ReportLinks[asset=$asset, category=$category, children=$children, equipment=$equipment, feedback=$feedback, operations=$operations, organization=$organization, place=$place, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && asset != null) ||
          (keys?.contains(r'asset') ?? false))
        r'asset': asset?.toJson(),
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category?.toJson(),
      if ((keys == null && children != null) ||
          (keys?.contains(r'children') ?? false))
        r'children': children?.toJson(),
      if ((keys == null && equipment != null) ||
          (keys?.contains(r'equipment') ?? false))
        r'equipment': equipment?.toJson(),
      if ((keys == null && feedback != null) ||
          (keys?.contains(r'feedback') ?? false))
        r'feedback': feedback?.toJson(),
      if ((keys == null && operations != null) ||
          (keys?.contains(r'operations') ?? false))
        r'operations': operations?.toJson(),
      if ((keys == null && organization != null) ||
          (keys?.contains(r'organization') ?? false))
        r'organization': organization?.toJson(),
      if ((keys == null && place != null) ||
          (keys?.contains(r'place') ?? false))
        r'place': place?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
      if ((keys == null && tracking != null) ||
          (keys?.contains(r'tracking') ?? false))
        r'tracking': tracking?.toJson(),
    };
  }
}
