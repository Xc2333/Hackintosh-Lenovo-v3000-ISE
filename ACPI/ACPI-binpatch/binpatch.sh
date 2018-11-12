#!/bin/sh
#
#  binpatch.sh
#
# script for Lenovo v3000-ISE ACPI tables static device and method's rename patching.
#
#  Created by Xc233 on 2018/11/11.
#
# list of Device and method's names should be renamed...
binpatch=./binpatch
EHC1=45484331
EHC2=45484332
GFX0=47465830
SAT0=53415430
B0D3=42304433
_DSM=5f44534d
_OSI=5f4f5349
EC0=4543305F

# so we patching...
EH01=45483031
EH02=45483032
IGPU=49475055
SATA=53415441
HDAU=48444155
XDSM=5844534d
XOSI=584f5349
EC=45435F5F

# patching....
find=($EHC1 $EHC2 $GFX0 $SAT0 $B0D3 $_DSM $_OSI $EC0)
repl=($EH01 $EH02 $IGPU $SATA $HDAU $XDSM $XOSI $EC)
for i in 0 1 2 3 4 5 6 7;
do
$binpatch ${find[i]}  ${repl[i]} DSDT.aml
$binpatch ${find[i]}  ${repl[i]} SSDT-2-CB-01.aml
done

