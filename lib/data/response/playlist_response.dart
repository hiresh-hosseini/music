import 'package:music/data/model/playlist_model.dart';

class PlayListResponse {
  String? status;
  String? message;
  List<PlayListModel>? playLists;

  PlayListResponse({this.status, this.message, this.playLists});

  PlayListResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      playLists = <PlayListModel>[];
      json['data'].forEach((v) {
        playLists!.add(PlayListModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['message'] = message;
    if (playLists != null) {
      data['data'] = playLists!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
