#!/usr/bin/env bash
# This script is used on Nomad clients/servers to keep the underlying OS and its packages up-to-date. This script
# should be ran on a schedule by Nomad itself. Copied from davidsbond, changed to apt from apt-get

set -e

apt update -y
apt upgrade -y
apt dist-upgrade -y
apt autoremove -y
apt clean -y
