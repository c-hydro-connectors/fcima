#!/bin/bash -e

#-----------------------------------------------------------------------------------------
# Script information
script_name='CONNECT DOWNLOADER - GROUND NETWORK WS'
script_version="1.0.0"
script_date='2023/06/22'

virtualenv_folder='/home/drought/DRYES/envs/dryes_python3/'
virtualenv_name='fp_virtualenv_python3_dryes_libraries'
script_folder='/home/drought/DRYES/libraries/connectors/drops_1/'
#-----------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------
# Get file information
script_file='/home/drought/DRYES/libraries/connectors/drops_1/connect_downloader_drops_ws.py'
setting_file='/home/drought/DRYES/libraries/connectors/drops_1/connect_downloader_drops_ws_example.json'

# Get information (-u to get gmt time)
time_now=$(date -u +"%Y%m%d%H00")
# time_now='201807230000' # DEBUG 
#-----------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------
# Activate virtualenv
export PATH=$virtualenv_folder/bin:$PATH
source activate $virtualenv_name

# Add path to pythonpath
export PYTHONPATH="${PYTHONPATH}:$script_folder"
#-----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script start
echo " ==================================================================================="
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> START ..."
echo " ==> COMMAND LINE: " python3 $script_file -settings_file $setting_file #-time $time_now

# Run python script (using setting and time)
python3 $script_file -settings_file $setting_file #-time $time_now

# Info script end
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> ... END"
echo " ==> Bye, Bye"
echo " ==================================================================================="
# ----------------------------------------------------------------------------------------
