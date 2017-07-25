#!/bin/bash

for filename in *
do
    ext=${filename##*\.}
    case "$ext" in
        sh) echo "$filename : bash script."
            ;;
        txt) echo "$filename : Text file."
            ;;
        cpp) echo "$filename : c++ source code."
            ;;
        *) echo "$filename : unknow."
    esac
done
