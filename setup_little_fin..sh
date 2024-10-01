#!/bin/bash
# Catching incorrect params for set up command
if [[ $# -ne 1 ]];
then
	echo "Usage: ./setup_little_fin <Container Name>"
	exit 1
fi

container_name=$1

sudo lxc-attach -- bash -c "mkdir Customer_Service Services Activity | cd Customer_Service | mkdir Resources | cd ../Services | mkdir Credit_Card Retirement | cd ../Activity | mkdir Transfers"

sudo lxc file push little_bankacc_customer.csv $container_name/root/Customer_Service/bankacc_customer.csv

sudo lxc file push little_creditcard_info.csv $container_name/root/Services/Credit_Card/creditcard_info.csv 

sudo lxc file push little_moneytransfer_hist.xls $container_name/root/Activity/Transfers/moneytransfer_hist.xls
