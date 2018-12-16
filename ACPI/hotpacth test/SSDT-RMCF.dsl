/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-RMCF.aml, Mon Feb 12 13:13:38 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000388 (904)
 *     Revision         0x02
 *     Checksum         0xB7
 *     OEM ID           "hack"
 *     OEM Table ID     "_RMCF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "_RMCF", 0x00000000)
{
    Device (RMCF)
    {
        Name (_ADR, Zero)  // _ADR: Address
        Method (HELP, 0, NotSerialized)
        {
            Debug = "TYPE indicates type of the computer. 0: desktop, 1: laptop"
            Debug = "HIGH selects display type. 1: high resolution, 2: low resolution"
            Debug = "IGPI overrides ig-platform-id or snb-platform-id"
            Debug = "DPTS for laptops only. 1: enables/disables DGPU in _WAK/_PTS"
            Debug = "SHUT enables shutdown fix. bit 0: disables _PTS code when Arg0==5, bit 1: SLPE=0 when Arg0==5"
            Debug = "XPEE enables XHC.PMEE fix. 1: set XHC.PMEE to zero in _PTS when Arg0==5"
            Debug = "SSTF enables _SST LED fix. 1: enables _SI._SST in _WAK when Arg0 == 3"
            Debug = "AUDL indicates audio layout-id for patched AppleHDA. Ones: no injection"
            Debug = "BKLT indicates the type of backlight control. 0: IntelBacklight, 1: AppleBacklight"
            Debug = "LMAX indicates max for IGPU PWM backlight. Ones: Use default, other values must match framebuffer"
        }

        Name (TYPE, One)
        Name (HIGH, One)
        Name (IGPI, 0x16260006)
        Name (DPTS, One)
        Name (SHUT, 0x02)
        Name (XPEE, One)
        Name (SSTF, Zero)
        Name (AUDL, Ones)
        Name (BKLT, Zero)
        Name (LMAX, Ones)
        Name (LEVW, Ones)
        Name (GRAN, Zero)
        Name (FBTP, Zero)
    }
}

