/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BatteryFix.aml, Sun Dec 16 18:15:00 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000A65 (2661)
 *     Revision         0x02
 *     Checksum         0xF6
 *     OEM ID           "hack"
 *     OEM Table ID     "batt"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "batt", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.B1CT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.B1ST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0.PBIF, PkgObj)
    External (_SB_.PCI0.LPCB.EC__.BAT0.PBST, PkgObj)
    External (_SB_.PCI0.LPCB.EC__.BCNT, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FUSH, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.FUSL, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SMAD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SMCM, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SMPR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.SMST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC__.VPC0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC__.VPC0.VBAC, IntObj)
    External (_SB_.PCI0.LPCB.EC__.VPC0.VBCT, IntObj)
    External (_SB_.PCI0.LPCB.EC__.VPC0.VBFC, IntObj)
    External (_SB_.PCI0.LPCB.EC__.VPC0.VBPV, IntObj)
    External (_SB_.PCI0.LPCB.EC__.VPC0.VBRC, IntObj)
    External (B1CT, IntObj)
    External (B1ST, IntObj)
    External (BCNT, UnknownObj)
    External (EC__, DeviceObj)
    External (ECON, FieldUnitObj)
    External (FUSH, IntObj)
    External (FUSL, IntObj)
    External (P80H, FieldUnitObj)
    External (PBIF, IntObj)
    External (PBST, IntObj)
    External (SMAD, UnknownObj)
    External (SMCM, UnknownObj)
    External (SMPR, UnknownObj)
    External (SMST, IntObj)
    External (VBAC, UnknownObj)
    External (VBCT, IntObj)
    External (VBFC, UnknownObj)
    External (VBPV, UnknownObj)
    External (VBRC, UnknownObj)

    Method (_SB.PCI0.LPCB.EC.RE1B, 1, NotSerialized)
    {
        OperationRegion (EMAM, EmbeddedControl, Arg0, One)
        Field (EMAM, ByteAcc, NoLock, Preserve)
        {
            BYTE,   8
        }

        Return (BYTE) /* \_SB_.PCI0.LPCB.EC__.RE1B.BYTE */
    }

    Method (_SB.PCI0.LPCB.EC.RECB, 2, Serialized)
    {
        Arg1 = ((Arg1 + 0x07) >> 0x03)
        Name (TEMP, Buffer (Arg1){})
        Arg1 += Arg0
        Local0 = Zero
        While ((Arg0 < Arg1))
        {
            TEMP [Local0] = RE1B (Arg0)
            Arg0++
            Local0++
        }

        Return (TEMP) /* \_SB_.PCI0.LPCB.EC__.RECB.TEMP */
    }

    Method (_SB.PCI0.LPCB.EC.WE1B, 2, NotSerialized)
    {
        OperationRegion (EMAM, EmbeddedControl, Arg0, One)
        Field (EMAM, ByteAcc, NoLock, Preserve)
        {
            BYTE,   8
        }

        BYTE = Arg1
    }

    Method (_SB.PCI0.LPCB.EC.WECB, 3, Serialized)
    {
        Arg1 = ((Arg1 + 0x07) >> 0x03)
        Name (TEMP, Buffer (Arg1){})
        TEMP = Arg2
        Arg1 += Arg0
        Local0 = Zero
        While ((Arg0 < Arg1))
        {
            WE1B (Arg0, DerefOf (TEMP [Local0]))
            Arg0++
            Local0++
        }
    }

    Method (\_SB.PCI0.LPCB.EC.VPC0.MHPF, 1, NotSerialized)
    {
        Name (BFWB, Buffer (0x25){})
        CreateByteField (BFWB, Zero, FB0)
        CreateByteField (BFWB, One, FB1)
        CreateByteField (BFWB, 0x02, FB2)
        CreateByteField (BFWB, 0x03, FB3)
        CreateField (BFWB, 0x20, 0x0100, FB4)
        CreateByteField (BFWB, 0x24, FB5)
        If ((SizeOf (Arg0) <= 0x25))
        {
            If ((SMPR != Zero))
            {
                FB1 = SMST /* External reference */
            }
            Else
            {
                BFWB = Arg0
                SMAD = FB2 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHPF.FB2_ */
                SMCM = FB3 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHPF.FB3_ */
                BCNT = FB5 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHPF.FB5_ */
                Local0 = FB0 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHPF.FB0_ */
                If (((Local0 & One) == Zero))
                {
                    WECB (0x64, 0x0100, FB4)
                }

                SMST = Zero
                SMPR = FB0 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHPF.FB0_ */
                Local1 = 0x03E8
                While (Local1)
                {
                    Sleep (One)
                    Local1--
                    If (((SMST && 0x80) || (SMPR == Zero)))
                    {
                        Break
                    }
                }

                Local0 = FB0 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHPF.FB0_ */
                If (((Local0 & One) != Zero))
                {
                    FB4 = RECB (0x64, 0x0100)
                }

                FB1 = SMST /* External reference */
                If (((Local1 == Zero) || !(SMST && 0x80)))
                {
                    SMPR = Zero
                    FB1 = 0x92
                }
            }

            Return (BFWB) /* \_SB_.PCI0.LPCB.EC__.VPC0.MHPF.BFWB */
        }
    }

    Method (\_SB.PCI0.LPCB.EC.VPC0.MHIF, 1, NotSerialized)
    {
        P80H = 0x50
        If ((Arg0 == Zero))
        {
            Name (RETB, Buffer (0x0A){})
            Name (BUF1, Buffer (0x08){})
            BUF1 = RECB (0x14, 0x40)
            CreateByteField (BUF1, Zero, FW0)
            CreateByteField (BUF1, One, FW1)
            CreateByteField (BUF1, 0x02, FW2)
            CreateByteField (BUF1, 0x03, FW3)
            CreateByteField (BUF1, 0x04, FW4)
            CreateByteField (BUF1, 0x05, FW5)
            CreateByteField (BUF1, 0x06, FW6)
            CreateByteField (BUF1, 0x07, FW7)
            RETB [Zero] = FUSL /* External reference */
            RETB [One] = FUSH /* External reference */
            RETB [0x02] = FW0 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW0_ */
            RETB [0x03] = FW1 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW1_ */
            RETB [0x04] = FW2 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW2_ */
            RETB [0x05] = FW3 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW3_ */
            RETB [0x06] = FW4 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW4_ */
            RETB [0x07] = FW5 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW5_ */
            RETB [0x08] = FW6 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW6_ */
            RETB [0x09] = FW7 /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.FW7_ */
            Return (RETB) /* \_SB_.PCI0.LPCB.EC__.VPC0.MHIF.RETB */
        }
    }

    Method (\_SB.PCI0.LPCB.EC.VPC0.SMTF, 1, NotSerialized)
    {
        If ((Arg0 == Zero))
        {
            If ((RECB (0xC6, 0x10) == Zero))
            {
                Return (Zero)
            }

            If ((RECB (0xD3, 0x10) == Zero))
            {
                Return (Zero)
            }

            Local0 = RECB (0xCC, 0x10)
            Local0 *= 0x0A
            VBFC = Local0
            Local1 = RECB (0xC2, 0x10)
            Local1 *= 0x0A
            VBRC = Local1
            If ((VBFC > VBRC))
            {
                VBPV = RECB (0xC6, 0x10)
                VBAC = RECB (0xD3, 0x10)
                Local0 -= Local1
                Local1 = (VBAC * VBPV)
                Local3 = (Local0 * 0x03E8)
                Local3 = (Local3 * 0x3C)
                VBCT = (Local3 / Local1)
                Return (VBCT) /* External reference */
            }
            Else
            {
                Return (Zero)
            }
        }

        If ((Arg0 == One))
        {
            Return (Zero)
        }

        Return (Zero)
    }

    Method (\_SB.PCI0.LPCB.EC.VPC0.GBID, 0, Serialized)
    {
        Name (GBUF, Package (0x04)
        {
            Buffer (0x02)
            {
                 0x00, 0x00                                       // ..
            }, 

            Buffer (0x02)
            {
                 0x00, 0x00                                       // ..
            }, 

            Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            }, 

            Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            }
        })
        DerefOf (GBUF [Zero]) [Zero] = B1CT /* External reference */
        DerefOf (GBUF [One]) [Zero] = Zero
        Name (BUF1, Buffer (0x08){})
        BUF1 = RECB (0x14, 0x40)
        CreateByteField (BUF1, Zero, FW0)
        CreateByteField (BUF1, One, FW1)
        CreateByteField (BUF1, 0x02, FW2)
        CreateByteField (BUF1, 0x03, FW3)
        CreateByteField (BUF1, 0x04, FW4)
        CreateByteField (BUF1, 0x05, FW5)
        CreateByteField (BUF1, 0x06, FW6)
        CreateByteField (BUF1, 0x07, FW7)
        DerefOf (GBUF [0x02]) [Zero] = FW0 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW0_ */
        DerefOf (GBUF [0x02]) [One] = FW1 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW1_ */
        DerefOf (GBUF [0x02]) [0x02] = FW2 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW2_ */
        DerefOf (GBUF [0x02]) [0x03] = FW3 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW3_ */
        DerefOf (GBUF [0x02]) [0x04] = FW4 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW4_ */
        DerefOf (GBUF [0x02]) [0x05] = FW5 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW5_ */
        DerefOf (GBUF [0x02]) [0x06] = FW6 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW6_ */
        DerefOf (GBUF [0x02]) [0x07] = FW7 /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.FW7_ */
        DerefOf (GBUF [0x03]) [Zero] = Zero
        Return (GBUF) /* \_SB_.PCI0.LPCB.EC__.VPC0.GBID.GBUF */
    }

    Method (_SB.PCI0.LPCB.EC.BAT0._BIF, 0, NotSerialized)  // _BIF: Battery Information
    {
        If ((ECON == One))
        {
            Local0 = RECB (0xC8, 0x10)
            Local0 *= 0x0A
            PBIF [One] = Local0
            Local0 = RECB (0xCC, 0x10)
            Local0 *= 0x0A
            PBIF [0x02] = Local0
            PBIF [0x04] = RECB (0xC8, 0x10)
            PBIF [0x09] = ""
            PBIF [0x0B] = ""
        }

        Return (PBIF) /* External reference */
    }

    Name (OBST, Zero)
    Name (OBAC, Zero)
    Name (OBPR, Zero)
    Name (OBRC, Zero)
    Name (OBPV, Zero)
    Method (_SB.PCI0.LPCB.EC.BAT0._BST, 0, Serialized)  // _BST: Battery Status
    {
        If ((ECON == One))
        {
            Sleep (0x10)
            Local0 = B1ST /* External reference */
            Local1 = DerefOf (PBST [Zero])
            Switch ((Local0 & 0x07))
            {
                Case (Zero)
                {
                    OBST = (Local1 & 0xF8)
                }
                Case (One)
                {
                    OBST = (One | (Local1 & 0xF8))
                }
                Case (0x02)
                {
                    OBST = (0x02 | (Local1 & 0xF8))
                }
                Case (0x04)
                {
                    OBST = (0x04 | (Local1 & 0xF8))
                }

            }

            Sleep (0x10)
            OBAC = RECB (0xD3, 0x10)
            If ((OBST & One))
            {
                If ((OBAC != Zero))
                {
                    OBAC = (~OBAC & 0x7FFF)
                }
            }

            OBPR = OBAC /* \OBAC */
            Sleep (0x10)
            OBRC = RECB (0xC2, 0x10)
            Sleep (0x10)
            OBPV = RECB (0xC6, 0x10)
            OBRC *= 0x0A
            OBPR = ((OBAC * OBPV) / 0x03E8)
            PBST [Zero] = OBST /* \OBST */
            PBST [One] = OBPR /* \OBPR */
            PBST [0x02] = OBRC /* \OBRC */
            PBST [0x03] = OBPV /* \OBPV */
        }

        Return (PBST) /* External reference */
    }
}

