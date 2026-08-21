#!/bin/bash

if [[ ! -x mod ]]
then
	mkdir mod
fi

cd orig/

for f in *
do
	convert \
		$f \
		-resize 50% \
		+repage \
		../mod/${f/.png/.png} \
done
