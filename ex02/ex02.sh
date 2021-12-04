#!/bin/bash
for el in ${1}; do
    if [[ $(ls -R | grep ${el}) = "" ]]; then
        echo "the searched PATH is unexisting"
        shift 1
    else
        printf '%b\n' "$(ls -R | grep "${el}")"
        shift 1
    fi
done
exit 0
