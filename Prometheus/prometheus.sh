# Pull Prometheus Docker image
docker pull prom/prometheus

# Create a directory for Prometheus configuration and data
mkdir -p /opt/prometheus/data /opt/prometheus/config

# Download default Prometheus configuration
curl -o /opt/prometheus/config/prometheus.yml https://raw.githubusercontent.com/prometheus/prometheus/main/documentation/examples/prometheus.yml

# Run Prometheus container
docker run -d --name prometheus \
  -v /opt/prometheus/data:/prometheus \
  -v /opt/prometheus/config/prometheus.yml:/etc/prometheus/prometheus.yml \
  -p 9090:9090 \
  prom/prometheus
