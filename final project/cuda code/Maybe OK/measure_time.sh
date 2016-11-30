# measure execution time of cuda code and original source code
#
# Directly print execution time on the screen
#
# How to use it : sh measure_time.sh
#
#

ORIGINAL=/home/cegrad/tchou/cs_217_GPU/final_project/backprop_make/backprop     # Replace with original exe file
TARGET=/home/cegrad/tchou/cs_217_GPU/final_project/backprop_make/backprop       # Replace with cuda exe file

read -p "Please input the layer: " layers                                      # backprop layers

printf "Layers: $layers \n\n"
printf "Original source code: \n\n"
time $ORIGINAL $layers
printf "\n"
printf "CUDA code: \n"
time $TARGET $layers

