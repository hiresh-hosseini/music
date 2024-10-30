import 'package:music/data/remote/base_url.dart';
import 'package:music/data/remote/endpoint.dart';
import 'package:music/data/response/playlist_response.dart';

class PlaylistRepository extends BaseUrl {
  Future<PlayListResponse> getPlaylist() async {
    var response = await dio.post(Endpoint.getTrack);
    return PlayListResponse.fromJson(response.data);
  }
}
