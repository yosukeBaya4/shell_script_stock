#!/bin/bash

read -p "base URL (http://...) ? : " BASEDIR
read -p "start number? : " start
read -p "end number? : " end
read -p "extension? : " ext

for i in `seq $start $end`
do
				wget "${BASEDIR}${i}".$ext
done

echo "Download Successfully Completed."
