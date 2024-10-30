import 'package:get/get.dart';
import 'package:music/data/model/playlist_model.dart';
import 'package:music/data/repository/playlist_repository.dart';

class HomeController extends GetxController {
  PlaylistRepository playlistRepository = PlaylistRepository();
  List<PlayListModel> playList = [];
  bool isLoading = false;

  Future<void> getPlaylist() async {
    isLoading = true;
    update();
    var playListResponse = await playlistRepository.getPlaylist();
    playList = playListResponse.playLists ?? [];
    isLoading = false;
    update();
  }

  @override
  void onInit() {
    getPlaylist();
    super.onInit();
  }
}
