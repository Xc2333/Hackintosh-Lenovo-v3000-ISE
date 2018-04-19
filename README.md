# Hackintosh-Lenovo-v3000-ISE
    
This repository is for hackintosh on Lenovo v3000.

Change log：4/14/2018

•Merge 2048M Graphics memory and 32M minStolenSize to one patch,now no need IntelGraphicsDVMTFixup.kext.
NOTE:Just for after install !

Change log：4/02/2018

•Update Clover 4423 and upload full EFI flie,update SSDT-ALL.dsl.

Change log：3/19/2018

•Update New batery patch,only use RECB/WECB method.
 
Change log：3/05/2018

•Update B0D3->HDAU patch.

Change log：2/22/2018

•Add SSDT-ASL0 to the SSDT-HACK.dsl to store the brightless after reboot.

Change log：2/13/2018

•I have done this SSDT-HACK.aml，now all DSDT patches can be replaced by this except battery patch，I'm not going to add a    battery patch to SSDT-HACK at the moment.

•This SSDT-HACK.aml can fix Audio、HD5500 Graphics、USB has injected properly、Brightness、XCPM mode、OS check.

•Note:I still use the RMCF to control these hotpatches,because it will be convenient for me to debug. 
It is best to use it after the installation is completed.
