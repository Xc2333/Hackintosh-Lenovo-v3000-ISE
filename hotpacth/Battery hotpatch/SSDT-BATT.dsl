/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180313 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-BATT.aml, Sun Apr 22 17:11:11 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000A6B (2667)
 *     Revision         0x02
 *     Checksum         0x1D
 *     OEM ID           "hack"
 *     OEM Table ID     "batt"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20161210 (538317328)
 */
DefinitionBlock ("", "SSDT", 2, "hack", "batt", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.B1CT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.B1ST, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.PBIF, PkgObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BAT0.PBST, PkgObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.BCNT, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.FUSH, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.FUSL, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMAD, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMCM, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMPR, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SMST, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBAC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBCT, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBFC, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBPV, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.VPC0.VBRC, IntObj)    // (from opcode)
    External (B1CT, IntObj)    // (from opcode)
    External (B1ST, IntObj)    // (from opcode)
    External (BCNT, UnknownObj)    // (from opcode)
    External (EC0_, DeviceObj)    // (from opcode)
    External (ECON, FieldUnitObj)    // (from opcode)
    External (FUSH, IntObj)    // (from opcode)
    External (FUSL, IntObj)    // (from opcode)
    External (P80H, FieldUnitObj)    // (from opcode)
    External (PBIF, IntObj)    // (from opcode)
    External (PBST, IntObj)    // (from opcode)
    External (SMAD, UnknownObj)    // (from opcode)
    External (SMCM, UnknownObj)    // (from opcode)
    External (SMPR, UnknownObj)    // (from opcode)
    External (SMST, IntObj)    // (from opcode)
    External (VBAC, UnknownObj)    // (from opcode)
    External (VBCT, IntObj)    // (from opcode)
    External (VBFC, UnknownObj)    // (from opcode)
    External (VBPV, UnknownObj)    // (from opcode)
    External (VBRC, UnknownObj)    // (from opcode)

    Method (_SB.PCI0.LPCB.EC0.RE1B, 1, NotSerialized)
    {
        OperationRegion (EMAM, EmbeddedControl, Arg0, One)
        Field (EMAM, ByteAcc, NoLock, Preserve)
        {
            BYTE,   8
        }

        Return (BYTE)
    }

    Method (_SB.PCI0.LPCB.EC0.RECB, 2, Serialized)
    {
        ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
        Name (TEMP, Buffer (Arg1){})
        Add (Arg0, Arg1, Arg1)
        Store (Zero, Local0)
        While (LLess (Arg0, Arg1))
        {
            Store (RE1B (Arg0), Index (TEMP, Local0))
            Increment (Arg0)
            Increment (Local0)
        }

        Return (TEMP)
    }

    Method (_SB.PCI0.LPCB.EC0.WE1B, 2, NotSerialized)
    {
        OperationRegion (EMAM, EmbeddedControl, Arg0, One)
        Field (EMAM, ByteAcc, NoLock, Preserve)
        {
            BYTE,   8
        }

        Store (Arg1, BYTE)
    }

    Method (_SB.PCI0.LPCB.EC0.WECB, 3, Serialized)
    {
        ShiftRight (Add (Arg1, 0x07), 0x03, Arg1)
        Name (TEMP, Buffer (Arg1){})
        Store (Arg2, TEMP)
        Add (Arg0, Arg1, Arg1)
        Store (Zero, Local0)
        While (LLess (Arg0, Arg1))
        {
            WE1B (Arg0, DerefOf (Index (TEMP, Local0)))
            Increment (Arg0)
            Increment (Local0)
        }
    }

    Method (\_SB.PCI0.LPCB.EC0.VPC0.MHPF, 1, NotSerialized)
    {
        Name (BFWB, Buffer (0x25){})
        CreateByteField (BFWB, Zero, FB0)
        CreateByteField (BFWB, One, FB1)
        CreateByteField (BFWB, 0x02, FB2)
        CreateByteField (BFWB, 0x03, FB3)
        CreateField (BFWB, 0x20, 0x0100, FB4)
        CreateByteField (BFWB, 0x24, FB5)
        If (LLessEqual (SizeOf (Arg0), 0x25))
        {
            If (LNotEqual (SMPR, Zero))
            {
                Store (SMST, FB1)
            }
            Else
            {
                Store (Arg0, BFWB)
                Store (FB2, SMAD)
                Store (FB3, SMCM)
                Store (FB5, BCNT)
                Store (FB0, Local0)
                If (LEqual (And (Local0, One), Zero))
                {
                    WECB (0x64, 0x0100, FB4)
                }

                Store (Zero, SMST)
                Store (FB0, SMPR)
                Store (0x03E8, Local1)
                While (Local1)
                {
                    Sleep (One)
                    Decrement (Local1)
                    If (LOr (LAnd (SMST, 0x80), LEqual (SMPR, Zero)))
                    {
                        Break
                    }
                }

                Store (FB0, Local0)
                If (LNotEqual (And (Local0, One), Zero))
                {
                    Store (RECB (0x64, 0x0100), FB4)
                }

                Store (SMST, FB1)
                If (LOr (LEqual (Local1, Zero), LNot (LAnd (SMST, 0x80))))
                {
                    Store (Zero, SMPR)
                    Store (0x92, FB1)
                }
            }

            Return (BFWB)
        }
        Return (Zero)
    }

    Method (\_SB.PCI0.LPCB.EC0.VPC0.MHIF, 1, NotSerialized)
    {
        Store (0x50, P80H)
        If (LEqual (Arg0, Zero))
        {
            Name (RETB, Buffer (0x0A){})
            Name (BUF1, Buffer (0x08){})
            Store (RECB (0x14, 0x40), BUF1)
            CreateByteField (BUF1, Zero, FW0)
            CreateByteField (BUF1, One, FW1)
            CreateByteField (BUF1, 0x02, FW2)
            CreateByteField (BUF1, 0x03, FW3)
            CreateByteField (BUF1, 0x04, FW4)
            CreateByteField (BUF1, 0x05, FW5)
            CreateByteField (BUF1, 0x06, FW6)
            CreateByteField (BUF1, 0x07, FW7)
            Store (FUSL, Index (RETB, Zero))
            Store (FUSH, Index (RETB, One))
            Store (FW0, Index (RETB, 0x02))
            Store (FW1, Index (RETB, 0x03))
            Store (FW2, Index (RETB, 0x04))
            Store (FW3, Index (RETB, 0x05))
            Store (FW4, Index (RETB, 0x06))
            Store (FW5, Index (RETB, 0x07))
            Store (FW6, Index (RETB, 0x08))
            Store (FW7, Index (RETB, 0x09))
            Return (RETB)
        }
        Return (Zero)
    }

    Method (\_SB.PCI0.LPCB.EC0.VPC0.SMTF, 1, NotSerialized)
    {
        If (LEqual (Arg0, Zero))
        {
            If (LEqual (RECB (0xC6, 0x10), Zero))
            {
                Return (Zero)
            }

            If (LEqual (RECB (0xD3, 0x10), Zero))
            {
                Return (Zero)
            }

            Store (RECB (0xCC, 0x10), Local0)
            Multiply (Local0, 0x0A, Local0)
            Store (Local0, VBFC)
            Store (RECB (0xC2, 0x10), Local1)
            Multiply (Local1, 0x0A, Local1)
            Store (Local1, VBRC)
            If (LGreater (VBFC, VBRC))
            {
                Store (RECB (0xC6, 0x10), VBPV)
                Store (RECB (0xD3, 0x10), VBAC)
                Subtract (Local0, Local1, Local0)
                Store (Multiply (VBAC, VBPV), Local1)
                Store (Multiply (Local0, 0x03E8), Local3)
                Store (Multiply (Local3, 0x3C), Local3)
                Store (Divide (Local3, Local1, ), VBCT)
                Return (VBCT)
            }
            Else
            {
                Return (Zero)
            }
        }

        If (LEqual (Arg0, One))
        {
            Return (Zero)
        }

        Return (Zero)
    }

    Method (\_SB.PCI0.LPCB.EC0.VPC0.GBID, 0, Serialized)
    {
        Name (GBUF, Package (0x04)
        {
            Buffer (0x02)
            {
                 0x00, 0x00                                     
            }, 

            Buffer (0x02)
            {
                 0x00, 0x00                                     
            }, 

            Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            }, 

            Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
            }
        })
        Store (B1CT, Index (DerefOf (Index (GBUF, Zero)), Zero))
        Store (Zero, Index (DerefOf (Index (GBUF, One)), Zero))
        Name (BUF1, Buffer (0x08){})
        Store (RECB (0x14, 0x40), BUF1)
        CreateByteField (BUF1, Zero, FW0)
        CreateByteField (BUF1, One, FW1)
        CreateByteField (BUF1, 0x02, FW2)
        CreateByteField (BUF1, 0x03, FW3)
        CreateByteField (BUF1, 0x04, FW4)
        CreateByteField (BUF1, 0x05, FW5)
        CreateByteField (BUF1, 0x06, FW6)
        CreateByteField (BUF1, 0x07, FW7)
        Store (FW0, Index (DerefOf (Index (GBUF, 0x02)), Zero))
        Store (FW1, Index (DerefOf (Index (GBUF, 0x02)), One))
        Store (FW2, Index (DerefOf (Index (GBUF, 0x02)), 0x02))
        Store (FW3, Index (DerefOf (Index (GBUF, 0x02)), 0x03))
        Store (FW4, Index (DerefOf (Index (GBUF, 0x02)), 0x04))
        Store (FW5, Index (DerefOf (Index (GBUF, 0x02)), 0x05))
        Store (FW6, Index (DerefOf (Index (GBUF, 0x02)), 0x06))
        Store (FW7, Index (DerefOf (Index (GBUF, 0x02)), 0x07))
        Store (Zero, Index (DerefOf (Index (GBUF, 0x03)), Zero))
        Return (GBUF)
    }

    Name (APDT, Zero)
    Method (_SB.PCI0.LPCB.EC0.BAT0._BIF, 0, NotSerialized)  // _BIF: Battery Information
    {
        If (LEqual (ECON, One))
        {
            Store (RECB (0xC8, 0x10), Local0)
            Multiply (Local0, 0x0A, Local0)
            Store (Local0, Index (PBIF, One))
            Store (RECB (0xCC, 0x10), Local0)
            Multiply (Local0, 0x0A, Local0)
            Store (Local0, Index (PBIF, 0x02))
            Store (RECB (0xC8, 0x10), Index (PBIF, 0x04))
            Store ("", Index (PBIF, 0x09))
            Store ("", Index (PBIF, 0x0B))
        }

        Return (PBIF)
    }

    Name (OBST, Zero)
    Name (OBAC, Zero)
    Name (OBPR, Zero)
    Name (OBRC, Zero)
    Name (OBPV, Zero)
    Method (_SB.PCI0.LPCB.EC0.BAT0._BST, 0, Serialized)  // _BST: Battery Status
    {
        If (LEqual (ECON, One))
        {
            Sleep (0x10)
            Store (B1ST, Local0)
            Store (DerefOf (Index (PBST, Zero)), Local1)
            Switch (And (Local0, 0x07))
            {
                Case (Zero)
                {
                    Store (And (Local1, 0xF8), OBST)
                }
                Case (One)
                {
                    Store (Or (One, And (Local1, 0xF8)), OBST)
                }
                Case (0x02)
                {
                    Store (Or (0x02, And (Local1, 0xF8)), OBST)
                }
                Case (0x04)
                {
                    Store (Or (0x04, And (Local1, 0xF8)), OBST)
                }

            }

            Sleep (0x10)
            Store (RECB (0xD3, 0x10), OBAC)
            If (And (OBST, One))
            {
                If (LNotEqual (OBAC, Zero))
                {
                    Store (And (Not (OBAC), 0x7FFF), OBAC)
                }
            }

            Store (OBAC, OBPR)
            Sleep (0x10)
            Store (RECB (0xC2, 0x10), OBRC)
            Sleep (0x10)
            Store (RECB (0xC6, 0x10), OBPV)
            Multiply (OBRC, 0x0A, OBRC)
            Store (Divide (Multiply (OBAC, OBPV), 0x03E8, ), OBPR)
            Store (OBST, Index (PBST, Zero))
            Store (OBPR, Index (PBST, One))
            Store (OBRC, Index (PBST, 0x02))
            Store (OBPV, Index (PBST, 0x03))
        }

        Return (PBST)
    }
}

