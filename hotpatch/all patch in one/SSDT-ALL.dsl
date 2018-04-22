/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180313 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-ALL.aml, Sun Apr 22 21:37:23 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000647 (1607)
 *     Revision         0x02
 *     Checksum         0x76
 *     OEM ID           "hack"
 *     OEM Table ID     "HACK"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180313 (538444563)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "HACK", 0x00000000)
{
    
    Method (_SB.PCI0.IGPU._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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
                "Conexant Cx20751/2"
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

    Method (_SB.PCI0.SAT0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
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

    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        Name (RMCF, Package (0x02)
        {
            "XHC", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04)
                {
                     0x0F, 0x00, 0x00, 0x00                         
                }, 

                "ports", 
                Package (0x0E)
                {
                    "HS01", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x01, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS02", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x02, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS03", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        Zero, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x03, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS04", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x04, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS06", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x06, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "HS07", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0xFF, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x07, 0x00, 0x00, 0x00                         
                        }
                    }, 

                    "SSP1", 
                    Package (0x04)
                    {
                        "UsbConnector", 
                        0x03, 
                        "port", 
                        Buffer (0x04)
                        {
                             0x0C, 0x00, 0x00, 0x00                         
                        }
                    }
                }
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
