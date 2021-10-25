
class Example {
    String? href;
    List<Items>? items;
    int? limit;
    dynamic? next;
    int? offset;
    dynamic? previous;
    int? total;

    Example({this.href, this.items, this.limit, this.next, this.offset, this.previous, this.total});

    Example.fromJson(Map<String, dynamic> json) {
        this.href = json["href"];
        this.items = json["items"]==null ? null : (json["items"] as List).map((e)=>Items.fromJson(e)).toList();
        this.limit = json["limit"];
        this.next = json["next"];
        this.offset = json["offset"];
        this.previous = json["previous"];
        this.total = json["total"];
    }

  String get body => null;

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["href"] = this.href;
        if(this.items != null)
            data["items"] = this.items?.map((e)=>e.toJson()).toList();
        data["limit"] = this.limit;
        data["next"] = this.next;
        data["offset"] = this.offset;
        data["previous"] = this.previous;
        data["total"] = this.total;
        return data;
    }
}

class Items {
    bool? collaborative;
    String? description;
    ExternalUrls? externalUrls;
    String? href;
    String? id;
    List<Images>? images;
    String? name;
    Owner? owner;
    dynamic? primaryColor;
    bool? public;
    String? snapshotId;
    Tracks? tracks;
    String? type;
    String? uri;

    Items({this.collaborative, this.description, this.externalUrls, this.href, this.id, this.images, this.name, this.owner, this.primaryColor, this.public, this.snapshotId, this.tracks, this.type, this.uri});

    Items.fromJson(Map<String, dynamic> json) {
        this.collaborative = json["collaborative"];
        this.description = json["description"];
        this.externalUrls = json["external_urls"] == null ? null : ExternalUrls.fromJson(json["external_urls"]);
        this.href = json["href"];
        this.id = json["id"];
        this.images = json["images"]==null ? null : (json["images"] as List).map((e)=>Images.fromJson(e)).toList();
        this.name = json["name"];
        this.owner = json["owner"] == null ? null : Owner.fromJson(json["owner"]);
        this.primaryColor = json["primary_color"];
        this.public = json["public"];
        this.snapshotId = json["snapshot_id"];
        this.tracks = json["tracks"] == null ? null : Tracks.fromJson(json["tracks"]);
        this.type = json["type"];
        this.uri = json["uri"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["collaborative"] = this.collaborative;
        data["description"] = this.description;
        if(this.externalUrls != null)
            data["external_urls"] = this.externalUrls?.toJson();
        data["href"] = this.href;
        data["id"] = this.id;
        if(this.images != null)
            data["images"] = this.images?.map((e)=>e.toJson()).toList();
        data["name"] = this.name;
        if(this.owner != null)
            data["owner"] = this.owner?.toJson();
        data["primary_color"] = this.primaryColor;
        data["public"] = this.public;
        data["snapshot_id"] = this.snapshotId;
        if(this.tracks != null)
            data["tracks"] = this.tracks?.toJson();
        data["type"] = this.type;
        data["uri"] = this.uri;
        return data;
    }
}

class Tracks {
    String? href;
    int? total;

    Tracks({this.href, this.total});

    Tracks.fromJson(Map<String, dynamic> json) {
        this.href = json["href"];
        this.total = json["total"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["href"] = this.href;
        data["total"] = this.total;
        return data;
    }
}

class Owner {
    String? displayName;
    ExternalUrls1? externalUrls;
    String? href;
    String? id;
    String? type;
    String? uri;

    Owner({this.displayName, this.externalUrls, this.href, this.id, this.type, this.uri});

    Owner.fromJson(Map<String, dynamic> json) {
        this.displayName = json["display_name"];
        this.externalUrls = json["external_urls"] == null ? null : ExternalUrls1.fromJson(json["external_urls"]);
        this.href = json["href"];
        this.id = json["id"];
        this.type = json["type"];
        this.uri = json["uri"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["display_name"] = this.displayName;
        if(this.externalUrls != null)
            data["external_urls"] = this.externalUrls?.toJson();
        data["href"] = this.href;
        data["id"] = this.id;
        data["type"] = this.type;
        data["uri"] = this.uri;
        return data;
    }
}

class ExternalUrls1 {
    String? spotify;

    ExternalUrls1({this.spotify});

    ExternalUrls1.fromJson(Map<String, dynamic> json) {
        this.spotify = json["spotify"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["spotify"] = this.spotify;
        return data;
    }
}

class Images {
    dynamic? height;
    String? url;
    dynamic? width;

    Images({this.height, this.url, this.width});

    Images.fromJson(Map<String, dynamic> json) {
        this.height = json["height"];
        this.url = json["url"];
        this.width = json["width"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["height"] = this.height;
        data["url"] = this.url;
        data["width"] = this.width;
        return data;
    }
}

class ExternalUrls {
    String? spotify;

    ExternalUrls({this.spotify});

    ExternalUrls.fromJson(Map<String, dynamic> json) {
        this.spotify = json["spotify"];
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data["spotify"] = this.spotify;
        return data;
    }
}