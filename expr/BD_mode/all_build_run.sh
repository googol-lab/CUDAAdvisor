#!/bin/bash

# build and run
./build.sh

for FOLDER in backpropllvm bfsllvm hotspotllvm lavaMDllvm nnllvm nwllvm srad_v2llvm bicgllvm syrkllvm syr2kllvm 
do
	echo
	echo
	echo ===================================================
	echo
	echo ===================================================
	echo
	echo ===================================================
	echo
	echo ">>>>>>>>>>>>>" entering "$FOLDER" ...
	echo
	cd "$FOLDER"
	echo
	echo ">>>>>>>>>>>>>" running "$FOLDER" ...
	for i in 1 
	do
		echo "running..."
		./run      > log     2>>checktime
		./runbase  > logbase 2>>checktime
		echo "done."
	done
	cd ..
	echo
done
#
