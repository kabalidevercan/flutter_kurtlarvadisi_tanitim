class Players {
  final String _playerName;
  final String _playerDetail;
  final String _playerSmallPhoto;
  final String _playerBigPhoto;

  get playerName => this._playerName;

  get playerDetail => this._playerDetail;

  get playerSmallPhoto => this._playerSmallPhoto;

  get playerBigPhoto => this._playerBigPhoto;

  Players(this._playerName, this._playerDetail, this._playerSmallPhoto,
      this._playerBigPhoto);

  @override
  String toString() {
    // TODO: implement toString
    return "ActorName: ${_playerName}///// Büyük Fotoğraf: ${_playerBigPhoto}";
  }
}
