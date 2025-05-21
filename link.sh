#!/bin/sh	
set -o errexit
set -o nounset
set -o pipefail

BASE="$(dirname "$0" | xargs realpath)" 
CONFIG=$HOME/.config

if [ ! -d $CONFIG ];then
  mkdir $CONFIG
fi

lns() {
  local fm=$1
  local to=$2
  if [ ! -L "$to" ];then
    ln -s $fm $to    
  fi
}

lnc() {
  local base=$BASE/config
  local config=$HOME/.config
  for x in $base/*; do
    local to=$config/$(basename "$x")
    lns $x $to
  done
}

lnsh() {
  local base=$BASE/sh
  local bin=$HOME/.local/bin
  mkdir -p "$bin"
  for x in $base/*.sh; do
    local n=$(basename "$x" | cut -f 1 -d '.')
    local to=$bin/$n
    lns $x $to
  done
}

lnc
lnsh

