#!/usr/bin/env bash

ESP32_PORT=/dev/ttyUSB0

cs_build_and_deploy() {
  cs_build || return 1
  cs_deploy || return 1
}

cs_build() {
  idf.py build
}

cs_deploy() {
  idf.py -p $ESP32_PORT flash
}

cs_monitor() {
  idf.py -p $ESP32_PORT monitor
}
