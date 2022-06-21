const myLibrary =[
  'Made for you\n'
  'Recently played\n'
  'Liked Songs\n'
  'Albums\n'
  'Artists\n'
  'Podcasts\n'
];

const playlists=[
  "Today\'s Hit\n"
  'Discover Weekly\n'
  'Release Rader\n'
  'Chill\n'
  'Background\n'
  'Lofi hip hop music\n'
  'Vibes right now\n'
  'Time Capsule\n'
  'On repeat\n'
  'Summer Rewind\n'

];

class Song{
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
});
}

const _lofihiphopMusic =[
  Song(
    id:'0',
    title: 'Khwaab',
    artist: 'Anumita Nadeen',
    album: 'Khwaab',
    duration: '2:58',
  ),
  Song(
    id:'1',
    title: 'Akhiyaan',
    artist: 'Mitraz',
    album: 'Akhiyaan',
    duration: '3:11',
  ),
  Song(
    id:'2',
    title: 'Woh Raat',
    artist: 'Shivoryx',
    album: 'Woh Raat',
    duration: '2:45',
  ),
  Song(
    id:'3',
    title: 'Roz Roz',
    artist: 'Shilpa Rao',
    album: 'The Yellow Diary',
    duration: '3:10',
  ),
  Song(
    id:'4',
    title: 'Kasoor',
    artist: 'Prateek Kuhad',
    album: 'Kasoor',
    duration: '2:54',
  ),
  Song(
    id:'5',
    title: 'Alag Aasmaan',
    artist: 'Anuv Jain',
    album: 'Alag Aasman',
    duration: '2:48',
  ),
  Song(
    id:'6',
    title: 'Waqt ki Baatein',
    artist: 'Dream Note',
    album: 'Waqt ki Baatein',
    duration: '2',
  ),
  Song(
    id:'7',
    title: 'Snowman',
    artist: 'abc',
    album: 'xyz',
    duration: '2',
  ),
  Song(
    id:'8',
    title: 'Snowman',
    artist: 'abc',
    album: 'xyz',
    duration: '2',
  ),
  Song(
    id:'9',
    title: 'Snowman',
    artist: 'abc',
    album: 'xyz',
    duration: '2',
  ),
  Song(
    id:'10',
    title: 'Snowman',
    artist: 'abc',
    album: 'xyz',
    duration: '2',
  ),
  Song(
    id:'11',
    title: 'Snowman',
    artist: 'abc',
    album: 'xyz',
    duration: '2',
  ),];

class PlayList{
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const PlayList({
    required this.id,
  required this.duration,
  required this.creator,
  required this.description,
  required this.followers,
  required this.imageURL,
  required this.name,
  required this.songs,
});

}

const lofihiphopPlaylist = PlayList(
  id:'5-playlist',
  name:'Indie Music',
  imageURL:'assets/lofigirl.jpg',
  description:'Soothing vibes',
  creator:'Kalyani',
  duration:'40 min',
  followers:'333,468',
  songs: _lofihiphopMusic,

);

