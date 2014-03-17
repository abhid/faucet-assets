#! /bin/sh
#
#    __                      _
#   / _| __ _ _   _  ___ ___| |_
#  | |_ / _` | | | |/ __/ _ \ __|
#  |  _| (_| | |_| | (_|  __/ |_
#  |_|  \__,_|\__,_|\___\___|\__|
#
#  Install faucetd by running
#    curl get.faucetapp.com | sh

# Setup environment
set -e
FAUCET_ROOT="/opt/faucetapp"
FAUCET_VERSION="0.0.1b"

mkdir -p "$FAUCET_ROOT"
cd "$FAUCET_ROOT"

# Download the binaries
curl -s http://get.drdy.us/faucetapp/$FAUCET_VERSION.tar.gz | tar xzf -

# Add symlink
rm -f /usr/local/bin/faucetd
ln -s "$FAUCET_ROOT"/bin/faucetd /usr/local/bin/faucetd
