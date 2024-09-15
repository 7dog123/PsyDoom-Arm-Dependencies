# Use a base image
FROM ubuntu:24.04

# Update and install dependencies
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive TZ=US/Central \
    apt-get install -y gcc g++ cmake make libgl-dev libvulkan-dev libpulse-dev libx11-dev \
    libxft-dev libxcursor-dev libxext-dev libxfixes-dev libxi-dev libxinerama-dev libxrandr-dev \
    libxxf86vm-dev libfreetype6-dev libfontconfig1-dev coreutils desktop-file-utils fakeroot fuse \
    libgdk-pixbuf2.0-dev patchelf python3-pip python3-setuptools squashfs-tools strace util-linux \
    zsync imagemagick-6.q16hdri wget libsdl2-dev \
    && rm -rf /var/lib/apt/lists/*
