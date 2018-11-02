/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-ALL.aml, Sun May 20 20:28:18 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000005A4 (1444)
 *     Revision         0x02
 *     Checksum         0x74
 *     OEM ID           "ALL"
 *     OEM Table ID     "ALL"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "ALL", "ALL", 0x00000000)
{
    Method (XOSI, 1, NotSerialized)
    {
        Local0 = Package (0x08)
            {
                "Windows", 
                "Windows 2001", 
                "Windows 2001 SP2", 
                "Windows 2006", 
                "Windows 2006 SP1", 
                "Windows 2006.1", 
                "Windows 2009", 
                "Windows 2012"
            }
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

    Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x0A)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x17)
            {
                "Intel HD Graphics 5500"
            }, 

            "model", 
            Buffer (0x17)
            {
                "Intel HD Graphics 5500"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "AAPL,ig-platform-id", 
            Buffer (0x04)
            {
                 0x06, 0x00, 0x26, 0x16                         
            }
        })
    }

    Device (_SB.PCI0.IGPU.PNLF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, Zero)  // _UID: Unique ID
        Name (_STA, 0x0B)  // _STA: Status
    }

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x0C)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x13)
            {
                "Conexant CX20751/2"
            }, 

            "model", 
            Buffer (0x1F)
            {
                "Conexant 20751/2 SmartAudio HD"
            }, 

            "layout-id", 
            Buffer (0x04)
            {
                 0x03, 0x00, 0x00, 0x00                         
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "PinConfigurations", 
            Buffer (Zero){}
        })
    }

    Method (_SB.PCI0.RP03._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x0E)
            {
                "Realtek 8111"
            }, 

            "model", 
            Buffer (0x0E)
            {
                "Realtek 8111"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.XHC._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x1A)
            {
                "Apple USB XHCI controller"
            }, 

            "model", 
            Buffer (0x1A)
            {
                "Apple USB XHCI controller"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.SATA._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x18)
            {
                "Apple Intel Series AHCI"
            }, 

            "model", 
            Buffer (0x18)
            {
                "Apple Intel Series AHCI"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_SB.PCI0.IMEI._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If ((Arg2 == Zero))
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x08)
        {
            "AAPL,slot-name", 
            Buffer (0x09)
            {
                "Built in"
            }, 

            "name", 
            Buffer (0x15)
            {
                "AppleIntelIMEIDriver"
            }, 

            "model", 
            Buffer (0x15)
            {
                "AppleIntelIMEIDriver"
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }
        })
    }

    Method (_PR.CPU0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x02)
        {
            "plugin-type", 
            One
        })
    }

    Method (_SB.PCI0.PEG0.PEGP._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Return (Package (0x06)
        {
            "name", 
            Buffer (0x09)
            {
                "#display"
            }, 

            "IOName", 
            "#display", 
            "class-code", 
            Buffer (0x04)
            {
                 0xFF, 0xFF, 0xFF, 0xFF                         
            }
        })
    }

    Device (_SB.ALS0)
    {
        Name (_HID, "ACPI0008")  // _HID: Hardware ID
        Name (_CID, "smc-als")  // _CID: Compatible ID
        Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
        Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
        {
            Package (0x02)
            {
                0x64, 
                0x012C
            }
        })
    }
}


