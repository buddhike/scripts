SCRIPT_DIR=$(dirname "$0")

# PATH
export PATH="/Applications/p4merge.app/Contents/MacOS:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/flink/bin:$PATH"
export PATH=/usr/local/kafka/bin:$PATH
export PATH="$HOME/.toolbox/bin":$PATH

# GIT
export GIT_PAGER=more

# GO
export GOPROXY=https://goproxy.io,direct

# JAVA
export JAVA_TOOLS_OPTIONS="-Dlog4j2.formatMsgNoLookups=true"

# ALIAS
alias p4merge='/Applications/p4merge.app/Contents/MacOS/p4merge'
alias ig=isengardcli
alias pets='pet search | pbcopy'
alias pete='pet exec'

# SECRETS
source ${SCRIPT_DIR}/secrets.sh
