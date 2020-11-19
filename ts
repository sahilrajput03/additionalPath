#!/bin/bash
tsnd --respawn --clear --quiet $*
# Tip: Thought you don't need --respawn tag for scripts like express server.
# This file will only execute with npmBackup executable.