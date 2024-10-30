class PlayListModel {
  String? trackUrl;
  String? pictureUrl;
  int? trackId;
  String? trackName;
  String? artistName;
  String? albumName;
  int? listenCounter;

  PlayListModel(
      {this.trackUrl,
      this.pictureUrl,
      this.trackId,
      this.trackName,
      this.artistName,
      this.albumName,
      this.listenCounter});

  PlayListModel.fromJson(Map<String, dynamic> json) {
    trackUrl = json['track_url'];
    pictureUrl = json['picture_url'];
    trackId = json['track_id'];
    trackName = json['track_name'];
    artistName = json['artist_name'];
    albumName = json['album_name'];
    listenCounter = json['listen_counter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['track_url'] = trackUrl;
    data['picture_url'] = pictureUrl;
    data['track_id'] = trackId;
    data['track_name'] = trackName;
    data['artist_name'] = artistName;
    data['album_name'] = albumName;
    data['listen_counter'] = listenCounter;
    return data;
  }
}
