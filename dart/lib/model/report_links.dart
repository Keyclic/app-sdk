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
    this.createdBy,
    this.equipments,
    this.feedback,
    this.operations,
    this.organization,
    this.place,
    this.self,
    this.tracking,
  });

  /// Returns a new [ReportLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ReportLinks? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return ReportLinks(
      asset: ReportLinksAsset.fromJson(json[r'asset']),
      category: ReportLinksCategory.fromJson(json[r'category']),
      children: ReportLinksChildren.fromJson(json[r'children']),
      createdBy: ReportLinksCreatedBy.fromJson(json[r'createdBy']),
      equipments: ReportLinksEquipments.listFromJson(json[r'equipments']),
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

  ReportLinksCreatedBy? createdBy;

  List<ReportLinksEquipments>? equipments;

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
        other.createdBy == createdBy &&
        DeepCollectionEquality.unordered()
            .equals(equipments, other.equipments) &&
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
      (createdBy == null ? 0 : createdBy.hashCode) +
      (equipments == null ? 0 : equipments.hashCode) +
      (feedback == null ? 0 : feedback.hashCode) +
      (operations == null ? 0 : operations.hashCode) +
      (organization == null ? 0 : organization.hashCode) +
      (place == null ? 0 : place.hashCode) +
      (self == null ? 0 : self.hashCode) +
      (tracking == null ? 0 : tracking.hashCode);

  static List<ReportLinks> listFromJson(Iterable? json) {
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
      'ReportLinks[asset=$asset, category=$category, children=$children, createdBy=$createdBy, equipments=$equipments, feedback=$feedback, operations=$operations, organization=$organization, place=$place, self=$self, tracking=$tracking]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^asset\.').hasMatch(key)))
        r'asset': asset?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^asset\.'))) {
            previousValue.add(element.split(RegExp(r'^asset\.')).last);
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
      if (keys == null ||
          keys.any((key) => RegExp(r'^children\.').hasMatch(key)))
        r'children': children?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^children\.'))) {
            previousValue.add(element.split(RegExp(r'^children\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^createdBy\.').hasMatch(key)))
        r'createdBy': createdBy?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^createdBy\.'))) {
            previousValue.add(element.split(RegExp(r'^createdBy\.')).last);
          }

          return previousValue;
        })),
      if (keys == null || keys.contains(r'equipments'))
        r'equipments': equipments,
      if (keys == null ||
          keys.any((key) => RegExp(r'^feedback\.').hasMatch(key)))
        r'feedback': feedback?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^feedback\.'))) {
            previousValue.add(element.split(RegExp(r'^feedback\.')).last);
          }

          return previousValue;
        })),
      if (keys == null ||
          keys.any((key) => RegExp(r'^operations\.').hasMatch(key)))
        r'operations': operations?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^operations\.'))) {
            previousValue.add(element.split(RegExp(r'^operations\.')).last);
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
      if (keys == null || keys.any((key) => RegExp(r'^place\.').hasMatch(key)))
        r'place': place?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^place\.'))) {
            previousValue.add(element.split(RegExp(r'^place\.')).last);
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
