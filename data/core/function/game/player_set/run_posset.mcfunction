#coreストレージのstage値の中のプレイヤーのチームの中の現在のカウント値に応じた位置座標を取得(x,y,z)
$say $(stage).$(nowSet).$(psetCount)
$function core:game/player_set/pos_set with storage playerspawner: $(stage).team$(nowSet).$(psetCount)