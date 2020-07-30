#!/bin/bash

          
cd ~/sastevaluation/juliet_c_13
sudo python3 import_log.py
sudo python3 report.py
mv report0.html ../report.html

echo -e "###################################################################################### "
echo -e "###################################################################################### "
echo -e "Generated SAST for C Evaluation Report in: report.html"
echo -e "###################################################################################### "
echo -e "###################################################################################### "
