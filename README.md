# Grafana System Montior

This is a simple setup for Grafana to be used as a Node (machine/computer) system monitor.
It provides a dashboard of useful metrics detailing system resources (cpu, storage, memory, etc).

## Architecture

- Node Exporter: Collect System Information
- Prometheus: Store System Information
- Grafana: Charts/Dashboard UI

![architecture](./docs/imgs/architecture.drawio.svg)

## Quick Start

Start Services

```bash
# download node_exporter
bash download_node_exporter.sh
# launch grafana & prometheus
podman compose up -d
# start node_exporter
./node_exporter/node_exporter
```

## How Can I Use It?

1. Create a SystemD service for Prometheu and Grafana.
2. Create a SysetmD service for Node Exporter.
