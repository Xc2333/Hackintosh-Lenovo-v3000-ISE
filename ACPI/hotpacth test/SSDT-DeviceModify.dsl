/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-DeviceModify.aml, Sun Dec 16 18:15:00 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000001CD (461)
 *     Revision         0x02
 *     Checksum         0x5F
 *     OEM ID           "ALL"
 *     OEM Table ID     "ALL"
 *     OEM Revision     0x00000012 (18)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "ALL", "ALL", 0x00000012)
{
    Method (_SB.PCI0.PEG0.PEGP._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
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
                 0xFF, 0xFF, 0xFF, 0xFF                           // ....
            }
        })
    }

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
            })
        }

        Return (Package (0x08)
        {
            "layout-id", 
            Buffer (0x04)
            {
                 0x03, 0x00, 0x00, 0x00                           // ....
            }, 

            "hda-gfx", 
            Buffer (0x0A)
            {
                "onboard-1"
            }, 

            "PinConfigurations", 
            Buffer (Zero){}, 
            "MaximumBootBeepVolume", 
            Zero
        })
    }

    Scope (_SB)
    {
        Device (PNLF)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
            Name (_CID, "backlight")  // _CID: Compatible ID
            Name (_UID, 0x0A)  // _UID: Unique ID
            Name (_STA, 0x0B)  // _STA: Status
        }
    }

    Method (_PR.CPU0._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                             // .
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
        Local0 = Package (0x01)
            {
                "Windows 2013"
            }
        Return ((Ones != Match (Local0, MEQ, Arg0, MTR, Zero, Zero)))
    }

    Device (_SB.ALS0)
    {
        Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
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

