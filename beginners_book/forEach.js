channelList.forEach((channel) => {
  if (archiveTargets.includes(channel.id)) {
    out("Room:"+ channel.name + " をアーカイブ化します。\n");
    bot.channels.archive({
      token,
      channel: channel.id
    });
  }
});
