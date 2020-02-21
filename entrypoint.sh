#!/bin/sh
dockerBin="/usr/bin/docker"

containerStatus="dead created exited"
excludedPattern="gitlab"

verbose=1
check=1

while true
do
    # generate filter list
    filterList=""
    for status in $containerStatus
    do 
        filterList=$filterList" --filter status=$status"
    done
    [ $verbose -eq 1 ] && echo "filterList = "$filterList

    # find all the container who have to be erased 
    containerList=$($dockerBin container ls --all $filterList --format '{{.Names}}')
    if [ $containerList -eq "" ]; then
        [ $verbose -eq 1 ] && echo "No container found, stopping"
        exit 0
    fi
    [ $verbose -eq 1 ] && echo "containerList = "$containerList
    
    # Remove from list container with specific pattern (Container we want to keep)
    for container in $containerList
    do
        [ $verbose -eq 1 ] && echo "Check pattern $excludePattern for container $container"
        !!!! egrep $excludedPattern !!!!!

    done
    
    
    [ $check -eq 0 ] && $dockerBin container rm

    sleep 60
done
