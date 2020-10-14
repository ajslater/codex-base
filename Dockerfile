ARG BASE_VERSION
FROM ajslater/python-alpine:${BASE_VERSION}
LABEL maintainer="AJ Slater <aj@slater.net>"
ARG PKG_VERSION
LABEL version=python-alpine${BASE_VERSION}_${PKG_VERSION}

RUN echo "*** install codex system runtime packages ***" && \
 apk add --no-cache \
   jpeg \
   libffi \
   libwebp \
   openssl \
   yaml \
   unrar \
   zlib
