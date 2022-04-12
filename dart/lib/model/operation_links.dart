//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.9

part of keyclic_sdk_api;

class OperationLinks {
  /// Returns a new [OperationLinks] instance.
  OperationLinks({
    this.feedback,
    this.image,
    this.images = const [],
    this.operator_,
    this.organization,
    this.report,
    this.self,
    this.tracking,
  });

  /// Returns a new [OperationLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  factory OperationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinks(
      feedback: OperationLinksFeedback.fromJson(json[r'feedback']),
      image: OperationLinksImage.fromJson(json[r'image']),
      images: OperationLinksImages.listFromJson(json[r'images']),
      operator_: OperationLinksOperator.fromJson(json[r'operator']),
      organization: OperationLinksOrganization.fromJson(json[r'organization']),
      report: OperationLinksReport.fromJson(json[r'report']),
      self: OperationLinksSelf.fromJson(json[r'self']),
      tracking: OperationLinksTracking.fromJson(json[r'tracking']),
    );
  }

  OperationLinksFeedback feedback;

  OperationLinksImage image;

  List<OperationLinksImages> images;

  OperationLinksOperator operator_;

  OperationLinksOrganization organization;

  OperationLinksReport report;

  OperationLinksSelf self;

  OperationLinksTracking tracking;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinks &&
        other.feedback == feedback &&
        other.image == image &&
        DeepCollectionEquality.unordered().equals(images, other.images) &&
        other.operator_ == operator_ &&
        other.organization == organization &&
        other.report == report &&
        other.self == self &&
        other.tracking == tracking;
  }

  @override
  int get hashCode =>
      (feedback == null ? 0 : feedback.hashCode) +
      (image == null ? 0 : image.hashCode) +
      (images == null ? 0 : images.hashCode) +
      (operator_ == null ? 0 : operator_.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<OperationLinks> listFromJson(List<dynamic> json) {
    return <OperationLinks>[
      if (json is List)
        for (dynamic value in json) OperationLinks.fromJson(value),
    ];
  }

  static Map<String, OperationLinks> mapFromJson(Map<String, dynamic> json) {
    return <String, OperationLinks>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinks.fromJson(entry.value),
    };
  }

  // maps a json object with a list of OperationLinks-objects as value to a dart map
  static Map<String, List<OperationLinks>> mapListFromJson(
      Map<String, dynamic> json) {
    return <String, List<OperationLinks>>{
      if (json is Map)
        for (final entry in json.entries)
          entry.key: OperationLinks.listFromJson(entry.value),
    };
  }

  @override
  String toString() =>
      'OperationLinks[feedback=$feedback, image=$image, images=$images, operator_=$operator_, organization=$organization, report=$report, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (feedback != null) r'feedback': feedback,
      if (image != null) r'image': image,
      if (images != null) r'images': images,
      if (operator_ != null) r'operator': operator_,
      if (organization != null) r'organization': organization,
      if (report != null) r'report': report,
      if (self != null) r'self': self,
      if (tracking != null) r'tracking': tracking,
    };
  }
}
