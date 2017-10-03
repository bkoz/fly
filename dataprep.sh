#!/bin/bash
# Remove non-printable chars from file:
tr -cd '\11\12\15\40-\176' < $1 | sed s'/N,/,/' | sed s'/W,/,/'


