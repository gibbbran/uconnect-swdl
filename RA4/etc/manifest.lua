-- This manifest was auto-generated by E:\RChen\Chrysler\CMC\KU_Oct1_Service_Release_NAFTA\tcfg\omap\update\makeSwdlManifest.pl.
-- Generated Thu Sep 26 14:51:18 2013
-- Do not hand edit this file.


local units =
{
    system_check =
    {
        name                = "SYSTEM CHECK",
        installer           = "system_module_check",
        market_env_name     = "VARIANT_MARKET",  
        variant_market      = "NA",
        product_env_name    = "VARIANT_PRODUCT",  
        variant_product     = "VP4",
        iso_full_hash_type  = "sha256"
        
    },
    ioc_bootloader =
    {
        name                = "IOC-BOOTLOADER",
        iocmode             = "no_check",
        installer           = "ioc_bootloader",
        dev_ipc_script      = "usr/share/scripts/dev-ipc.sh",
        bootloaderUpdater   = "usr/share/V850/cmciocblu.bin",
        bootloader          = "usr/share/V850/cmciocbl.bin",
        manifest_file       = "usr/share/V850/manifest.xml"
    },
    ioc =
    {
        name                = "IOC",
        installer           = "ioc",
        dev_ipc_script      = "usr/share/scripts/dev-ipc.sh",
        data                = "usr/share/V850/cmcioc.bin"
    },
    ifs =
    {
        name                          = "System",
        installer                     = "ifs",
        etfs_start_script             = "usr/share/scripts/etfs.sh",      
        postInstaller = 
        {         
            name                 = "files_pre_post_modifier",          
            files_to_modify      = "etc/system_etfs_postinstall.txt"
        }, 
        version_file                  = "etc/version.txt",
        config_file                   = "etc/nand_partition.txt",
        ifs_data                      = "usr/share/IFS/ifs-cmc.bin",
        ipl_data                      = "usr/share/IFS/nand-ipl-omap3730cmc.bin"
    },
    mmc_ifs =
    {
        name                = "System Data",
        installer           = "mmc",
        mmc_start_script    = "usr/share/scripts/mmc.sh",
        dst_dir             = "/fs/mmc0/app",
        postInstaller = 
        {         
            name                 = "files_pre_post_modifier",          
            files_to_modify      = "etc/system_mmc_postinstall.txt"
        }, 
        src_dir             = "usr/share/MMC_IFS_EXTENSION"
    },
    speech_service =
    {
        name                = "Speech",
        installer           = "mmc",
        mmc_start_script    = "usr/share/scripts/mmc.sh",
        dst_dir             = "/fs/mmc0/speech_service",
        preInstaller = 
        {         
            name                 = "files_pre_post_modifier",          
            files_to_modify      = "etc/speech_mmc_preinstall.txt"
        }, 
        src_dir             = "usr/share/SPEECH"
    },
    eq =
    {
        name                = "EQ",
        installer           = "mmc",
        mmc_start_script    = "usr/share/scripts/mmc.sh",
		  dst_dir             = "/fs/mmc0/eq",
        src_dir                = "usr/share/EQ"
    },
    skins =
    {
        name                = "SKINS",
        installer           = "mmc",
        mmc_start_script    = "usr/share/scripts/mmc.sh",
		  dst_dir             = "/fs/mmc0/app/share/hmi/skins/default/themeSwfs",
        src_dir                = "usr/share/SKINS"
    },
    xlets =
    {
        name                = "Apps",
        installer           = "xlets",
        mmc_start_script    = "usr/share/scripts/mmc.sh",
        dst_dir             = "/fs/mmc1/",
        preInstaller = 
        {         
            name                 = "files_pre_post_modifier",          
            files_to_modify      = "etc/xlets_mmc1_preinstall.txt"
        }, 		
        src_dir             = "usr/share/XLETS"
    },
    sierra_air_card =
    {
        name                = "Embedded Air Card",
        installer           = "sierra_wireless",
        boot_bin            = "usr/share/SIERRA_WIRELESS/boot_SWI6600.cwe",
        app_bin             = "usr/share/SIERRA_WIRELESS/appl_SWI6600.cwe",
        hold_port           = "/dev/swiusb4",
        install_port        = "/dev/swiusb1",
        env_name            = "VARIANT_ECELL",
        preInstaller = 
        {         
            name                 = "ioc_check",          
            dev_ipc_script       = "usr/share/scripts/dev-ipc.sh",
            bootloader_version_required = "11.37.1"
        },
        sierra_flow_control_chat = "usr/share/SIERRA_WIRELESS/sierra_wireless_disable_flowcontrol.chat",
        sierra_version_chat = "usr/share/SIERRA_WIRELESS/sierra_wireless_get_versions.chat",
        sierra_new_version_file = "usr/share/SIERRA_WIRELESS/sierra_wireless_new_version.txt"

    },
    xm_update =
    {
        name                = "XM Update",
        installer           = "xm_update",
        dir_root            = "usr/share/XM_FIRMWARE",
        env_name            = "VARIANT_SDARS",
        dev_ipc_script       = "usr/share/scripts/dev-ipc.sh",
        devc_ser8250_script  = "usr/share/scripts/devc-ser8250.sh",
        preInstaller = 
        {         
            name                 = "ioc_check",          
            dev_ipc_script       = "usr/share/scripts/dev-ipc.sh",
            bootloader_version_required = "11.39.1"
        }        
    },
    hd_update =
    {
        name                = "HD Update",
        installer           = "hd_update",
        dir_root            = "usr/share/HD_FIRMWARE",
        i2c_omap35xx_hd_script  = "usr/share/scripts/i2c_omap35xx_hd.sh",
    }
}

local version="13.38.52"
local module_type="APP"
local target_version_file="/etc/version.txt"

local manifest =
{
    version = version,
    module_type = module_type,
    target_version_file = target_version_file,
    parts = { units.system_check, units.ioc_bootloader, units.ioc, units.ifs, units.mmc_ifs, units.speech_service, units.eq, units.skins, units.xlets, units.sierra_air_card, units.xm_update, units.hd_update }
}
return manifest