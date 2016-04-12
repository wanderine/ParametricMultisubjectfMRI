#!/bin/bash
#
# Script: FeatVoxFWE.sh
# Purpose: Report the voxel-wise FWE threshold for a FEAT analysis
# Author: T. E. Nichols
# Version: $Id$
#


###############################################################################
#
# Environment set up
#
###############################################################################

shopt -s nullglob # No-match globbing expands to null
Tmp=/tmp/`basename $0`-${$}-
trap CleanUp INT

###############################################################################
#
# Functions
#
###############################################################################

Usage() {
cat <<EOF
Usage: `basename $0` FeatDir [FeatDir2 ...]

Report the FWE voxel-wise threshold for analysis in FeatDir

_________________________________________________________________________
EOF
exit
}

CleanUp () {
    /bin/rm -f /tmp/`basename $0`-${$}-*
    exit 0
}


###############################################################################
#
# Parse arguments
#
###############################################################################

while (( $# > 1 )) ; do
    case "$1" in
        "-help")
            Usage
            ;;
#         "-t")
#             shift
#             tval="$1"
#             shift
#             ;;
        -*)
            echo "ERROR: Unknown option '$1'"
            exit 1
            break
            ;;
        *)
            break
            ;;
    esac
done

if (( $# < 1 )) ; then
    Usage
fi

###############################################################################
#
# Script Body
#
###############################################################################

for d in "$@" ; do

    if [ ! -d "$d" ] ; then
	echo "ERROR: No FEAT directory"
	continue
    fi

    pushd "$d" > /dev/null

    if [ ! -f stats/smoothness ] ; then
	echo "ERROR: No smoothness file"
	popd > /dev/null
	continue
    fi

    if [ $(imtest stats/zstat1) = 0 ]  ; then
	echo "ERROR: No zstat"
	popd > /dev/null
	continue
    fi

    Vol="$(awk '/VOLUME/{print $2}' stats/smoothness)"
    ReselSz="$(awk '/RESELS/{print $2}' stats/smoothness)"

    ReselCnt="$(echo "$Vol / $ReselSz" | bc -l)"

    # FWE 5% threshold
    Thr="$(ptoz 0.05 -g "$ReselCnt")"

    # Any voxels significant?
    MaxZ="$(fslstats stats/zstat1 -R | awk '{print $2}')"

    AnySig="$(echo "$MaxZ >= $Thr" | bc -l)"

    echo "$d" "$Thr" "$AnySig"

    popd > /dev/null
done


###############################################################################
#
# Exit & Clean up
#
###############################################################################

CleanUp

