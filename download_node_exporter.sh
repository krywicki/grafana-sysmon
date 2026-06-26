#!/bin/bash
#
# Downloads NODE exporter executable and unzips it.
set -x

NODE_PKG="node_exporter-1.11.1.linux-amd64"
NODE_EXPORTER_URL="https://github.com/prometheus/node_exporter/releases/download/v1.11.1/${NODE_PKG}.tar.gz"

curl -L "${NODE_EXPORTER_URL}" -o node_exporter.tar.gz
tar -xzf node_exporter.tar.gz
mv ./${NODE_PKG} ./node_exporter
