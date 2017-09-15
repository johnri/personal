#!/bin/bash
# CustomScriptForLinux.sh
# $1 base64 encoded script, passed in from ARM template
# $2..., arguments passed in from ARM template
pushd ~
echo $1 | base64 -d > _CustomScriptForLinux.sh
./_CustomScriptForLinux.sh "${@:2}"
popd
