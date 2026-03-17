#ガチホコの設置場所
$execute align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["rainmakerPutPoint"],data:{Type:"Checkpoint",Team:$(team)}}

#周辺の白羊毛の色を変える
data remove storage temp_ args
$data modify storage temp_ args.color set from storage core: joinColor.team$(team)
function core:game/rainmaker/change_woolcolor with storage temp_ args