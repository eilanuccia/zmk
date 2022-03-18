#!/bin/bash

cd /workspaces/zmk/app 
west build -p -d build/left -b nice_nano_v2 -- -DSHIELD=oak_left -DZMK_CONFIG=/workspaces/zmk-config/config
west build -p -d build/right -b nice_nano_v2 -- -DSHIELD=oak_right -DZMK_CONFIG=/workspaces/zmk-config/config
cp /workspaces/zmk/app/build/left/zephyr/zmk.uf2 ../output/zmk_left.uf2
cp /workspaces/zmk/app/build/right/zephyr/zmk.uf2 ../output/zmk_right.uf2
