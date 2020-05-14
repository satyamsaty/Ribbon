#!/bin/bash

export MARLIN_ROOT=/ats/tools/SbcLicenseJar/marlin ;setenv MARLIN_ROOT /ats/tools/SbcLicenseJar/marlin; java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -w sample_lic && java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -i sample_lic -l $1 sonusLicense.xml /home/Administrator/ $1 $2 
ssh -o UserKnownHostsFile=/dev/null -o  "stricthostkeychecking no" -p 2024 -i /home/satykumar/cloud_ats.key   linuxadmin@$1 'sudo /opt/sonus/sbx/bin/licenseFileTool install b1 /home/Administrator/sonusLicense.xml'
