# Repeatedly measure execution time 
#
#
#
#

COMMAND=measure_time_store.sh                                              # The target that we want to repeat executing.
read -p "Please input the times that you want to execute: " nu      # Execution times

for (( i=0; i<${nu}; i++ ))
do
	sh $COMMAND
done
