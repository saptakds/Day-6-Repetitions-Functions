#!/bin/bash -x
n=$1
harmonic=0
for num in `seq $n`
do
	Hn=$(echo "scale=2;1/$num" | bc)
	harmonic=$(echo "scale=2;$harmonic+$Hn" | bc)
done
echo "Harmonic no.: $harmonic"
