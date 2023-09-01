#!/usr/bin/env sh
DIR=~/Downloads
MIRROR=https://github.com/transmission/transmission/releases/download

dl_ver()
{
    local ver=$1
    local file=transmission-${ver}.tar.xz
    # https://github.com/transmission/transmission/releases/download/4.0.4/transmission-4.0.4.tar.xz
    local url=$MIRROR/${ver}/$file
    local lfile=$DIR/$file

    if [ ! -e $lfile ];
    then
        curl -sSLf -o $lfile $url
    fi

    printf "  # %s\n" $url
    printf "  '%s': sha256:%s\n" $ver `sha256sum $lfile | awk '{print $1}'`
}

dl_ver 4.0.0
dl_ver 4.0.1
dl_ver 4.0.2
dl_ver 4.0.3
dl_ver ${1:-4.0.4}
