source ./utils.sh

SCORE_BOARD=$(curl --insecure --silent https://localhost/server-status?auto | grep Scoreboard)
#echo $SCORE_BOARD

CONNECTION_KEEPALIVE="k"
CONNECTIONS=$(awk -F "k" '{print NF-1}' <<< "${SCORE_BOARD}")
#echo $CONNECTIONS

check_range $CONNECTIONS $1