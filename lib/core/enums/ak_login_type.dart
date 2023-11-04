enum AkLoginType {
  official('1'),
  bilibili('2');

  const AkLoginType(this.channelId);

  final String channelId;

  bool get isBilibili => this == AkLoginType.bilibili;

  bool get isOfficial => this == AkLoginType.official;
}
