class ArtisModel {
  String imgUrl;
  String name;

  ArtisModel({
    required this.imgUrl,
    required this.name,
  });
}

List<ArtisModel> artisModel = [
  ArtisModel(imgUrl: 'assets/images/artist1.png', name: 'Conan Gray '),
  ArtisModel(imgUrl: 'assets/images/artist2.png', name: 'Harry’s house'),
  ArtisModel(imgUrl: 'assets/images/artist3.png', name: 'Chill Mix'),
  ArtisModel(imgUrl: 'assets/images/artist4.png', name: 'current favs <3'),
  ArtisModel(imgUrl: 'assets/images/artist5.png', name: 'Harry Styles'),
  ArtisModel(imgUrl: 'assets/images/artist6.png', name: 'Anime LoFi Beats'),
];
