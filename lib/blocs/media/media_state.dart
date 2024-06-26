part of 'media_bloc.dart';

abstract class MediaState extends Equatable {}

class MediaInitialState extends MediaState {
  @override
  List<Object> get props => [];
}

class MediaLoadingState extends MediaState {
  @override
  List<Object> get props => [];
}

class PopularMovieSuccessState extends MediaState {
  PopularMovieSuccessState(
      {required this.popularMedias, required this.upCommingMedias});

  final List<MediaModel> popularMedias;
  final List<MediaModel> upCommingMedias;

  @override
  List<Object> get props => [popularMedias, upCommingMedias];
}

class PopularSerieSuccessState extends MediaState {
  PopularSerieSuccessState(
      {required this.topRatedTv, required this.popularMedias});

  final List<MediaModel> popularMedias;
  final List<MediaModel> topRatedTv;

  @override
  List<Object> get props => [popularMedias, topRatedTv];
}

class NewsSuccessState extends MediaState {
  NewsSuccessState({required this.newsMovies});

  final List<MediaModel> newsMovies;

  @override
  List<Object> get props => [newsMovies];
}

class TopRatedSucessState extends MediaState {
  TopRatedSucessState({required this.topRatedMovies});

  final List<MediaModel> topRatedMovies;

  @override
  List<Object> get props => [topRatedMovies];
}

class CastSucessState extends MediaState {
  CastSucessState({required this.casts});

  final List<CastModel> casts;

  @override
  List<Object> get props => [casts];
}

class VideoSucessState extends MediaState {
  VideoSucessState({required this.videoList});

  final List<VideoModel> videoList;

  @override
  List<Object> get props => [videoList];
}

class MediaDetailSucessState extends MediaState {
  MediaDetailSucessState({
    required this.trailers,
    required this.casts,
  });

  final List<CastModel> casts;
  final List<VideoModel> trailers;

  @override
  List<Object> get props => [casts, trailers];
}

class MediaErrorState extends MediaState {
  final String errorMessage;

  MediaErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
