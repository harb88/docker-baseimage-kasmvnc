#!/usr/bin/env bash

if [ -f /opt/VirtualGL/bin/vglrun ] && \
   [ ! -z "${KASM_EGL_CARD}" ] && [ ! -z "${KASM_RENDERD}" ] && \
   [ -r "${KASM_EGL_CARD}" ] && [ -r "${KASM_RENDERD}" ] && \
   [ -w "${KASM_EGL_CARD}" ] && [ -w "${KASM_RENDERD}" ]; then
    echo "Starting Openbox with VirtualGL using EGL device ${KASM_EGL_CARD}"
    /opt/VirtualGL/bin/vglrun -d "${KASM_EGL_CARD}" /usr/bin/openbox-session
else
    echo "Starting Openbox"
    /usr/bin/openbox-session
fi