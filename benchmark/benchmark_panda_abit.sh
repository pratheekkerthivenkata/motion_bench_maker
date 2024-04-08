#!/bin/bash

cd "${0%/*}"

dfolder=package://motion_bench_maker/problems/
rfolder=package://motion_bench_maker/benchmark/results/

planner1="BITstarkConfigDefault,"
planner2="ABITstarkConfigDefault,"
planner3="RRTstarkConfigDefault"
planner4="PRMstarkConfigDefault"

roslaunch --wait motion_bench_maker benchmark.launch end:=50 time:=60  runs:=5 sensed:=false results:=$rfolder"table_pick_panda_ABITstar/" dataset:=$dfolder"table_pick_panda/" planners:=$planner2 exp_name:="ABITstar" &
# roslaunch --wait motion_bench_maker benchmark.launch end:=50 time:=60  runs:=5 sensed:=false results:=$rfolder"bookshelf_thin_panda_ABITstar/" dataset:=$dfolder"bookshelf_thin_panda/" planners:=$planner2 exp_name:="ABITstar" &
# roslaunch --wait motion_bench_maker benchmark.launch end:=50 time:=60  runs:=5 sensed:=false results:=$rfolder"cage_panda_ABITstar/" dataset:=$dfolder"cage_panda/" planners:=$planner2 exp_name:="ABITstar" &
# roslaunch --wait motion_bench_maker benchmark.launch end:=50 time:=60  runs:=5 sensed:=false results:=$rfolder"kitchen_panda_ABITstar/" dataset:=$dfolder"kitchen_panda/" planners:=$planner2 exp_name:="ABITstar" &

# roslaunch --wait motion_bench_maker benchmark.launch end:=50 time:=60  runs:=5 sensed:=false results:=$rfolder"bookshelf_thin_panda_BITstar/" dataset:=$dfolder"bookshelf_thin_panda/" planners:=$planner1 exp_name:="BITstar"  &
# roslaunch --wait motion_bench_maker benchmark.launch end:=100 time:=20  runs:=5 sensed:=false results:=$rfolder"box_panda_flipped/" dataset:=$dfolder"box_panda_flipped/" planners:=$planner3 exp_name:="box_panda_flipped_C"  &
# roslaunch --wait motion_bench_maker benchmark.launch end:=100 time:=20  runs:=5 sensed:=false results:=$rfolder"box_panda_flipped/" dataset:=$dfolder"box_panda_flipped/" planners:=$planner4 exp_name:="box_panda_flipped_D"  &


#roslaunch --wait motion_bench_maker benchmark.launch end:=100 time:=20  runs:=10  sensed:=false results:=$rfolder"bookshelf_small_ur5/" dataset:=$dfolder"bookshelf_small_ur5/" planners:="$planners" exp_name:="small_ur5" &
#roslaunch --wait motion_bench_maker benchmark.launch end:=100 time:=20  runs:=10  sensed:=false results:=$rfolder"table_bars_ur5/" dataset:=$dfolder"table_bars_ur5/" planners:="$planners" exp_name:="bars_ur5" &
#roslaunch --wait motion_bench_maker benchmark.launch end:=100 time:=20  runs:=10  sensed:=false results:=$rfolder"box_ur5/" dataset:=$dfolder"box_ur5/" planners:="$planners"  exp_name:="box_ur5"  &
#roslaunch --wait motion_bench_maker benchmark.launch end:=100 time:=20  runs:=10  sensed:=false results:=$rfolder"table_under_pick_ur5/" dataset:=$dfolder"table_under_pick_ur5/" planners:="$planners" exp_name:="table_under_ur5" &
#roslaunch --wait motion_bench_maker benchmark.launch end:=100 time:=20  runs:=10  sensed:=false results:=$rfolder"kitchen_ur5/" dataset:=$dfolder"kitchen_ur5/" planners:="$planners" exp_name:="kitchen_ur5" &


wait 

killall roscore 
