# Import file "bowie"
bowie = Framer.Importer.load("imported/bowie@1x")
{AudioPlayer} = require "audio"

audio = new AudioPlayer 
    audio: "song1.mp3"
    width: 300, height: 200
    borderRadius: 4

audio.center()
audio.showProgress = true

audio.progressBar.props = 
    width: 660, height: 13
    backgroundColor: "A9C1D5"
    borderRadius: 50
    y: 1000
    x: 50
    
audio.progressBar.knob.props = 
    backgroundColor: "#fff" 
    opacity: 1
    width: 30, height: 30
    borderRadius: 50
    
audio.showProgress.props =
	backgroundColor: "#fff"

audio.showTime = true

audio.timeStyle = { "font-size": "14px", "color": "#888" }
bowie.bg2.opacity = 0
bowie.bg3.opacity = 0
bowie.gradient2.opacity = 0
bowie.gradient3.opacity = 0
bowie.album2.opacity = 0
bowie.album3.opacity = 0
bowie.song2.opacity = 0
bowie.song3.opacity = 0
bowie.cover2.opacity = 0
bowie.cover3.opacity = 0
bowie.stop.opacity = 0
bowie.mute.opacity = 0
bowie.progress.opacity = 0



bowie.play.onTap ->
    audio.player.play()
    bowie.play.opacity = 0
    bowie.stop.opacity = 1
    
bowie.stop.onTap -

	bowie.stop.opacity = 0
	bowie.play.opacity = 1
	
bowie.next.onTap ->
    bowie.album1.opacity = 0
    bowie.bg1.opacity = 0
    bowie.cover1.opacity = 0
    bowie.song1.opacity = 0
    bowie.gradient1.opacity = 0 
    bowie.album2.opacity = 1
    bowie.bg2.opacity = 1
    bowie.cover2.opacity = 1
    bowie.song2.opacity = 1
    bowie.gradient2.opacity = 1 

bowie.prev.onTap ->
    bowie.album1.opacity = 0
    bowie.bg1.opacity = 0
    bowie.cover1.opacity = 0
    bowie.song1.opacity = 0
    bowie.gradient1.opacity = 0 
    bowie.album3.opacity = 1
    bowie.bg3.opacity = 1
    bowie.cover3.opacity = 1
    bowie.song3.opacity = 1
    bowie.gradient3.opacity = 1 
    

