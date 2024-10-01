#!/bin/bash
# Catching incorrect params for set up command
if [[ $# -ne 1 ]];
then
	echo "Usage: ./setup_little_med <Container Name>"
	exit 1
fi

container_name=$1

sudo lxc-attach -- bash -c "mkdir Patients General Legal | cd Patients | mkdir Data | cd ../General | mkdir Historical | cd ../Public | mkdir Information Documents"

sudo lxc file push little_patient_files.csv $container_name/root/Patients/Data/patient_files.csv

sudo lxc file push little_hospital_hist.xls $container_name/root/General/Historical/hospital_hist.xls

sudo lxc file push little_insurance.csv $container_name/root/Legal/Information/insurance.csv
