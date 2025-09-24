# TOKEN SETUP
# jf c add --user=krishnam --interactive=true --url=https://psazuse.jfrog.io --overwrite=true 

# Config - Artifactory info
export JF_HOST="psazuse.jfrog.io"  JFROG_CLI_LOG_LEVEL="DEBUG" 
export JF_RT_URL="https://${JF_HOST}"  TS="cmd.$(date '+%Y-%m-%d-%H-%M')" 

echo " JF_RT_URL: $JF_RT_URL \n JFROG_CLI_LOG_LEVEL: $JFROG_CLI_LOG_LEVEL \n "


jf rt sp "a=1;b=2,3;bulk=${TS}" --spec ./spec-files.json

