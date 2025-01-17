#!/bin/bash

CMD="python /Logstar-online-Stream/logstar-receiver.py"

# handle debug mode (-v)
if [ "$LOGSTAR_DEBUG" = true ]; then
    LOGSTAR_DEBUG="-v"
 else
    LOGSTAR_DEBUG=""
fi

# handle logging to file (-log)
if [[ -v LOGSTAR_LOGFILE ]]; then
    LOGSTAR_LOGGING="-log $LOGSTAR_LOGFILE"
else
    LOGSTAR_LOGGING=""
fi

bash -c "$CMD $LOGSTAR_DEBUG $LOGSTAR_LOGGING $LOGSTAR_PARAMS"
