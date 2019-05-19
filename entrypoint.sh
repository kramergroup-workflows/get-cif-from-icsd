#!/bin/sh

if [ "$#" -lt 1 ]; then
    echo "Usage: get-cif-from-icsd <structure_id> [filename]\n"
    echo "       Files are written to /data if relative\n"
    echo "       Default filename: structure.cif\n"
    exit -1
fi

STRUCTURE_ID=${1}
OUTPUT_FILE=${2-structure.cif}

# First call the landing page to get session cookies and authorisation
curl -L -c /tmp/cookies "http://icsd.cds.rsc.org/search/basic.xhtml" &> /dev/null

# Then access the structure record
curl -L -b /tmp/cookies "http://icsd.cds.rsc.org/ws/cif/multiple?filename=ICSD&filetype=single&idnum=${STRUCTURE_ID}" 2>/dev/null | tee ${OUTPUT_FILE}
exit $?