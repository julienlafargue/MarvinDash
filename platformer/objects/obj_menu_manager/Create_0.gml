/// @DnDAction : YoYo Games.Audio.Stop_All_Audio
/// @DnDVersion : 1
/// @DnDHash : 08D1D181
/// @DnDComment : Stop all previous audio
/// @DnDApplyTo : all
audio_stop_all();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 6F86E0C8
/// @DnDComment : Play menu music
/// @DnDArgument : "soundid" "Sound5"
/// @DnDArgument : "loop" "1"
/// @DnDSaveInfo : "soundid" "Sound5"
audio_play_sound(Sound5, 0, 1, 1.0, undefined, 1.0);