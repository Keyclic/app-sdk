//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api;

class FeedbackLinks {
  /// Returns a new [FeedbackLinks] instance.
  FeedbackLinks({
    this.businessActivity,
    this.category,
    this.images,
    this.member,
    this.plans,
    this.report,
    this.reporter,
    this.self,
    this.tracking,
  });

  /// Returns a new [FeedbackLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FeedbackLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FeedbackLinks(
      businessActivity:
          FeedbackLinksBusinessActivity.fromJson(json[r'businessActivity']),
      category: FeedbackLinksCategory.fromJson(json[r'category']),
      images: FeedbackLinksImages.listFromJson(json[r'images']),
      member: FeedbackLinksMember.fromJson(json[r'member']),
      plans: FeedbackLinksPlans.listFromJson(json[r'plans']),
      report: FeedbackLinksReport.fromJson(json[r'report']),
      reporter: FeedbackLinksReporter.fromJson(json[r'reporter']),
      self: FeedbackLinksSelf.fromJson(json[r'self']),
      tracking: FeedbackLinksTracking.fromJson(json[r'tracking']),
    );
  }

  FeedbackLinksBusinessActivity? businessActivity;

  FeedbackLinksCategory? category;

  List<FeedbackLinksImages>? images;

  FeedbackLinksMember? member;

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
        other.member == member &&
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
      (member == null ? 0 : member.hashCode) +
      (plans == null ? 0 : plans.hashCode) +
      (report == null ? 0 : report.hashCode) +
      (reporter == null ? 0 : reporter.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<FeedbackLinks> listFromJson(Iterable? json) {
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
      'FeedbackLinks[businessActivity=$businessActivity, category=$category, images=$images, member=$member, plans=$plans, report=$report, reporter=$reporter, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null ||
          keys.any((key) => RegExp(r'^businessActivity\.').hasMatch(key)))
        r'businessActivity': businessActivity?.toJson(keys?.fold<List<String>>(
            <String>[], (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^businessActivity\.'))) {
            previousValue
                .add(element.split(RegExp(r'^businessActivity\.')).last);
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
      if (keys == null || keys.contains(r'images')) r'images': images,
      if (keys == null || keys.any((key) => RegExp(r'^member\.').hasMatch(key)))
        r'member': member?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^member\.'))) {
            previousValue.add(element.split(RegExp(r'^member\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'plans')) r'plans': plans,
      if (keys == null || keys.any((key) => RegExp(r'^report\.').hasMatch(key)))
        r'report': report?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^report\.'))) {
            previousValue.add(element.split(RegExp(r'^report\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^reporter\.').hasMatch(key)))
        r'reporter': reporter?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^reporter\.'))) {
            previousValue.add(element.split(RegExp(r'^reporter\.')).last);
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
