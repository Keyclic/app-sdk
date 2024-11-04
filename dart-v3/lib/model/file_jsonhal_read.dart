//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

part of keyclic_sdk_api_platform;

class FileJsonhalRead {
  /// Returns a new [FileJsonhalRead] instance.
  FileJsonhalRead({
    this.links,
  });

  /// Returns a new [FileJsonhalRead] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static FileJsonhalRead? fromJson(Object? json) {
    if (json is! Map<String, dynamic>) {
      return null;
    }

    return FileJsonhalRead(
      links: ArchivingJsonhalOrganizationPreferenceReadLinks.fromJson(
          json[r'_links']),
    );
  }

  ArchivingJsonhalOrganizationPreferenceReadLinks? links;

  @override
  bool operator ==(Object other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FileJsonhalRead && other.links == links;
  }

  @override
  int get hashCode => (links == null ? 0 : links.hashCode);

  static List<FileJsonhalRead> listFromJson(Iterable? json) {
    if (json == null) {
      return <FileJsonhalRead>[];
    }

    return json.fold(<FileJsonhalRead>[],
        (List<FileJsonhalRead> previousValue, element) {
      final FileJsonhalRead? object = FileJsonhalRead.fromJson(element);
      if (object is FileJsonhalRead) {
        previousValue.add(object);
      }

      return previousValue;
    });
  }

  static Map<String, FileJsonhalRead> mapFromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return <String, FileJsonhalRead>{};
    }

    return json.entries.fold(<String, FileJsonhalRead>{},
        (Map<String, FileJsonhalRead> previousValue, element) {
      final FileJsonhalRead? object = FileJsonhalRead.fromJson(element.value);
      if (object is FileJsonhalRead) {
        previousValue[element.key] = object;
      }

      return previousValue;
    });
  }

  // maps a json object with a list of FileJsonhalRead-objects as value to a dart map
  static Map<String, List<FileJsonhalRead>> mapListFromJson(
      Map<String, dynamic>? json) {
    if (json == null) {
      return <String, List<FileJsonhalRead>>{};
    }

    return json.map((key, value) {
      return MapEntry<String, List<FileJsonhalRead>>(
          key, FileJsonhalRead.listFromJson(value));
    });
  }

  @override
  String toString() => 'FileJsonhalRead[links=$links]';

  Map<String, dynamic> toJson([Iterable<String>? keys]) {
    return <String, dynamic>{
      if (keys == null || keys.any((key) => RegExp(r'^links\.').hasMatch(key)))
        r'_links': links?.toJson(keys?.fold<List<String>>(<String>[],
            (List<String> previousValue, String element) {
          if (element.contains(RegExp(r'^links\.'))) {
            previousValue.add(element.split(RegExp(r'^links\.')).last);
          }

          return previousValue;
        })),
    };
  }
}
