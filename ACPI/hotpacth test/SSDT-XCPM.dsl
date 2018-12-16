/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-XCPM.aml, Mon Feb 12 13:13:38 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000060 (96)
 *     Revision         0x02
 *     Checksum         0xF3
 *     OEM ID           "hack"
 *     OEM Table ID     "_XCPM"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_XCPM", 0x00000000)
{
    External (_PR_.CPU0, DeviceObj)    // (from opcode)

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
}

