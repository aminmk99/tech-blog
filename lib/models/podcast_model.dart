class PodcastModel {
  final int id;
  final String title;
  final String podcaster;
  final String podcastPosterUrl;
  final String date;
  final int listeners;

  const PodcastModel({
    required this.id,
    required this.title,
    required this.podcaster,
    required this.podcastPosterUrl,
    required this.date,
    required this.listeners,
  });
}
