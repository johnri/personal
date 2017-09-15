#!/bin/bash
# CustomScriptForLinux.sh
# $1 base64 encoded script, passed in from ARM template
# $2..., arguments passed in from ARM template
echo $1 | base64 -d > _customScriptForLinux.sh
./_customScriptForLinux.sh "${@:2}"
