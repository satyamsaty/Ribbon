#!/bin/bash

if [ $2 == null ]
   then
ssh -o  "stricthostkeychecking no" satykumar@10.54.81.66 "export MARLIN_ROOT=/ats/tools/SbcLicenseJar/marlin ;setenv MARLIN_ROOT /ats/tools/SbcLicenseJar/marlin; java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -w sample_lic && java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -i sample_lic -l $1 sonusLicense.xml /home/Administrator/ $1  "
ssh -o UserKnownHostsFile=/dev/null -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key   linuxadmin@$1 'sudo /opt/sonus/sbx/bin/licenseFileTool install b1 /home/Administrator/sonusLicense.xml'
fi
if [ $1 == null ]
   then
ssh -o  "stricthostkeychecking no" satykumar@10.54.81.66 "export MARLIN_ROOT=/ats/tools/SbcLicenseJar/marlin ;setenv MARLIN_ROOT /ats/tools/SbcLicenseJar/marlin; java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -w sample_lic && java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -i sample_lic -l $2 sonusLicense.xml /home/Administrator/ $2  "
ssh -o UserKnownHostsFile=/dev/null -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key   linuxadmin@$2 'sudo /opt/sonus/sbx/bin/licenseFileTool install b1 /home/Administrator/sonusLicense.xml'
fi
if [ $1 != null ] && [ $2 != null ]
   then
ssh -o  "stricthostkeychecking no" satykumar@10.54.81.66 "export MARLIN_ROOT=/ats/tools/SbcLicenseJar/marlin ;setenv MARLIN_ROOT /ats/tools/SbcLicenseJar/marlin; java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -w sample_lic && java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -i sample_lic -l $1 sonusLicense.xml /home/Administrator/ $1  "
ssh -o UserKnownHostsFile=/dev/null -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key   linuxadmin@$1 'sudo /opt/sonus/sbx/bin/licenseFileTool install b1 /home/Administrator/sonusLicense.xml'
ssh -o  "stricthostkeychecking no" satykumar@10.54.81.66 "export MARLIN_ROOT=/ats/tools/SbcLicenseJar/marlin ;setenv MARLIN_ROOT /ats/tools/SbcLicenseJar/marlin; java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -w sample_lic && java -jar /ats/tools/SbcLicenseJar/orca/runTransform.jar -i sample_lic -l $2 sonusLicense.xml /home/Administrator/ $2  "
ssh -o UserKnownHostsFile=/dev/null -o  "stricthostkeychecking no" -p 2024 -i /home/ansible/cloud_ats.key   linuxadmin@$2 'sudo /opt/sonus/sbx/bin/licenseFileTool install b1 /home/Administrator/sonusLicense.xml'
fi
