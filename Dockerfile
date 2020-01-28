# see hooks/build and hooks/.config
ARG BASE_IMAGE_PLATFORM
FROM --platform=linux/${BASE_IMAGE_PLATFORM} alpine

# see hooks/post_checkout
ARG ARCH
COPY qemu-${ARCH}-static /usr/bin

RUN uname -ar > /uname.build
RUN apk --update add file
