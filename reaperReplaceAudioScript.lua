function ImportAudioIntoChannel(index, channel, channelName, fileName)
  reaper.SetEditCurPos(0, false, false)
  local tr = reaper.GetTrack(0, index)
  
  for j = 0, reaper.GetTrackNumMediaItems(tr) - 1 do
    local item = reaper.GetTrackMediaItem(tr, j)
    reaper.DeleteTrackMediaItem(tr, item)
  end
  reaper.SetOnlyTrackSelected(tr, true)
  reaper.InsertMedia(fileName, 0)
  item = reaper.GetTrackMediaItem(tr, 0)
  take = reaper.GetActiveTake(item)
  reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", channel + 64 + 2)  
end

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 8/stage/moduleMusic8Score-v1.caf"

ImportAudioIntoChannel(1, 1, "Low Fm 1 Clean", audioFile)
ImportAudioIntoChannel(2, 3, "Low Fm 1 Effect", audioFile)

ImportAudioIntoChannel(4, 5, "Middle Fm 1 Clean", audioFile)
ImportAudioIntoChannel(5, 7, "Middle Fm 1 Effect", audioFile)

ImportAudioIntoChannel(7, 9, "High Fm 1 Clean", audioFile)
ImportAudioIntoChannel(8, 11, "High Fm 1 Effect", audioFile)

ImportAudioIntoChannel(10, 13, "Low Fm 2 Clean", audioFile)
ImportAudioIntoChannel(11, 15, "Low Fm 2 Effect", audioFile)

ImportAudioIntoChannel(13, 17, "Middle Fm 2 Clean", audioFile)
ImportAudioIntoChannel(14, 19, "Middle Fm 2 Effect", audioFile)

ImportAudioIntoChannel(16, 21, "High Fm 2 Clean", audioFile)
ImportAudioIntoChannel(17, 23, "High Fm 2 Effect", audioFile)

ImportAudioIntoChannel(19, 25, "Low Noise Clean", audioFile)
ImportAudioIntoChannel(20, 27, "Low Noise Effect", audioFile)

ImportAudioIntoChannel(22, 29, "Middle Noise Clean", audioFile)
ImportAudioIntoChannel(23, 31, "Middle Noise Effect", audioFile)

ImportAudioIntoChannel(25, 33, "High Noise Clean", audioFile)
ImportAudioIntoChannel(26, 35, "High Noise Effect", audioFile)