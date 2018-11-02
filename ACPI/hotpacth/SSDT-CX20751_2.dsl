/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-CX20751_2.aml, Mon Feb 12 13:13:38 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000009E (158)
 *     Revision         0x02
 *     Checksum         0xD5
 *     OEM ID           "hack"
 *     OEM Table ID     "_HDEF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_HDEF", 0x00000000)
{
    External (_SB_.PCI0.HDEF, DeviceObj)    // (from opcode)

    Method (_SB.PCI0.HDEF._DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
    {
        If (!Arg2)
        {
            Return (Buffer (One)
            {
                 0x03                                           
            })
        }

        Local0 = Package (0x06)
            {
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
                Buffer (Zero) {}
            }
    }
}

