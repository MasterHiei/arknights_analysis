enum AkLoginType {
  official('1'),
  bilibili('2');

  const AkLoginType(this.channelId);

  final String channelId;
}
