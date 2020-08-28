#! /bin/bash
DEPLOY_APPS=''
ADMIN_SERVER_APP=$1
EVENT_SERVER_APP=$2
LOGIN_SERVER_APP=$3
echo "ADMIN_SERVER_APP: $ADMIN_SERVER_APP === EVENT_SERV_ERAPP:$EVENT_SERVER_APP === LOGIN_SERVER_APP:$LOGIN_SERVER_APP"
if [ $ADMIN_SERVER_APP == true ]
then
   DEPLOY_APPS="fac-admin-server"
fi
if [ $EVENT_SERVER_APP == true ]
then
   DEPLOY_APPS="$DEPLOY_APPS,fac-event-server"
fi
if [ $LOGIN_SERVER_APP == true ]
then
   DEPLOY_APPS="$DEPLOY_APPS,fac-login-server"
fi
DEPLOY_APPS=${DEPLOY_APPS#,}
echo "Deploying apps list: $DEPLOY_APPS"