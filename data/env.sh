export SUPERVISORD_RUNDIR=${SUPERVISORD_RUNDIR:-/var/run}
export SUPERVISORD_LOGDIR=${SUPERVISORD_LOGDIR:-/var/log/druid}
export SUPERVISORD_MINFDS=${SUPERVISORD_MINFDS:-10000}
export SUPERVISORD_MINPROCS=${SUPERVISORD_MINPROCS:-200}
export SUPERVISORD_UNIX_HTTP_SERVER_FILE=${SUPERVISORD_UNIX_HTTP_SERVER_FILE:-/var/run/supervisor.sock}

export HOST_IP=${HOST_IP:-`curl http://169.254.169.254/latest/meta-data/local-ipv4`}
export DRUID_ROOT=${DRUID_ROOT:-/opt/druid}
export DRUID_STORAGE_TYPE=${DRUID_STORAGE_TYPE:-postgresql}
export DRUID_STORAGE_CONN_STR=${DRUID_STORAGE_CONN_STR:-localhost:5432/druid}
export DRUID_STORAGE_USER=${DRUID_STORAGE_USER:-druid}
export DRUID_STORAGE_PASS=${DRUID_STORAGE_PASS:-diurd}

export AWS_ACCESS_KEY=${AWS_ACCESS_KEY:-diurd}
export AWS_SECRET_KEY=${AWS_SECRET_KEY:-diurd}

export TOTAL_MEM__KB=`cat /proc/meminfo | grep MemTotal | awk '{ print $2 }'`
export TOTAL_MEM_MB=`expr $TOTAL_MEM__KB / 1024`
export TOTAL_MEM_MB_Q1=`expr $TOTAL_MEM_MB / 4`

export DRUID_OVERLORD_Xmx=${DRUID_OVERLORD_Xmx:-$TOTAL_MEM_MB_Q1}
export DRUID_OVERLORD_Xms=${DRUID_OVERLORD_Xms:-$TOTAL_MEM_MB_Q1}

export DRUID_MIDDLEMANAGER_Xmx=${DRUID_MIDDLEMANAGER_Xmx:-64}
export DRUID_MIDDLEMANAGER_Xms=${DRUID_MIDDLEMANAGER_Xms:-64}

export DRUID_INDEXER_LOGS_S3_BUCKET=${DRUID_INDEXER_LOGS_S3_BUCKET:-druid}
export DRUID_INDEXER_LOGS_S3_PREFIX=${DRUID_INDEXER_LOGS_S3_PREFIX:-prod/logs/v1}



