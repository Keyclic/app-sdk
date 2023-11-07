//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinks {
  /// Returns a new [FeedbackLinks] instance.
  FeedbackLinks({
    this.businessActivity,
    this.category,
    this.images = const [],
    this.plans = const [],
    this.report,
    this.reporter,
    this.self,
    this.tracking,
  });

  /// Returns a new [FeedbackLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinks? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinks(
      businessActivity: json[r'businessActivity'] is! Map
          ? null
          : FeedbackLinksBusinessActivity.fromJson(json[r'businessActivity']),
      category: json[r'category'] is! Map
          ? null
          : FeedbackLinksCategory.fromJson(json[r'category']),
      images: json[r'images'] is! Iterable
          ? null
          : FeedbackLinksImages.listFromJson(json[r'images']),
      plans: json[r'plans'] is! Iterable
          ? null
          : FeedbackLinksPlans.listFromJson(json[r'plans']),
      report: json[r'report'] is! Map
          ? null
          : FeedbackLinksReport.fromJson(json[r'report']),
      reporter: json[r'reporter'] is! Map
          ? null
          : FeedbackLinksReporter.fromJson(json[r'reporter']),
      self: json[r'self'] is! Map
          ? null
          : FeedbackLinksSelf.fromJson(json[r'self']),
      tracking: json[r'tracking'] is! Map
          ? null
          : FeedbackLinksTracking.fromJson(json[r'tracking']),
    );
  }

  FeedbackLinksBusinessActivity? businessActivity;

  FeedbackLinksCategory? category;

  List<FeedbackLinksImages>? images;

  List<FeedbackLinksPlans>? plans;

  FeedbackLinksReport? report;

  FeedbackLinksReporter? reporter;

  FeedbackLinksSelf? self;

  FeedbackLinksTracking? tracking;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinks &&
        other.businessActivity == businessActivity &&
        other.category == category &&
        DeepCollectionEquality.unordered().equals(images, other.images) &&
        DeepCollectionEquality.unordered().equals(plans, other.plans) &&
        other.report == report &&
        other.reporter == reporter &&
        other.self == self &&
        other.tracking == tracking;
  }

  @override
  int get hashCode =>
      (businessActivity == null ? 0 : businessActivity.hashCode) +
      (category == null ? 0 : category.hashCode) +
      (images == null ? 0 : images.hashCode) +
      (plans == null ? 0 : plans.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (reporter == null ? 0 : reporter.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<FeedbackLinks> listFromJson(Iterable<dynamic>? json) {
    if (json == null) {
      return <FeedbackLinks>[];
    }

    return json.fold(<FeedbackLinks>[],
        (List<FeedbackLinks> previousValue, element) {
      final FeedbackLinks? object = FeedbackLinks.fromJson(element);
      if (object is FeedbackLinks) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FeedbackLinks> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FeedbackLinks>{};
    }

    return json.entries.fold(<String, FeedbackLinks>{},
        (Map<String, FeedbackLinks> previousValue, element) {
      final FeedbackLinks? object = FeedbackLinks.fromJson(element.value);
      if (object is FeedbackLinks) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FeedbackLinks-objects as value to a dart map
  static Map<String, List<FeedbackLinks>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FeedbackLinks>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FeedbackLinks>>(
          key, FeedbackLinks.listFromJson(value));
    });
  }

  @override
  String toString() =>
      'FeedbackLinks[businessActivity=$businessActivity, category=$category, images=$images, plans=$plans, report=$report, reporter=$reporter, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson([List<String>? keys]) {
    return <String, dynamic>{
      if ((keys == null && businessActivity != null) ||
          (keys?.contains(r'businessActivity') ?? false))
        r'businessActivity': businessActivity?.toJson(),
      if ((keys == null && category != null) ||
          (keys?.contains(r'category') ?? false))
        r'category': category?.toJson(),
      if ((keys == null && images != null) ||
          (keys?.contains(r'images') ?? false))
        r'images': images,
      if ((keys == null && plans != null) ||
          (keys?.contains(r'plans') ?? false))
        r'plans': plans,
      if ((keys == null && report != null) ||
          (keys?.contains(r'report') ?? false))
        r'report': report?.toJson(),
      if ((keys == null && reporter != null) ||
          (keys?.contains(r'reporter') ?? false))
        r'reporter': reporter?.toJson(),
      if ((keys == null && self != null) || (keys?.contains(r'self') ?? false))
        r'self': self?.toJson(),
      if ((keys == null && tracking != null) ||
          (keys?.contains(r'tracking') ?? false))
        r'tracking': tracking?.toJson(),
    };
  }
}
