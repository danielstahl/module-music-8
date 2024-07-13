
function CreateFolder(index, name)
  reaper.InsertTrackAtIndex(index, false)
  folder = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(folder, 'P_NAME', name, true)
  reaper.SetMediaTrackInfo_Value( folder, 'I_FOLDERDEPTH',1)
  reaper.SetMediaTrackInfo_Value(folder, 'I_FOLDERCOMPACT', 0)
end

function ImportAudio(index, channel, trackName, fileName, lastInFolder)
  local folderDepth = 0
  if lastInFolder then folderDepth = -1 end

  reaper.SetEditCurPos(0, false, false)
  reaper.InsertTrackAtIndex(index, false)
  tr = reaper.GetTrack(0, index)
  reaper.GetSetMediaTrackInfo_String(tr, 'P_NAME', trackName, true)
  reaper.SetMediaTrackInfo_Value( tr, 'I_FOLDERDEPTH',folderDepth)
  reaper.SetOnlyTrackSelected(tr, true)
  reaper.InsertMedia(fileName, 0)
  item = reaper.GetTrackMediaItem(tr, 0)
  take = reaper.GetActiveTake(item)
  reaper.SetMediaItemTakeInfo_Value(take, "I_CHANMODE", channel + 64 + 2)
end

audioFile = "/Users/danielstahl/Documents/Music/Pieces/Module Music/Module Music 8/stage/moduleMusic8Score-v1.caf"

CreateFolder(0, "Low Fm 1")
ImportAudio(1, 1, "Low Fm 1 Clean", audioFile, false)
ImportAudio(2, 3, "Low Fm 1 Effect", audioFile, true)

CreateFolder(3, "Middle Fm 1")
ImportAudio(4, 5, "Middle Fm 1 Clean", audioFile, false)
ImportAudio(5, 7, "Middle Fm 1 Effect", audioFile, true)

CreateFolder(6, "High Fm 1")
ImportAudio(7, 9, "High Fm 1 Clean", audioFile, false)
ImportAudio(8, 11, "High Fm 1 Effect", audioFile, true)


CreateFolder(9, "Low Fm 2")
ImportAudio(10, 13, "Low Fm 2 Clean", audioFile, false)
ImportAudio(11, 15, "Low Fm 2 Effect", audioFile, true)

CreateFolder(12, "Middle Fm 2")
ImportAudio(13, 17, "Middle Fm 2 Clean", audioFile, false)
ImportAudio(14, 19, "Middle Fm 2 Effect", audioFile, true)

CreateFolder(15, "High Fm 2")
ImportAudio(16, 21, "High Fm 2 Clean", audioFile, false)
ImportAudio(17, 23, "High Fm 2 Effect", audioFile, true)

CreateFolder(18, "Low Noise")
ImportAudio(19, 25, "Low Noise Clean", audioFile, false)
ImportAudio(20, 27, "Low Noise Effect", audioFile, true)

CreateFolder(21, "Middle Fm 2")
ImportAudio(22, 29, "Middle Noise Clean", audioFile, false)
ImportAudio(23, 31, "Middle Noise Effect", audioFile, true)

CreateFolder(24, "High Noise")
ImportAudio(25, 33, "High Noise Clean", audioFile, false)
ImportAudio(26, 35, "High Noise Effect", audioFile, true)
