#!/bin/tcsh -xef

# run as tcsh -xef estimate_ACF_parameters.sh

set runs = 1

set n = 1
set subj = $argv[$n]

# create directory for ACF curve files
mkdir files_ACF

# -- estimate blur for each run in errts --
cp blur.errts.1D old.blur.errts.1D
rm blur.errts.1D
touch blur.errts.1D

# restrict to uncensored TRs, per run
foreach run ( $runs )
    set trs = `1d_tool.py -infile X.xmat.1D -show_trs_uncensored encoded \
                          -show_trs_run $run`
    if ( $trs == "" ) continue
    3dFWHMx -detrend -mask full_mask.$subj+tlrc                          \
            -ACF files_ACF/out.3dFWHMx.ACF.errts.r$run.1D                \
            errts.${subj}+tlrc"[$trs]" >> blur.errts.1D
end
