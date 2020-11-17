ARG BASE_VERSION
FROM ajslater/python-alpine:${BASE_VERSION}
LABEL maintainer="AJ Slater <aj@slater.net>"
ARG VERSION
LABEL version=$VERSION

RUN echo "*** install codex system runtime packages ***" && \
 apk add --no-cache \
   jpeg \
   libffi \
   libwebp \
   openssl \
   yaml \
   unrar \
   zlib
