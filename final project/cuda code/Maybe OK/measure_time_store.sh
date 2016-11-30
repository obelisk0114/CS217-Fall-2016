# measure execution time of cuda code and original source code
#
# Store execution time to the time.txt file
#
# How to use it : sh measure_time.sh
#
#

ORIGINAL=/home/cegrad/tchou/cs_217_GPU/final_project/backprop_make/backprop     # Replace with original exe file
TARGET=/home/cegrad/tchou/cs_217_GPU/final_project/backprop_make/backprop       # Replace with cuda exe file
read -p "Please input the layer: " layers                                     # backprop layers

printf "Layers: $layers \n\n">>time.txt
printf "Original source code: \n">>time.txt
{ time $ORIGINAL $layers; } 2>>time.txt
printf "\n">>time.txt
printf "CUDA code: \n">>time.txt
{ time $TARGET $layers; } 2>>time.txt
printf "\n\n\n">>time.txt
