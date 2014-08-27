#!/bin/bash

SubjectOld="sub00156"

LinearRegistration="set fmri(regstandard_nonlinear_yn) 0"
NonLinearRegistration="set fmri(regstandard_nonlinear_yn) 1"

ConfoundsOld="set fmri(confoundevs) 0"

# Threshold type
# 1 = uncorrected, 2 = voxel corrected, 3 = cluster corrected
ThresholdMethodOld="set fmri(thresh) 3"
ThresholdMethodNew="set fmri(thresh) 3"

# Set threshold
ThresholdOld='0.05'
ThresholdNew='0.05'

# Enter old number of TRs per scan, do not change
TRs_Old=119

# Smoothing
SmoothingOld="set fmri(smooth) 6.0"

# Boxcar off period
BoxcarOffOld="set fmri(off1) 30"

# Boxcar on period
BoxcarOnOld="set fmri(on1) 30"

# Highpass filter cutoff old
HighPassOld="set fmri(paradigm_hp) 60"

