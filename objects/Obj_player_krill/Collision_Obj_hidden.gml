audio_play_sound(snd_Krill_scream,0,0)
audio_play_sound(snd_Krill_crinkle,0,0)
instance_destroy();

room_goto(rm_gameover)
audio_stop_all()