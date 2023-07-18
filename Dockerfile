# Dockerfile for anchorectl demonstration

# use alpine:latest for a smaller image, but it often won't have any published CVEs
FROM registry.access.redhat.com/ubi8-minimal:latest
LABEL maintainer="pvn@novarese.net"
LABEL name="beta-anchorectl-pipeline"
LABEL org.opencontainers.image.title="beta-anchorectl-pipeline"
LABEL org.opencontainers.image.description="Simple image to test anchorectl with BETA Anchore Enterprise."

USER root 
# use date to force a unique build every time
RUN date > /image_build_timestamp
ENTRYPOINT /bin/false
