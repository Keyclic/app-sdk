//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinks {
  /// Returns a new [FeedbackLinks] instance.
  FeedbackLinks({
    this.businessActivity,
    this.category,
    this.image,
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
      businessActivity:
          FeedbackLinksBusinessActivity.fromJson(json[r'businessActivity']),
      category: FeedbackLinksCategory.fromJson(json[r'category']),
      image: FeedbackLinksImage.fromJson(json[r'image']),
      images: FeedbackLinksImages.listFromJson(json[r'images']),
      plans: FeedbackLinksPlans.listFromJson(json[r'plans']),
      report: FeedbackLinksReport.fromJson(json[r'report']),
      reporter: FeedbackLinksReporter.fromJson(json[r'reporter']),
      self: FeedbackLinksSelf.fromJson(json[r'self']),
      tracking: FeedbackLinksTracking.fromJson(json[r'tracking']),
    );
  }

  FeedbackLinksBusinessActivity? businessActivity;

  FeedbackLinksCategory? category;

  FeedbackLinksImage? image;

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
        other.image == image &&
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
      (image == null ? 0 : image.hashCode) +
      (images == null ? 0 : images.hashCode) +
      (plans == null ? 0 : plans.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (reporter == null ? 0 : reporter.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<FeedbackLinks> listFromJson(List<dynamic>? json) {
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
      'FeedbackLinks[businessActivity=$businessActivity, category=$category, image=$image, images=$images, plans=$plans, report=$report, reporter=$reporter, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      if (businessActivity != null) r'businessActivity': businessActivity,
      if (category != null) r'category': category,
      if (image != null) r'image': image,
      if (images != null) r'images': images,
      if (plans != null) r'plans': plans,
      if (report != null) r'report': report,
      if (reporter != null) r'reporter': reporter,
      if (self != null) r'self': self,
      if (tracking != null) r'tracking': tracking,
    };
  }
}
