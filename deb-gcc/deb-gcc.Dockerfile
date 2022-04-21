# Get the GCC preinstalled image from Docker Hub
FROM debian:latest

# Specify the working directory
WORKDIR /usr/src/pj2

# Use GCC to compile source file
RUN set -ex; \
	apt-get update && \
	apt-get install -y --no-install-recommends \
		nano \
		gcc \
	&& export TERM=xterm

# Run the program output from the previous step
CMD ["bash"]