/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180810 (64-bit version)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2-CB-01.aml, Fri Nov  2 13:34:27 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00005AC3 (23235)
 *     Revision         0x02
 *     Checksum         0xC5
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "CB-01   ", 0x00000001)
{
    /*
     * iASL Warning: There were 19 external control methods found during
     * disassembly, but only 17 were resolved (2 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // 0 Arguments    // From external reference file
    External (_GPE.VHOV, MethodObj)    // 3 Arguments    // From external reference file
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.AR02, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.AR0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.AR0B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.B0D3, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // 1 Arguments    // From external reference file
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // 1 Arguments    // From external reference file
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // 1 Arguments    // From external reference file
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // 2 Arguments    // From external reference file
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // 2 Arguments    // From external reference file
    External (_SB_.PCI0.PEG1, DeviceObj)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG2, DeviceObj)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)
    External (_SB_.PCI0.PR02, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PR0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PR0B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // 4 Arguments    // From external reference file
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // 2 Arguments    // From external reference file
    External (DSEN, FieldUnitObj)
    External (ECR1, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (GUAM, MethodObj)    // 1 Arguments
    External (HDOS, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (HNOT, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (OSYS, FieldUnitObj)
    External (PICM, IntObj)
    External (PNHM, FieldUnitObj)
    External (S0ID, FieldUnitObj)
    External (SCIS, FieldUnitObj)

    OperationRegion (SANV, SystemMemory, 0x9CF77E18, 0x015B)
    Field (SANV, AnyAcc, Lock, Preserve)
    {
        SARV,   32, 
        ASLB,   32, 
        IMON,   8, 
        IGDS,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        DID9,   32, 
        DIDA,   32, 
        DIDB,   32, 
        IBTT,   8, 
        IPAT,   8, 
        IPSC,   8, 
        IBLC,   8, 
        IBIA,   8, 
        ISSC,   8, 
        IPCF,   8, 
        IDMS,   8, 
        IF1E,   8, 
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
        LIDS,   8, 
        KSV0,   32, 
        KSV1,   8, 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
        ALFP,   8, 
        AUDA,   32, 
        AUDC,   32, 
        DIDC,   32, 
        DIDD,   32, 
        DIDE,   32, 
        DIDF,   32, 
        CADR,   32, 
        CCNT,   8, 
        Offset (0xC8), 
        SGMD,   8, 
        SGFL,   8, 
        PWOK,   8, 
        HLRS,   8, 
        PWEN,   8, 
        PRST,   8, 
        CPSP,   32, 
        EECP,   8, 
        EVCP,   16, 
        XBAS,   32, 
        GBAS,   16, 
        SGGP,   8, 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
        OBS1,   32, 
        OBS2,   32, 
        OBS3,   32, 
        OBS4,   32, 
        OBS5,   32, 
        OBS6,   32, 
        OBS7,   32, 
        OBS8,   32, 
        LTRA,   8, 
        OBFA,   8, 
        LTRB,   8, 
        OBFB,   8, 
        LTRC,   8, 
        OBFC,   8, 
        SMSL,   16, 
        SNSL,   16, 
        P0UB,   8, 
        P1UB,   8, 
        P2UB,   8, 
        EDPV,   8, 
        NXDX,   32, 
        DIDX,   32, 
        PCSL,   8, 
        RC7A,   8, 
        PBGE,   8, 
        M64B,   64, 
        M64L,   64, 
        DLPW,   16, 
        DLHR,   16, 
        EEC1,   8, 
        EEC2,   8, 
        SBN0,   8, 
        SBN1,   8, 
        SBN2,   8
    }

    Scope (\_SB.PCI0)
    {
        Name (LTRS, Zero)
        Name (OBFS, Zero)
    }

    Scope (\_SB.PCI0.PEG0)
    {
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }

        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
        {
            If (Arg0)
            {
                Store (One, GENG) /* \_SB_.PCI0.PEG0.GENG */
                Store (One, PMEG) /* \_SB_.PCI0.PEG0.PMEG */
            }
            Else
            {
                Store (Zero, GENG) /* \_SB_.PCI0.PEG0.GENG */
                Store (Zero, PMEG) /* \_SB_.PCI0.PEG0.PMEG */
            }
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS) /* \_SB_.PCI0.PEG0.PSTS */
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR02 ())
            }

            Return (PR02 ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRA, LTRS) /* \_SB_.PCI0.LTRS */
            Store (OBFA, OBFS) /* \_SB_.PCI0.OBFS */
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (OPTS, Zero)
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            Store (One, OPTS) /* \_SB_.PCI0.PEG0.OPTS */
                            If (LTRS)
                            {
                                Or (OPTS, 0x40, OPTS) /* \_SB_.PCI0.PEG0.OPTS */
                            }

                            If (OBFS)
                            {
                                Or (OPTS, 0x10, OPTS) /* \_SB_.PCI0.PEG0.OPTS */
                            }

                            Return (OPTS) /* \_SB_.PCI0.PEG0.OPTS */
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    Case (0x04)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV) /* \_SB_.PCI0.PEG0.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (\_SB.PCI0.PEG1)
    {
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }

        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
        {
            If (Arg0)
            {
                Store (One, GENG) /* \_SB_.PCI0.PEG1.GENG */
                Store (One, PMEG) /* \_SB_.PCI0.PEG1.PMEG */
            }
            Else
            {
                Store (Zero, GENG) /* \_SB_.PCI0.PEG1.GENG */
                Store (Zero, PMEG) /* \_SB_.PCI0.PEG1.PMEG */
            }
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS) /* \_SB_.PCI0.PEG1.PSTS */
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR0A ())
            }

            Return (PR0A ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRB, LTRS) /* \_SB_.PCI0.LTRS */
            Store (OBFB, OBFS) /* \_SB_.PCI0.OBFS */
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (OPTS, Zero)
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            Store (One, OPTS) /* \_SB_.PCI0.PEG1.OPTS */
                            If (LTRS)
                            {
                                Or (OPTS, 0x40, OPTS) /* \_SB_.PCI0.PEG1.OPTS */
                            }

                            If (OBFS)
                            {
                                Or (OPTS, 0x10, OPTS) /* \_SB_.PCI0.PEG1.OPTS */
                            }

                            Return (OPTS) /* \_SB_.PCI0.PEG1.OPTS */
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    Case (0x04)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV) /* \_SB_.PCI0.PEG1.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (\_SB.PCI0.PEG1.PEGP)
    {
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (\_SB.PCI0.PEG2)
    {
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }

        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
        {
            If (Arg0)
            {
                Store (One, GENG) /* \_SB_.PCI0.PEG2.GENG */
                Store (One, PMEG) /* \_SB_.PCI0.PEG2.PMEG */
            }
            Else
            {
                Store (Zero, GENG) /* \_SB_.PCI0.PEG2.GENG */
                Store (Zero, PMEG) /* \_SB_.PCI0.PEG2.PMEG */
            }
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS) /* \_SB_.PCI0.PEG2.PSTS */
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR0B ())
            }

            Return (PR0B ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRC, LTRS) /* \_SB_.PCI0.LTRS */
            Store (OBFC, OBFS) /* \_SB_.PCI0.OBFS */
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Name (OPTS, Zero)
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                Switch (ToInteger (Arg2))
                {
                    Case (Zero)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            Store (One, OPTS) /* \_SB_.PCI0.PEG2.OPTS */
                            If (LTRS)
                            {
                                Or (OPTS, 0x40, OPTS) /* \_SB_.PCI0.PEG2.OPTS */
                            }

                            If (OBFS)
                            {
                                Or (OPTS, 0x10, OPTS) /* \_SB_.PCI0.PEG2.OPTS */
                            }

                            Return (OPTS) /* \_SB_.PCI0.PEG2.OPTS */
                        }
                        Else
                        {
                            Return (Zero)
                        }
                    }
                    Case (0x04)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                })
                            }
                        }
                    }
                    Case (0x06)
                    {
                        If (LEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV) /* \_SB_.PCI0.PEG2.LTRV */
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                }
            }

            Return (Buffer (One)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x09, 0x04))
        }
    }

    Scope (\_SB.PCI0.B0D3)
    {
        Name (BARA, 0x80000000)
        Name (BBAR, Zero)
        Name (TBAR, Zero)
        Name (TCMD, Zero)
        Name (MODB, Zero)
        Name (MODC, Zero)
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (LNotEqual (AUVD, 0xFFFF))
            {
                Return (0x0F)
            }

            Return (Zero)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                ABAR, 0xFFFFC000), Zero)))
            {
                Store (ABAR, BARA) /* \_SB_.PCI0.B0D3.BARA */
                If (LNotEqual (ABAH, Zero))
                {
                    Or (BARA, ShiftLeft (ABAH, 0x20), BARA) /* \_SB_.PCI0.B0D3.BARA */
                }
            }
        }

        OperationRegion (RPCS, SystemMemory, \XBAS, 0x00018040)
        Field (RPCS, AnyAcc, NoLock, Preserve)
        {
            Offset (0x18004), 
            ACMD,   8, 
            Offset (0x18010), 
            ABAR,   32, 
            ABAH,   32
        }

        OperationRegion (RPCZ, PCI_Config, Zero, 0x40)
        Field (RPCZ, DWordAcc, Lock, Preserve)
        {
            AUVD,   16
        }

        Method (ASTR, 0, Serialized)
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                ABAR, 0xFFFFC000), Zero)))
            {
                Store (Zero, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                If (LNotEqual (ABAH, Zero))
                {
                    Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                }

                Add (BBAR, 0x1000, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                OperationRegion (RPCY, SystemMemory, BBAR, 0x25)
                Field (RPCY, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x0C), 
                    EM4W,   32, 
                    EMWA,   32, 
                    Offset (0x1C), 
                    ADWA,   32
                }

                Store (AUDA, EMWA) /* \_SB_.PCI0.B0D3.ASTR.EMWA */
                Store (AUDC, EM4W) /* \_SB_.PCI0.B0D3.ASTR.EM4W */
            }
        }

        Method (VSTR, 1, Serialized)
        {
            Name (CONT, 0x03E8)
            Name (ADDR, 0x80000000)
            Store (Arg0, ADDR) /* \_SB_.PCI0.B0D3.VSTR.ADDR */
            OperationRegion (CCDC, SystemMemory, ADDR, 0x04)
            Field (CCDC, ByteAcc, NoLock, Preserve)
            {
                CDEC,   32
            }

            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                ABAR, 0xFFFFC000), Zero)))
            {
                If (LNotEqual (CDEC, Zero))
                {
                    Store (Zero, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    If (LNotEqual (ABAH, Zero))
                    {
                        Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                    }

                    OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                    Field (IPCV, DWordAcc, NoLock, Preserve)
                    {
                        Offset (0x60), 
                        AVIC,   32, 
                        Offset (0x68), 
                        AIRS,   16
                    }

                    Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.VSTR.CONT */
                    While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }

                    Or (AIRS, 0x02, AIRS) /* \_SB_.PCI0.B0D3.VSTR.AIRS */
                    Store (CDEC, AVIC) /* \_SB_.PCI0.B0D3.VSTR.AVIC */
                    Or (AIRS, One, AIRS) /* \_SB_.PCI0.B0D3.VSTR.AIRS */
                    Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.VSTR.CONT */
                    While (LAnd (LEqual (And (AIRS, One), One), LNotEqual (CONT, Zero)))
                    {
                        Stall (One)
                        Decrement (CONT)
                    }
                }
            }
        }

        Method (CXDC, 0, Serialized)
        {
            Name (IDDX, 0x80000000)
            If (LAnd (LNotEqual (CADR, Zero), LNotEqual (CCNT, Zero)))
            {
                Store (CADR, IDDX) /* \_SB_.PCI0.B0D3.CXDC.IDDX */
                While (LLess (IDDX, Add (CADR, Multiply (CCNT, 0x04))))
                {
                    VSTR (IDDX)
                    Add (IDDX, 0x04, IDDX) /* \_SB_.PCI0.B0D3.CXDC.IDDX */
                }
            }
        }

        Method (ARST, 0, Serialized)
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                ABAR, 0xFFFFC000), Zero)))
            {
                And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                OperationRegion (IPCV, SystemMemory, BBAR, 0xBF)
                Field (IPCV, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x08), 
                    CRST,   32, 
                    Offset (0x4C), 
                    CORB,   32, 
                    Offset (0x5C), 
                    RIRB,   32, 
                    Offset (0x80), 
                    OSD1,   32, 
                    Offset (0xA0), 
                    OSD2,   32
                }

                And (CORB, 0xFFFFFFFD, CORB) /* \_SB_.PCI0.B0D3.ARST.CORB */
                And (RIRB, 0xFFFFFFFD, RIRB) /* \_SB_.PCI0.B0D3.ARST.RIRB */
                And (OSD1, 0xFFFFFFFD, OSD1) /* \_SB_.PCI0.B0D3.ARST.OSD1 */
                And (OSD2, 0xFFFFFFFD, OSD2) /* \_SB_.PCI0.B0D3.ARST.OSD2 */
                And (CRST, 0xFFFFFFFE, CRST) /* \_SB_.PCI0.B0D3.ARST.CRST */
            }
        }

        Method (AINI, 0, Serialized)
        {
            Name (CONT, 0x03E8)
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                ABAR, 0xFFFFC000), Zero)))
            {
                Store (Zero, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                If (LNotEqual (ABAH, Zero))
                {
                    Or (BBAR, ShiftLeft (ABAH, 0x20), BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                }

                OperationRegion (IPCV, SystemMemory, BBAR, 0x70)
                Field (IPCV, DWordAcc, NoLock, Preserve)
                {
                    GCAP,   16, 
                    Offset (0x08), 
                    GCTL,   32, 
                    Offset (0x0E), 
                    SSTS,   8, 
                    Offset (0x60), 
                    AVIC,   32, 
                    Offset (0x68), 
                    AIRS,   16
                }

                Or (GCTL, One, GCTL) /* \_SB_.PCI0.B0D3.AINI.GCTL */
                Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.AINI.CONT */
                While (LAnd (LEqual (And (GCTL, One), Zero), LNotEqual (CONT, Zero)))
                {
                    Stall (One)
                    Decrement (CONT)
                }

                And (GCAP, 0xFFFF, GCAP) /* \_SB_.PCI0.B0D3.AINI.GCAP */
                Or (SSTS, 0x0F, SSTS) /* \_SB_.PCI0.B0D3.AINI.SSTS */
                And (GCTL, 0xFFFFFFFE, GCTL) /* \_SB_.PCI0.B0D3.AINI.GCTL */
                Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.AINI.CONT */
                While (LAnd (LEqual (And (GCTL, One), One), LNotEqual (CONT, Zero)))
                {
                    Stall (One)
                    Decrement (CONT)
                }

                Or (GCTL, One, GCTL) /* \_SB_.PCI0.B0D3.AINI.GCTL */
                Store (0x03E8, CONT) /* \_SB_.PCI0.B0D3.AINI.CONT */
                While (LAnd (LEqual (And (GCTL, One), Zero), LNotEqual (CONT, Zero)))
                {
                    Stall (One)
                    Decrement (CONT)
                }
            }
        }

        Method (ABWA, 1, Serialized)
        {
            If (Arg0)
            {
                If (LOr (LEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LEqual (And (ABAR, 0xFFFFC000
                    ), Zero)))
                {
                    If (LNotEqual (BARA, 0x80000000))
                    {
                        Store (ABAR, TBAR) /* \_SB_.PCI0.B0D3.TBAR */
                        Or (TBAR, ShiftLeft (ABAH, 0x20), TBAR) /* \_SB_.PCI0.B0D3.TBAR */
                        Store (ACMD, TCMD) /* \_SB_.PCI0.B0D3.TCMD */
                        Store (ShiftRight (BARA, 0x20), ABAH) /* \_SB_.PCI0.B0D3.ABAH */
                        Store (BARA, ABAR) /* \_SB_.PCI0.B0D3.ABAR */
                        Store (0x06, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                        Store (One, MODB) /* \_SB_.PCI0.B0D3.MODB */
                    }
                }
                ElseIf (LNotEqual (And (ACMD, 0x06), 0x06))
                {
                    Store (ACMD, TCMD) /* \_SB_.PCI0.B0D3.TCMD */
                    Store (0x06, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                    Store (One, MODC) /* \_SB_.PCI0.B0D3.MODC */
                }
            }
            Else
            {
                If (MODB)
                {
                    If (LEqual (ABAR, BARA))
                    {
                        Store (TBAR, ABAR) /* \_SB_.PCI0.B0D3.ABAR */
                        Store (ShiftRight (TBAR, 0x20), ABAH) /* \_SB_.PCI0.B0D3.ABAH */
                        Store (TCMD, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                    }
                }

                If (MODC)
                {
                    Store (TCMD, ACMD) /* \_SB_.PCI0.B0D3.ACMD */
                }
            }
        }

        Method (DCCC, 1, Serialized)
        {
            If (LAnd (LNotEqual (And (ABAR, 0xFFFFC004), 0xFFFFC004), LNotEqual (And (
                ABAR, 0xFFFFC000), Zero)))
            {
                And (ABAR, 0xFFFFFFF0, BBAR) /* \_SB_.PCI0.B0D3.BBAR */
                OperationRegion (IPCV, SystemMemory, BBAR, 0x1020)
                Field (IPCV, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x100C), 
                    AEM4,   32, 
                    AEM5,   32
                }

                If (LEqual (Arg0, Zero))
                {
                    And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    Or (AEM4, 0x04, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    Or (AEM5, 0x4B, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                }

                If (LEqual (Arg0, One))
                {
                    And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    Or (AEM4, 0x04, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    Or (AEM5, 0x5A, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                }

                If (LEqual (Arg0, 0x02))
                {
                    And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    Or (AEM4, 0x10, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    Or (AEM5, 0xE1, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                }

                If (LEqual (Arg0, 0x03))
                {
                    And (AEM4, 0xFFFC0000, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    Or (AEM4, 0x08, AEM4) /* \_SB_.PCI0.B0D3.DCCC.AEM4 */
                    And (AEM5, 0xFFFC0000, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                    Or (AEM5, 0xE1, AEM5) /* \_SB_.PCI0.B0D3.DCCC.AEM5 */
                }
            }
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (_DOS, 1, NotSerialized)  // _DOS: Disable Output Switching
        {
            Store (And (Arg0, 0x07), DSEN) /* External reference */
            If (LEqual (And (Arg0, 0x03), Zero))
            {
                If (CondRefOf (HDOS))
                {
                    HDOS ()
                }
            }
        }

        Method (_DOD, 0, NotSerialized)  // _DOD: Display Output Devices
        {
            Store (Zero, NDID) /* \NDID */
            If (LNotEqual (DIDL, Zero))
            {
                Store (SDDL (DIDL), DID1) /* \DID1 */
            }

            If (LNotEqual (DDL2, Zero))
            {
                Store (SDDL (DDL2), DID2) /* \DID2 */
            }

            If (LNotEqual (DDL3, Zero))
            {
                Store (SDDL (DDL3), DID3) /* \DID3 */
            }

            If (LNotEqual (DDL4, Zero))
            {
                Store (SDDL (DDL4), DID4) /* \DID4 */
            }

            If (LNotEqual (DDL5, Zero))
            {
                Store (SDDL (DDL5), DID5) /* \DID5 */
            }

            If (LNotEqual (DDL6, Zero))
            {
                Store (SDDL (DDL6), DID6) /* \DID6 */
            }

            If (LNotEqual (DDL7, Zero))
            {
                Store (SDDL (DDL7), DID7) /* \DID7 */
            }

            If (LNotEqual (DDL8, Zero))
            {
                Store (SDDL (DDL8), DID8) /* \DID8 */
            }

            If (LNotEqual (DDL9, Zero))
            {
                Store (SDDL (DDL9), DID9) /* \DID9 */
            }

            If (LNotEqual (DD10, Zero))
            {
                Store (SDDL (DD10), DIDA) /* \DIDA */
            }

            If (LNotEqual (DD11, Zero))
            {
                Store (SDDL (DD11), DIDB) /* \DIDB */
            }

            If (LNotEqual (DD12, Zero))
            {
                Store (SDDL (DD12), DIDC) /* \DIDC */
            }

            If (LNotEqual (DD13, Zero))
            {
                Store (SDDL (DD13), DIDD) /* \DIDD */
            }

            If (LNotEqual (DD14, Zero))
            {
                Store (SDDL (DD14), DIDE) /* \DIDE */
            }

            If (LNotEqual (DD15, Zero))
            {
                Store (SDDL (DD15), DIDF) /* \DIDF */
            }

            If (LEqual (NDID, One))
            {
                Name (TMP1, Package (0x01)
                {
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                Return (TMP1) /* \_SB_.PCI0.GFX0._DOD.TMP1 */
            }

            If (LEqual (NDID, 0x02))
            {
                Name (TMP2, Package (0x02)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                Store (Or (0x00010000, DID2), Index (TMP2, One))
                Return (TMP2) /* \_SB_.PCI0.GFX0._DOD.TMP2 */
            }

            If (LEqual (NDID, 0x03))
            {
                Name (TMP3, Package (0x03)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                Store (Or (0x00010000, DID2), Index (TMP3, One))
                Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                Return (TMP3) /* \_SB_.PCI0.GFX0._DOD.TMP3 */
            }

            If (LEqual (NDID, 0x04))
            {
                Name (TMP4, Package (0x04)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                Store (Or (0x00010000, DID2), Index (TMP4, One))
                Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                Return (TMP4) /* \_SB_.PCI0.GFX0._DOD.TMP4 */
            }

            If (LEqual (NDID, 0x05))
            {
                Name (TMP5, Package (0x05)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                Store (Or (0x00010000, DID2), Index (TMP5, One))
                Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                Return (TMP5) /* \_SB_.PCI0.GFX0._DOD.TMP5 */
            }

            If (LEqual (NDID, 0x06))
            {
                Name (TMP6, Package (0x06)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP6, Zero))
                Store (Or (0x00010000, DID2), Index (TMP6, One))
                Store (Or (0x00010000, DID3), Index (TMP6, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP6, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP6, 0x04))
                Store (Or (0x00010000, DID6), Index (TMP6, 0x05))
                Return (TMP6) /* \_SB_.PCI0.GFX0._DOD.TMP6 */
            }

            If (LEqual (NDID, 0x07))
            {
                Name (TMP7, Package (0x07)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP7, Zero))
                Store (Or (0x00010000, DID2), Index (TMP7, One))
                Store (Or (0x00010000, DID3), Index (TMP7, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP7, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP7, 0x04))
                Store (Or (0x00010000, DID6), Index (TMP7, 0x05))
                Store (Or (0x00010000, DID7), Index (TMP7, 0x06))
                Return (TMP7) /* \_SB_.PCI0.GFX0._DOD.TMP7 */
            }

            If (LEqual (NDID, 0x08))
            {
                Name (TMP8, Package (0x08)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP8, Zero))
                Store (Or (0x00010000, DID2), Index (TMP8, One))
                Store (Or (0x00010000, DID3), Index (TMP8, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP8, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP8, 0x04))
                Store (Or (0x00010000, DID6), Index (TMP8, 0x05))
                Store (Or (0x00010000, DID7), Index (TMP8, 0x06))
                Store (Or (0x00010000, DID8), Index (TMP8, 0x07))
                Return (TMP8) /* \_SB_.PCI0.GFX0._DOD.TMP8 */
            }

            If (LEqual (NDID, 0x09))
            {
                Name (TMP9, Package (0x09)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMP9, Zero))
                Store (Or (0x00010000, DID2), Index (TMP9, One))
                Store (Or (0x00010000, DID3), Index (TMP9, 0x02))
                Store (Or (0x00010000, DID4), Index (TMP9, 0x03))
                Store (Or (0x00010000, DID5), Index (TMP9, 0x04))
                Store (Or (0x00010000, DID6), Index (TMP9, 0x05))
                Store (Or (0x00010000, DID7), Index (TMP9, 0x06))
                Store (Or (0x00010000, DID8), Index (TMP9, 0x07))
                Store (Or (0x00010000, DID9), Index (TMP9, 0x08))
                Return (TMP9) /* \_SB_.PCI0.GFX0._DOD.TMP9 */
            }

            If (LEqual (NDID, 0x0A))
            {
                Name (TMPA, Package (0x0A)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPA, Zero))
                Store (Or (0x00010000, DID2), Index (TMPA, One))
                Store (Or (0x00010000, DID3), Index (TMPA, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPA, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPA, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPA, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPA, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPA, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPA, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPA, 0x09))
                Return (TMPA) /* \_SB_.PCI0.GFX0._DOD.TMPA */
            }

            If (LEqual (NDID, 0x0B))
            {
                Name (TMPB, Package (0x0B)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPB, Zero))
                Store (Or (0x00010000, DID2), Index (TMPB, One))
                Store (Or (0x00010000, DID3), Index (TMPB, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPB, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPB, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPB, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPB, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPB, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPB, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPB, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPB, 0x0A))
                Return (TMPB) /* \_SB_.PCI0.GFX0._DOD.TMPB */
            }

            If (LEqual (NDID, 0x0C))
            {
                Name (TMPC, Package (0x0C)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPC, Zero))
                Store (Or (0x00010000, DID2), Index (TMPC, One))
                Store (Or (0x00010000, DID3), Index (TMPC, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPC, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPC, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPC, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPC, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPC, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPC, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPC, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPC, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPC, 0x0B))
                Return (TMPC) /* \_SB_.PCI0.GFX0._DOD.TMPC */
            }

            If (LEqual (NDID, 0x0D))
            {
                Name (TMPD, Package (0x0D)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPD, Zero))
                Store (Or (0x00010000, DID2), Index (TMPD, One))
                Store (Or (0x00010000, DID3), Index (TMPD, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPD, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPD, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPD, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPD, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPD, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPD, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPD, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPD, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPD, 0x0B))
                Store (Or (0x00010000, DIDD), Index (TMPD, 0x0C))
                Return (TMPD) /* \_SB_.PCI0.GFX0._DOD.TMPD */
            }

            If (LEqual (NDID, 0x0E))
            {
                Name (TMPE, Package (0x0E)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPE, Zero))
                Store (Or (0x00010000, DID2), Index (TMPE, One))
                Store (Or (0x00010000, DID3), Index (TMPE, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPE, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPE, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPE, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPE, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPE, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPE, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPE, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPE, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPE, 0x0B))
                Store (Or (0x00010000, DIDD), Index (TMPE, 0x0C))
                Store (Or (0x00010000, DIDE), Index (TMPE, 0x0D))
                Return (TMPE) /* \_SB_.PCI0.GFX0._DOD.TMPE */
            }

            If (LEqual (NDID, 0x0F))
            {
                Name (TMPF, Package (0x0F)
                {
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF, 
                    0xFFFFFFFF
                })
                Store (Or (0x00010000, DID1), Index (TMPF, Zero))
                Store (Or (0x00010000, DID2), Index (TMPF, One))
                Store (Or (0x00010000, DID3), Index (TMPF, 0x02))
                Store (Or (0x00010000, DID4), Index (TMPF, 0x03))
                Store (Or (0x00010000, DID5), Index (TMPF, 0x04))
                Store (Or (0x00010000, DID6), Index (TMPF, 0x05))
                Store (Or (0x00010000, DID7), Index (TMPF, 0x06))
                Store (Or (0x00010000, DID8), Index (TMPF, 0x07))
                Store (Or (0x00010000, DID9), Index (TMPF, 0x08))
                Store (Or (0x00010000, DIDA), Index (TMPF, 0x09))
                Store (Or (0x00010000, DIDB), Index (TMPF, 0x0A))
                Store (Or (0x00010000, DIDC), Index (TMPF, 0x0B))
                Store (Or (0x00010000, DIDD), Index (TMPF, 0x0C))
                Store (Or (0x00010000, DIDE), Index (TMPF, 0x0D))
                Store (Or (0x00010000, DIDF), Index (TMPF, 0x0E))
                Return (TMPF) /* \_SB_.PCI0.GFX0._DOD.TMPF */
            }

            Return (Package (0x01)
            {
                0x0400
            })
        }

        Device (DD01)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID1), 0x0400))
                {
                    Store (One, EDPV) /* \EDPV */
                    Store (NXD1, NXDX) /* \NXDX */
                    Store (DID1, DIDX) /* \DIDX */
                    Return (One)
                }

                If (LEqual (DID1, Zero))
                {
                    Return (One)
                }
                Else
                {
                    Return (And (0xFFFF, DID1))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                Return (CDDS (DID1))
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD1) /* \NXD1 */
                }

                Return (NDDS (DID1))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD02)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID2), 0x0400))
                {
                    Store (0x02, EDPV) /* \EDPV */
                    Store (NXD2, NXDX) /* \NXDX */
                    Store (DID2, DIDX) /* \DIDX */
                    Return (0x02)
                }

                If (LEqual (DID2, Zero))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (And (0xFFFF, DID2))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (LIDS, Zero))
                {
                    Return (Zero)
                }

                Return (CDDS (DID2))
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD2) /* \NXD2 */
                }

                Return (NDDS (DID2))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD03)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID3), 0x0400))
                {
                    Store (0x03, EDPV) /* \EDPV */
                    Store (NXD3, NXDX) /* \NXDX */
                    Store (DID3, DIDX) /* \DIDX */
                    Return (0x03)
                }

                If (LEqual (DID3, Zero))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (And (0xFFFF, DID3))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID3, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID3))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD3) /* \NXD3 */
                }

                Return (NDDS (DID3))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD04)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID4), 0x0400))
                {
                    Store (0x04, EDPV) /* \EDPV */
                    Store (NXD4, NXDX) /* \NXDX */
                    Store (DID4, DIDX) /* \DIDX */
                    Return (0x04)
                }

                If (LEqual (DID4, Zero))
                {
                    Return (0x04)
                }
                Else
                {
                    Return (And (0xFFFF, DID4))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID4, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID4))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD4) /* \NXD4 */
                }

                Return (NDDS (DID4))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD05)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID5), 0x0400))
                {
                    Store (0x05, EDPV) /* \EDPV */
                    Store (NXD5, NXDX) /* \NXDX */
                    Store (DID5, DIDX) /* \DIDX */
                    Return (0x05)
                }

                If (LEqual (DID5, Zero))
                {
                    Return (0x05)
                }
                Else
                {
                    Return (And (0xFFFF, DID5))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID5, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID5))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD5) /* \NXD5 */
                }

                Return (NDDS (DID5))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD06)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID6), 0x0400))
                {
                    Store (0x06, EDPV) /* \EDPV */
                    Store (NXD6, NXDX) /* \NXDX */
                    Store (DID6, DIDX) /* \DIDX */
                    Return (0x06)
                }

                If (LEqual (DID6, Zero))
                {
                    Return (0x06)
                }
                Else
                {
                    Return (And (0xFFFF, DID6))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID6, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID6))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD6) /* \NXD6 */
                }

                Return (NDDS (DID6))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD07)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID7), 0x0400))
                {
                    Store (0x07, EDPV) /* \EDPV */
                    Store (NXD7, NXDX) /* \NXDX */
                    Store (DID7, DIDX) /* \DIDX */
                    Return (0x07)
                }

                If (LEqual (DID7, Zero))
                {
                    Return (0x07)
                }
                Else
                {
                    Return (And (0xFFFF, DID7))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID7, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID7))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD7) /* \NXD7 */
                }

                Return (NDDS (DID7))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD08)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID8), 0x0400))
                {
                    Store (0x08, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DID8, DIDX) /* \DIDX */
                    Return (0x08)
                }

                If (LEqual (DID8, Zero))
                {
                    Return (0x08)
                }
                Else
                {
                    Return (And (0xFFFF, DID8))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID8, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID8))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DID8))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD09)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DID9), 0x0400))
                {
                    Store (0x09, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DID9, DIDX) /* \DIDX */
                    Return (0x09)
                }

                If (LEqual (DID9, Zero))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (And (0xFFFF, DID9))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DID9, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DID9))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DID9))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0A)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDA), 0x0400))
                {
                    Store (0x0A, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDA, DIDX) /* \DIDX */
                    Return (0x0A)
                }

                If (LEqual (DIDA, Zero))
                {
                    Return (0x0A)
                }
                Else
                {
                    Return (And (0xFFFF, DIDA))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDA, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DIDA))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DIDA))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0B)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDB), 0x0400))
                {
                    Store (0x0B, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDB, DIDX) /* \DIDX */
                    Return (0x0B)
                }

                If (LEqual (DIDB, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (And (0xFFFF, DIDB))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDB, Zero))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (CDDS (DIDB))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DIDB))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0C)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDC), 0x0400))
                {
                    Store (0x0C, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDC, DIDX) /* \DIDX */
                    Return (0x0C)
                }

                If (LEqual (DIDC, Zero))
                {
                    Return (0x0C)
                }
                Else
                {
                    Return (And (0xFFFF, DIDC))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDC, Zero))
                {
                    Return (0x0C)
                }
                Else
                {
                    Return (CDDS (DIDC))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DIDC))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0D)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDD), 0x0400))
                {
                    Store (0x0D, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDD, DIDX) /* \DIDX */
                    Return (0x0D)
                }

                If (LEqual (DIDD, Zero))
                {
                    Return (0x0D)
                }
                Else
                {
                    Return (And (0xFFFF, DIDD))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDD, Zero))
                {
                    Return (0x0D)
                }
                Else
                {
                    Return (CDDS (DIDD))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DIDD))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0E)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDE), 0x0400))
                {
                    Store (0x0E, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDE, DIDX) /* \DIDX */
                    Return (0x0E)
                }

                If (LEqual (DIDE, Zero))
                {
                    Return (0x0E)
                }
                Else
                {
                    Return (And (0xFFFF, DIDE))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDE, Zero))
                {
                    Return (0x0E)
                }
                Else
                {
                    Return (CDDS (DIDE))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DIDE))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD0F)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (And (0x0F00, DIDF), 0x0400))
                {
                    Store (0x0F, EDPV) /* \EDPV */
                    Store (NXD8, NXDX) /* \NXDX */
                    Store (DIDF, DIDX) /* \DIDX */
                    Return (0x0F)
                }

                If (LEqual (DIDF, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (And (0xFFFF, DIDF))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (DIDC, Zero))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (CDDS (DIDF))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXD8) /* \NXD8 */
                }

                Return (NDDS (DIDF))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }
        }

        Device (DD1F)
        {
            Method (_ADR, 0, Serialized)  // _ADR: Address
            {
                If (LEqual (EDPV, Zero))
                {
                    Return (0x1F)
                }
                Else
                {
                    Return (And (0xFFFF, DIDX))
                }
            }

            Method (_DCS, 0, NotSerialized)  // _DCS: Display Current Status
            {
                If (LEqual (EDPV, Zero))
                {
                    Return (Zero)
                }
                Else
                {
                    Return (CDDS (DIDX))
                }
            }

            Method (_DGS, 0, NotSerialized)  // _DGS: Display Graphics State
            {
                If (LAnd (LEqual (And (SGMD, 0x7F), One), CondRefOf (SNXD)))
                {
                    Return (NXDX) /* \NXDX */
                }

                Return (NDDS (DIDX))
            }

            Method (_DSS, 1, NotSerialized)  // _DSS: Device Set State
            {
                DSST (Arg0)
            }

            Method (_BCL, 0, NotSerialized)  // _BCL: Brightness Control Levels
            {
                If (\_OSI ("Linux"))
                {
                    Return (Package (0x0D)
                    {
                        0x64, 
                        0x43, 
                        One, 
                        0x02, 
                        0x03, 
                        0x05, 
                        0x08, 
                        0x0C, 
                        0x12, 
                        0x1B, 
                        0x27, 
                        0x43, 
                        0x64
                    })
                }
                ElseIf (LEqual (OSYS, 0x07D9))
                {
                    Return (Package (0x0D)
                    {
                        0x50, 
                        0x28, 
                        One, 
                        0x10, 
                        0x16, 
                        0x1E, 
                        0x28, 
                        0x32, 
                        0x3C, 
                        0x46, 
                        0x50, 
                        0x5A, 
                        0x64
                    })
                }
                Else
                {
                    Return (Package (0x67)
                    {
                        0x50, 
                        0x32, 
                        Zero, 
                        One, 
                        0x02, 
                        0x03, 
                        0x04, 
                        0x05, 
                        0x06, 
                        0x07, 
                        0x08, 
                        0x09, 
                        0x0A, 
                        0x0B, 
                        0x0C, 
                        0x0D, 
                        0x0E, 
                        0x0F, 
                        0x10, 
                        0x11, 
                        0x12, 
                        0x13, 
                        0x14, 
                        0x15, 
                        0x16, 
                        0x17, 
                        0x18, 
                        0x19, 
                        0x1A, 
                        0x1B, 
                        0x1C, 
                        0x1D, 
                        0x1E, 
                        0x1F, 
                        0x20, 
                        0x21, 
                        0x22, 
                        0x23, 
                        0x24, 
                        0x25, 
                        0x26, 
                        0x27, 
                        0x28, 
                        0x29, 
                        0x2A, 
                        0x2B, 
                        0x2C, 
                        0x2D, 
                        0x2E, 
                        0x2F, 
                        0x30, 
                        0x31, 
                        0x32, 
                        0x33, 
                        0x34, 
                        0x35, 
                        0x36, 
                        0x37, 
                        0x38, 
                        0x39, 
                        0x3A, 
                        0x3B, 
                        0x3C, 
                        0x3D, 
                        0x3E, 
                        0x3F, 
                        0x40, 
                        0x41, 
                        0x42, 
                        0x43, 
                        0x44, 
                        0x45, 
                        0x46, 
                        0x47, 
                        0x48, 
                        0x49, 
                        0x4A, 
                        0x4B, 
                        0x4C, 
                        0x4D, 
                        0x4E, 
                        0x4F, 
                        0x50, 
                        0x51, 
                        0x52, 
                        0x53, 
                        0x54, 
                        0x55, 
                        0x56, 
                        0x57, 
                        0x58, 
                        0x59, 
                        0x5A, 
                        0x5B, 
                        0x5C, 
                        0x5D, 
                        0x5E, 
                        0x5F, 
                        0x60, 
                        0x61, 
                        0x62, 
                        0x63, 
                        0x64
                    })
                }
            }

            Method (_BCM, 1, NotSerialized)  // _BCM: Brightness Control Method
            {
                If (LAnd (LGreaterEqual (Arg0, Zero), LLessEqual (Arg0, 0x64)))
                {
                    \_SB.PCI0.GFX0.AINT (One, Arg0)
                    Store (Arg0, BRTL) /* \BRTL */
                }
            }

            Method (_BQC, 0, NotSerialized)  // _BQC: Brightness Query Current
            {
                Return (BRTL) /* \BRTL */
            }
        }

        Method (SDDL, 1, NotSerialized)
        {
            Increment (NDID)
            Store (And (Arg0, 0x0F0F), Local0)
            Or (0x80000000, Local0, Local1)
            If (LEqual (DIDL, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL2, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL3, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL4, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL5, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL6, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL7, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL8, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DDL9, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD10, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD11, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD12, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD13, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD14, Local0))
            {
                Return (Local1)
            }

            If (LEqual (DD15, Local0))
            {
                Return (Local1)
            }

            Return (Zero)
        }

        Method (CDDS, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F0F), Local0)
            If (LEqual (Zero, Local0))
            {
                Return (0x1D)
            }

            If (LEqual (CADL, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL2, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL3, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL4, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL5, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL6, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL7, Local0))
            {
                Return (0x1F)
            }

            If (LEqual (CAL8, Local0))
            {
                Return (0x1F)
            }

            Return (0x1D)
        }

        Method (NDDS, 1, NotSerialized)
        {
            Store (And (Arg0, 0x0F0F), Local0)
            If (LEqual (Zero, Local0))
            {
                Return (Zero)
            }

            If (LEqual (NADL, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL2, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL3, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL4, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL5, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL6, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL7, Local0))
            {
                Return (One)
            }

            If (LEqual (NDL8, Local0))
            {
                Return (One)
            }

            Return (Zero)
        }

        Method (DSST, 1, NotSerialized)
        {
            If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
            {
                Store (NSTE, CSTE) /* \CSTE */
            }
        }

        Scope (\_SB.PCI0)
        {
            OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
            Field (MCHP, AnyAcc, NoLock, Preserve)
            {
                Offset (0x14), 
                AUDE,   8, 
                Offset (0x60), 
                TASM,   10, 
                Offset (0x62)
            }
        }

        OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
        Field (IGDP, AnyAcc, NoLock, Preserve)
        {
            Offset (0x10), 
                ,   1, 
            GIVD,   1, 
                ,   2, 
            GUMA,   3, 
            Offset (0x12), 
            Offset (0x14), 
                ,   4, 
            GMFN,   1, 
            Offset (0x18), 
            Offset (0xA4), 
            ASLE,   8, 
            Offset (0xA8), 
            GSSE,   1, 
            GSSB,   14, 
            GSES,   1, 
            Offset (0xB0), 
                ,   12, 
            CDVL,   1, 
            Offset (0xB2), 
            Offset (0xB5), 
            LBPC,   8, 
            Offset (0xBC), 
            ASLS,   32
        }

        OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
        Field (IGDM, AnyAcc, NoLock, Preserve)
        {
            SIGN,   128, 
            SIZE,   32, 
            OVER,   32, 
            SVER,   256, 
            VVER,   128, 
            GVER,   128, 
            MBOX,   32, 
            DMOD,   32, 
            PCON,   32, 
            DVER,   64, 
            Offset (0x100), 
            DRDY,   32, 
            CSTS,   32, 
            CEVT,   32, 
            Offset (0x120), 
            DIDL,   32, 
            DDL2,   32, 
            DDL3,   32, 
            DDL4,   32, 
            DDL5,   32, 
            DDL6,   32, 
            DDL7,   32, 
            DDL8,   32, 
            CPDL,   32, 
            CPL2,   32, 
            CPL3,   32, 
            CPL4,   32, 
            CPL5,   32, 
            CPL6,   32, 
            CPL7,   32, 
            CPL8,   32, 
            CADL,   32, 
            CAL2,   32, 
            CAL3,   32, 
            CAL4,   32, 
            CAL5,   32, 
            CAL6,   32, 
            CAL7,   32, 
            CAL8,   32, 
            NADL,   32, 
            NDL2,   32, 
            NDL3,   32, 
            NDL4,   32, 
            NDL5,   32, 
            NDL6,   32, 
            NDL7,   32, 
            NDL8,   32, 
            ASLP,   32, 
            TIDX,   32, 
            CHPD,   32, 
            CLID,   32, 
            CDCK,   32, 
            SXSW,   32, 
            EVTS,   32, 
            CNOT,   32, 
            NRDY,   32, 
            DDL9,   32, 
            DD10,   32, 
            DD11,   32, 
            DD12,   32, 
            DD13,   32, 
            DD14,   32, 
            DD15,   32, 
            CPL9,   32, 
            CP10,   32, 
            CP11,   32, 
            CP12,   32, 
            CP13,   32, 
            CP14,   32, 
            CP15,   32, 
            Offset (0x200), 
            SCIE,   1, 
            GEFC,   4, 
            GXFC,   3, 
            GESF,   8, 
            Offset (0x204), 
            PARM,   32, 
            DSLP,   32, 
            Offset (0x300), 
            ARDY,   32, 
            ASLC,   32, 
            TCHE,   32, 
            ALSI,   32, 
            BCLP,   32, 
            PFIT,   32, 
            CBLV,   32, 
            BCLM,   320, 
            CPFM,   32, 
            EPFM,   32, 
            PLUT,   592, 
            PFMB,   32, 
            CCDV,   32, 
            PCFT,   32, 
            SROT,   32, 
            IUER,   32, 
            FDSP,   64, 
            FDSS,   32, 
            STAT,   32, 
            Offset (0x400), 
            GVD1,   49152, 
            PHED,   32, 
            BDDC,   2048
        }

        Name (DBTB, Package (0x15)
        {
            Zero, 
            0x07, 
            0x38, 
            0x01C0, 
            0x0E00, 
            0x3F, 
            0x01C7, 
            0x0E07, 
            0x01F8, 
            0x0E38, 
            0x0FC0, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            Zero, 
            0x7000, 
            0x7007, 
            0x7038, 
            0x71C0, 
            0x7E00
        })
        Name (CDCT, Package (0x05)
        {
            Package (0x02)
            {
                0xE4, 
                0x0140
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }, 

            Package (0x02)
            {
                Zero, 
                Zero
            }, 

            Package (0x02)
            {
                0xDE, 
                0x014D
            }
        })
        Name (SUCC, One)
        Name (NVLD, 0x02)
        Name (CRIT, 0x04)
        Name (NCRT, 0x06)
        Method (GSCI, 0, Serialized)
        {
            Method (GBDA, 0, Serialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (0x0659, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, One))
                {
                    Store (0x00700482, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    If (LEqual (S0ID, One))
                    {
                        Or (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x04))
                {
                    And (PARM, 0xEFFF0000, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (IBTT, PARM, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (IPSC, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (IPAT, 0x08), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Add (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (LIDS, 0x10), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Add (PARM, 0x00010000, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (IBIA, 0x14), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x07))
                {
                    Store (GIVD, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    XOr (PARM, One, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (GMFN, One), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, 0x1800, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (PARM, ShiftLeft (IDMS, 0x11), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Or (ShiftLeft (DerefOf (Index (DerefOf (Index (CDCT, HVCO)), CDVL)), 0x15
                        ), PARM, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (One, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x0A))
                {
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    If (ISSC)
                    {
                        Or (PARM, 0x03, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x0B))
                {
                    Store (KSV0, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (KSV1, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
            }

            Method (SBCB, 0, Serialized)
            {
                If (LEqual (GESF, Zero))
                {
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (0x000F87DD, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, One))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x03))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x04))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x05))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x07))
                {
                    If (LEqual (S0ID, One))
                    {
                        If (LEqual (And (PARM, 0xFF), One))
                        {
                            \GUAM (One)
                        }
                    }

                    If (LEqual (PARM, Zero))
                    {
                        Store (CLID, Local0)
                        If (And (0x80000000, Local0))
                        {
                            And (CLID, 0x0F, CLID) /* \_SB_.PCI0.GFX0.CLID */
                            GLID (CLID)
                        }
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x08))
                {
                    If (LEqual (S0ID, One))
                    {
                        Store (And (ShiftRight (PARM, 0x08), 0xFF), Local0)
                        If (LEqual (Local0, Zero))
                        {
                            \GUAM (Zero)
                        }
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x09))
                {
                    And (PARM, 0xFF, IBTT) /* \IBTT */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x0A))
                {
                    And (PARM, 0xFF, IPSC) /* \IPSC */
                    If (And (ShiftRight (PARM, 0x08), 0xFF))
                    {
                        And (ShiftRight (PARM, 0x08), 0xFF, IPAT) /* \IPAT */
                        Decrement (IPAT)
                    }

                    And (ShiftRight (PARM, 0x14), 0x07, IBIA) /* \IBIA */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x0B))
                {
                    And (ShiftRight (PARM, One), One, IF1E) /* \IF1E */
                    If (And (PARM, 0x0001E000))
                    {
                        And (ShiftRight (PARM, 0x0D), 0x0F, IDMS) /* \IDMS */
                    }
                    Else
                    {
                        And (ShiftRight (PARM, 0x11), 0x0F, IDMS) /* \IDMS */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x10))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x11))
                {
                    Store (ShiftLeft (LIDS, 0x08), PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Add (PARM, 0x0100, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x12))
                {
                    If (And (PARM, One))
                    {
                        If (LEqual (ShiftRight (PARM, One), One))
                        {
                            Store (One, ISSC) /* \ISSC */
                        }
                        Else
                        {
                            Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                            Return (CRIT) /* \_SB_.PCI0.GFX0.CRIT */
                        }
                    }
                    Else
                    {
                        Store (Zero, ISSC) /* \ISSC */
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x13))
                {
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x14))
                {
                    And (PARM, 0x0F, PAVP) /* \PAVP */
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x15))
                {
                    If (LEqual (PARM, One))
                    {
                        Or (\_SB.PCI0.AUDE, 0x20, \_SB.PCI0.AUDE)
                        \_SB.PCI0.B0D3.ABWA (One)
                        \_SB.PCI0.B0D3.ARST ()
                        \_SB.PCI0.B0D3.ASTR ()
                        \_SB.PCI0.B0D3.AINI ()
                        \_SB.PCI0.B0D3.CXDC ()
                        \_SB.PCI0.B0D3.ABWA (Zero)
                        Notify (\_SB.PCI0, Zero) // Bus Check
                    }

                    If (LEqual (PARM, Zero))
                    {
                        And (\_SB.PCI0.AUDE, 0xDF, \_SB.PCI0.AUDE)
                        Notify (\_SB.PCI0, Zero) // Bus Check
                    }

                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Store (Zero, PARM) /* \_SB_.PCI0.GFX0.PARM */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                If (LEqual (GESF, 0x16))
                {
                    And (PARM, 0x03, Local0)
                    \_SB.PCI0.B0D3.DCCC (Local0)
                    Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                    Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
                }

                Store (Zero, GESF) /* \_SB_.PCI0.GFX0.GESF */
                Return (SUCC) /* \_SB_.PCI0.GFX0.SUCC */
            }

            If (LEqual (GEFC, 0x04))
            {
                Store (GBDA (), GXFC) /* \_SB_.PCI0.GFX0.GXFC */
            }

            If (LEqual (GEFC, 0x06))
            {
                Store (SBCB (), GXFC) /* \_SB_.PCI0.GFX0.GXFC */
            }

            Store (Zero, GEFC) /* \_SB_.PCI0.GFX0.GEFC */
            Store (One, SCIS) /* External reference */
            Store (Zero, GSSE) /* \_SB_.PCI0.GFX0.GSSE */
            Store (Zero, SCIE) /* \_SB_.PCI0.GFX0.SCIE */
            Return (Zero)
        }

        Method (PDRD, 0, NotSerialized)
        {
            Return (LNot (DRDY))
        }

        Method (PSTS, 0, NotSerialized)
        {
            If (LGreater (CSTS, 0x02))
            {
                Sleep (ASLP)
            }

            Return (LEqual (CSTS, 0x03))
        }

        Method (GNOT, 2, NotSerialized)
        {
            If (PDRD ())
            {
                Return (One)
            }

            Store (Arg0, CEVT) /* \_SB_.PCI0.GFX0.CEVT */
            Store (0x03, CSTS) /* \_SB_.PCI0.GFX0.CSTS */
            If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
            {
                Notify (\_SB.PCI0.GFX0, Arg1)
            }

            If (CondRefOf (HNOT))
            {
                HNOT (Arg0)
            }
            Else
            {
                Notify (\_SB.PCI0.GFX0, 0x80) // Status Change
            }

            Return (Zero)
        }

        Method (GHDS, 1, NotSerialized)
        {
            Store (Arg0, TIDX) /* \_SB_.PCI0.GFX0.TIDX */
            Return (GNOT (One, Zero))
        }

        Method (GLID, 1, NotSerialized)
        {
            If (LEqual (Arg0, One))
            {
                Store (0x03, CLID) /* \_SB_.PCI0.GFX0.CLID */
            }
            Else
            {
                Store (Arg0, CLID) /* \_SB_.PCI0.GFX0.CLID */
            }

            If (GNOT (0x02, Zero))
            {
                Or (CLID, 0x80000000, CLID) /* \_SB_.PCI0.GFX0.CLID */
                Return (One)
            }

            Return (Zero)
        }

        Method (GDCK, 1, NotSerialized)
        {
            Store (Arg0, CDCK) /* \_SB_.PCI0.GFX0.CDCK */
            Return (GNOT (0x04, Zero))
        }

        Method (PARD, 0, NotSerialized)
        {
            If (LNot (ARDY))
            {
                Sleep (ASLP)
            }

            Return (LNot (ARDY))
        }

        Method (IUEH, 1, Serialized)
        {
            And (IUER, 0xC0, IUER) /* \_SB_.PCI0.GFX0.IUER */
            XOr (IUER, ShiftLeft (One, Arg0), IUER) /* \_SB_.PCI0.GFX0.IUER */
            If (LLessEqual (Arg0, 0x04))
            {
                Return (AINT (0x05, Zero))
            }
            Else
            {
                Return (AINT (Arg0, Zero))
            }
        }

        Method (AINT, 2, NotSerialized)
        {
            If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
            {
                Return (One)
            }

            If (PARD ())
            {
                Return (One)
            }

            If (LAnd (LGreaterEqual (Arg0, 0x05), LLessEqual (Arg0, 0x07)))
            {
                Store (ShiftLeft (One, Arg0), ASLC) /* \_SB_.PCI0.GFX0.ASLC */
                Store (One, ASLE) /* \_SB_.PCI0.GFX0.ASLE */
                Store (Zero, Local2)
                While (LAnd (LLess (Local2, 0xFA), LNotEqual (ASLC, Zero)))
                {
                    Sleep (0x04)
                    Increment (Local2)
                }

                Return (Zero)
            }

            If (LEqual (Arg0, 0x02))
            {
                If (CPFM)
                {
                    And (CPFM, 0x0F, Local0)
                    And (EPFM, 0x0F, Local1)
                    If (LEqual (Local0, One))
                    {
                        If (And (Local1, 0x06))
                        {
                            Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                        ElseIf (And (Local1, 0x08))
                        {
                            Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                        Else
                        {
                            Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                    }

                    If (LEqual (Local0, 0x06))
                    {
                        If (And (Local1, 0x08))
                        {
                            Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                        ElseIf (And (Local1, One))
                        {
                            Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                        Else
                        {
                            Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                    }

                    If (LEqual (Local0, 0x08))
                    {
                        If (And (Local1, One))
                        {
                            Store (One, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                        ElseIf (And (Local1, 0x06))
                        {
                            Store (0x06, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                        Else
                        {
                            Store (0x08, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                        }
                    }
                }
                Else
                {
                    XOr (PFIT, 0x07, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                }

                Or (PFIT, 0x80000000, PFIT) /* \_SB_.PCI0.GFX0.PFIT */
                Store (0x04, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP) /* \_SB_.PCI0.GFX0.BCLP */
                Or (BCLP, 0x80000000, BCLP) /* \_SB_.PCI0.GFX0.BCLP */
                Store (0x02, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
            }
            ElseIf (LEqual (Arg0, Zero))
            {
                Store (Arg1, ALSI) /* \_SB_.PCI0.GFX0.ALSI */
                Store (One, ASLC) /* \_SB_.PCI0.GFX0.ASLC */
            }
            Else
            {
                Return (One)
            }

            Store (One, ASLE) /* \_SB_.PCI0.GFX0.ASLE */
            Return (Zero)
        }

        Device (\_SB.MEM2)
        {
            Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (CRS2, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x20000000,         // Address Base
                    0x00200000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x40004000,         // Address Base
                    0x00001000,         // Address Length
                    )
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (IGDS)
                {
                    If (LEqual (PNHM, 0x000306C1))
                    {
                        Return (0x0F)
                    }
                }

                Return (Zero)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Return (CRS2) /* \_SB_.MEM2.CRS2 */
            }
        }

        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (ECR1, One))
            {
                If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                {
                    If (LGreaterEqual (Arg1, 0x03))
                    {
                        If (LEqual (Arg2, Zero))
                        {
                            Return (Buffer (0x02)
                            {
                                 0x01, 0x02                                       // ..
                            })
                        }

                        If (LEqual (Arg2, 0x09))
                        {
                            Return (Package (0x05)
                            {
                                0xC350, 
                                Ones, 
                                Ones, 
                                0xC350, 
                                Ones
                            })
                        }
                    }
                }
            }

            Name (DRET, Buffer (0x04)
            {
                 0x00                                             // .
            })
            Return (DRET) /* \_SB_.PCI0.GFX0._DSM.DRET */
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (HBRB, Zero)
        Name (HBRD, Zero)
        Name (HBRF, Zero)
        Name (IVID, 0xFFFF)
        Name (PEBA, Zero)
        Name (PEGI, Zero)
        Name (PBUS, Zero)
        Name (PDEV, Zero)
        Name (PFUN, Zero)
        Name (EBUS, Zero)
        Name (EDEV, Zero)
        Name (EFN0, Zero)
        Name (EFN1, One)
        Name (INDX, Zero)
        Name (POFF, Zero)
        Name (PLEN, Zero)
        Name (WLSB, Zero)
        Name (WMSB, Zero)
        Name (SPGA, Zero)
        Name (VIOF, Zero)
        Name (DSOF, 0x06)
        Name (CPOF, 0x34)
        Name (SBOF, 0x19)
        Name (ELC0, Zero)
        Name (ECP0, 0xFFFFFFFF)
        Name (H0VI, Zero)
        Name (H0DI, Zero)
        Name (ELC1, Zero)
        Name (ECP1, 0xFFFFFFFF)
        Name (H1VI, Zero)
        Name (H1DI, Zero)
        Name (ELC2, Zero)
        Name (ECP2, 0xFFFFFFFF)
        Name (H2VI, Zero)
        Name (H2DI, Zero)
        Name (TIDX, Zero)
        Name (OTSD, Zero)
        Name (MXPG, 0x03)
        Name (FBDL, Zero)
        Name (CBDL, Zero)
        Name (MBDL, Zero)
        Name (HSTR, Zero)
        Name (LREV, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Name (DCMN, Buffer (0x035D)
        {
            /* 0000 */  0xD8, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0008 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x09,  // ........
            /* 0010 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x08, 0x09, 0x04,  // ........
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x0C, 0x09, 0x04, 0x00,  // ........
            /* 0020 */  0x00, 0x00, 0x00, 0x10, 0x09, 0x04, 0x00, 0x00,  // ........
            /* 0028 */  0x00, 0x00, 0x0C, 0x08, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0030 */  0x00, 0x20, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  // . ......
            /* 0038 */  0x24, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x28,  // $......(
            /* 0040 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x09,  // ......,.
            /* 0048 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x30, 0x09, 0x04,  // .....0..
            /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x2C, 0x08, 0x04, 0x00,  // ....,...
            /* 0058 */  0x00, 0x00, 0x00, 0x40, 0x09, 0x04, 0x00, 0x00,  // ...@....
            /* 0060 */  0x00, 0x00, 0x44, 0x09, 0x04, 0x00, 0x00, 0x00,  // ..D.....
            /* 0068 */  0x00, 0x48, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  // .H......
            /* 0070 */  0x4C, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x50,  // L......P
            /* 0078 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x4C, 0x08,  // ......L.
            /* 0080 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x09, 0x04,  // .....`..
            /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x64, 0x09, 0x04, 0x00,  // ....d...
            /* 0090 */  0x00, 0x00, 0x00, 0x68, 0x09, 0x04, 0x00, 0x00,  // ...h....
            /* 0098 */  0x00, 0x00, 0x6C, 0x09, 0x04, 0x00, 0x00, 0x00,  // ..l.....
            /* 00A0 */  0x00, 0x70, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  // .p......
            /* 00A8 */  0x6C, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80,  // l.......
            /* 00B0 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x09,  // ........
            /* 00B8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x88, 0x09, 0x04,  // ........
            /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x8C, 0x09, 0x04, 0x00,  // ........
            /* 00C8 */  0x00, 0x00, 0x00, 0x90, 0x09, 0x04, 0x00, 0x00,  // ........
            /* 00D0 */  0x00, 0x00, 0x8C, 0x08, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 00D8 */  0x00, 0xA0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00E0 */  0xA4, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xA8,  // ........
            /* 00E8 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC, 0x09,  // ........
            /* 00F0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x09, 0x04,  // ........
            /* 00F8 */  0x00, 0x00, 0x00, 0x00, 0xAC, 0x08, 0x04, 0x00,  // ........
            /* 0100 */  0x00, 0x00, 0x00, 0xC0, 0x09, 0x04, 0x00, 0x00,  // ........
            /* 0108 */  0x00, 0x00, 0xC4, 0x09, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0110 */  0x00, 0xC8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0118 */  0xCC, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0,  // ........
            /* 0120 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC, 0x08,  // ........
            /* 0128 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xE0, 0x09, 0x04,  // ........
            /* 0130 */  0x00, 0x00, 0x00, 0x00, 0xE4, 0x09, 0x04, 0x00,  // ........
            /* 0138 */  0x00, 0x00, 0x00, 0xE8, 0x09, 0x04, 0x00, 0x00,  // ........
            /* 0140 */  0x00, 0x00, 0xEC, 0x09, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0148 */  0x00, 0xF0, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0150 */  0xEC, 0x08, 0x04, 0x00, 0x00, 0x00, 0x00, 0x30,  // .......0
            /* 0158 */  0x0C, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0A,  // ........
            /* 0160 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x0A, 0x04,  // ........
            /* 0168 */  0x00, 0x00, 0x00, 0x00, 0x08, 0x0A, 0x04, 0x00,  // ........
            /* 0170 */  0x00, 0x00, 0x00, 0x0C, 0x0A, 0x04, 0x00, 0x00,  // ........
            /* 0178 */  0x00, 0x00, 0xA0, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0180 */  0x00, 0xA4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0188 */  0xA8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xAC,  // ........
            /* 0190 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x0A,  // ........
            /* 0198 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x0A, 0x04,  // ........
            /* 01A0 */  0x00, 0x00, 0x00, 0x00, 0xB8, 0x0A, 0x04, 0x00,  // ........
            /* 01A8 */  0x00, 0x00, 0x00, 0xBC, 0x0A, 0x04, 0x00, 0x00,  // ........
            /* 01B0 */  0x00, 0x00, 0xC0, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 01B8 */  0x00, 0xC4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01C0 */  0xC8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC,  // ........
            /* 01C8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x0A,  // ........
            /* 01D0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xD4, 0x0A, 0x04,  // ........
            /* 01D8 */  0x00, 0x00, 0x00, 0x00, 0xD8, 0x0A, 0x04, 0x00,  // ........
            /* 01E0 */  0x00, 0x00, 0x00, 0xDC, 0x0A, 0x04, 0x00, 0x00,  // ........
            /* 01E8 */  0x00, 0x00, 0xE0, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 01F0 */  0x00, 0xE4, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 01F8 */  0xE8, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xEC,  // ........
            /* 0200 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF0, 0x0A,  // ........
            /* 0208 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xF4, 0x0A, 0x04,  // ........
            /* 0210 */  0x00, 0x00, 0x00, 0x00, 0xF8, 0x0A, 0x04, 0x00,  // ........
            /* 0218 */  0x00, 0x00, 0x00, 0xFC, 0x0A, 0x04, 0x00, 0x00,  // ........
            /* 0220 */  0x00, 0x00, 0x10, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0228 */  0x00, 0x14, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0230 */  0x18, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x1C,  // ........
            /* 0238 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x20, 0x0A,  // ...... .
            /* 0240 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x24, 0x0A, 0x04,  // .....$..
            /* 0248 */  0x00, 0x00, 0x00, 0x00, 0x28, 0x0A, 0x04, 0x00,  // ....(...
            /* 0250 */  0x00, 0x00, 0x00, 0x2C, 0x0A, 0x04, 0x00, 0x00,  // ...,....
            /* 0258 */  0x00, 0x00, 0x30, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ..0.....
            /* 0260 */  0x00, 0x34, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // .4......
            /* 0268 */  0x38, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x3C,  // 8......<
            /* 0270 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x40, 0x0A,  // ......@.
            /* 0278 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x0A, 0x04,  // .....D..
            /* 0280 */  0x00, 0x00, 0x00, 0x00, 0x48, 0x0A, 0x04, 0x00,  // ....H...
            /* 0288 */  0x00, 0x00, 0x00, 0x4C, 0x0A, 0x04, 0x00, 0x00,  // ...L....
            /* 0290 */  0x00, 0x00, 0x50, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ..P.....
            /* 0298 */  0x00, 0x54, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // .T......
            /* 02A0 */  0x58, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C,  // X......\
            /* 02A8 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x0A,  // ......`.
            /* 02B0 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x64, 0x0A, 0x04,  // .....d..
            /* 02B8 */  0x00, 0x00, 0x00, 0x00, 0x68, 0x0A, 0x04, 0x00,  // ....h...
            /* 02C0 */  0x00, 0x00, 0x00, 0x6C, 0x0A, 0x04, 0x00, 0x00,  // ...l....
            /* 02C8 */  0x00, 0x00, 0x70, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ..p.....
            /* 02D0 */  0x00, 0x74, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // .t......
            /* 02D8 */  0x78, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x7C,  // x......|
            /* 02E0 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x80, 0x0A,  // ........
            /* 02E8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x84, 0x0A, 0x04,  // ........
            /* 02F0 */  0x00, 0x00, 0x00, 0x00, 0x88, 0x0A, 0x04, 0x00,  // ........
            /* 02F8 */  0x00, 0x00, 0x00, 0x8C, 0x0A, 0x04, 0x00, 0x00,  // ........
            /* 0300 */  0x00, 0x00, 0x90, 0x0A, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0308 */  0x00, 0x94, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0310 */  0x98, 0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x9C,  // ........
            /* 0318 */  0x0A, 0x04, 0x00, 0x00, 0x00, 0x00, 0x18, 0x09,  // ........
            /* 0320 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x38, 0x09, 0x04,  // .....8..
            /* 0328 */  0x00, 0x00, 0x00, 0x00, 0x58, 0x09, 0x04, 0x00,  // ....X...
            /* 0330 */  0x00, 0x00, 0x00, 0x78, 0x09, 0x04, 0x00, 0x00,  // ...x....
            /* 0338 */  0x00, 0x00, 0x98, 0x09, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0340 */  0x00, 0xB8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0348 */  0xD8, 0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF8,  // ........
            /* 0350 */  0x09, 0x04, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF,  // ........
            /* 0358 */  0x04, 0xFF, 0xFF, 0xFF, 0xFF                     // .....
        })
        Name (DPG0, Buffer (0x0196)
        {
            /* 0000 */  0x24, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF8,  // $.......
            /* 0008 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x02,  // ......`.
            /* 0010 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x28, 0x0C, 0x04,  // .....(..
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x38, 0x0C, 0x04, 0x00,  // ....8...
            /* 0020 */  0x00, 0x00, 0x00, 0x14, 0x0D, 0x04, 0x00, 0x00,  // ........
            /* 0028 */  0x00, 0x00, 0x0C, 0x00, 0x01, 0x00, 0x19, 0x00,  // ........
            /* 0030 */  0x01, 0x00, 0x1A, 0x00, 0x01, 0x00, 0x1C, 0x00,  // ........
            /* 0038 */  0x01, 0x00, 0x1D, 0x00, 0x01, 0x00, 0x20, 0x00,  // ...... .
            /* 0040 */  0x02, 0x00, 0x00, 0x22, 0x00, 0x02, 0x00, 0x00,  // ..."....
            /* 0048 */  0x24, 0x00, 0x02, 0x00, 0x00, 0x26, 0x00, 0x02,  // $....&..
            /* 0050 */  0x00, 0x00, 0x28, 0x00, 0x04, 0x00, 0x00, 0x00,  // ..(.....
            /* 0058 */  0x00, 0x2C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,  // .,......
            /* 0060 */  0x3C, 0x00, 0x01, 0x00, 0x3D, 0x00, 0x01, 0x00,  // <...=...
            /* 0068 */  0x3E, 0x00, 0x02, 0x00, 0x00, 0x84, 0x00, 0x04,  // >.......
            /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x8C, 0x00, 0x04, 0x00,  // ........
            /* 0078 */  0x00, 0x00, 0x00, 0x92, 0x00, 0x02, 0x00, 0x00,  // ........
            /* 0080 */  0x94, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x98,  // ........
            /* 0088 */  0x00, 0x02, 0x00, 0x00, 0xA2, 0x00, 0x02, 0x00,  // ........
            /* 0090 */  0x00, 0xA8, 0x00, 0x02, 0x00, 0x00, 0xAC, 0x00,  // ........
            /* 0098 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x02,  // ........
            /* 00A0 */  0x00, 0x00, 0xB4, 0x00, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 00A8 */  0x00, 0xBC, 0x00, 0x02, 0x00, 0x00, 0xC8, 0x00,  // ........
            /* 00B0 */  0x02, 0x00, 0x00, 0xD0, 0x00, 0x02, 0x00, 0x00,  // ........
            /* 00B8 */  0xEC, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x14,  // ........
            /* 00C0 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x01,  // ......D.
            /* 00C8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x50, 0x01, 0x04,  // .....P..
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x58, 0x01, 0x04, 0x00,  // ....X...
            /* 00D8 */  0x00, 0x00, 0x00, 0x5C, 0x01, 0x04, 0x00, 0x00,  // ...\....
            /* 00E0 */  0x00, 0x00, 0xFC, 0x01, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 00E8 */  0x00, 0x00, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00F0 */  0x04, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x08,  // ........
            /* 00F8 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x28, 0x02,  // ......(.
            /* 0100 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x02, 0x04,  // .....,..
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x38, 0x02, 0x04, 0x00,  // ....8...
            /* 0110 */  0x00, 0x00, 0x00, 0x40, 0x02, 0x04, 0x00, 0x00,  // ...@....
            /* 0118 */  0x00, 0x00, 0x44, 0x02, 0x04, 0x00, 0x00, 0x00,  // ..D.....
            /* 0120 */  0x00, 0x50, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,  // .P......
            /* 0128 */  0x58, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C,  // X......\
            /* 0130 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x0C,  // ........
            /* 0138 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x34, 0x0D, 0x04,  // .....4..
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0xF4, 0x00, 0x04, 0x00,  // ........
            /* 0148 */  0x00, 0x00, 0x00, 0xA0, 0x0D, 0x04, 0x00, 0x00,  // ........
            /* 0150 */  0x00, 0x00, 0xA4, 0x0D, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0158 */  0x00, 0xA8, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0160 */  0xAC, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xB0,  // ........
            /* 0168 */  0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xB4, 0x0D,  // ........
            /* 0170 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB8, 0x0D, 0x04,  // ........
            /* 0178 */  0x00, 0x00, 0x00, 0x00, 0xBC, 0x0D, 0x04, 0x00,  // ........
            /* 0180 */  0x00, 0x00, 0x00, 0xCC, 0x01, 0x04, 0x00, 0x00,  // ........
            /* 0188 */  0x00, 0x00, 0x04, 0x00, 0x02, 0x00, 0x00, 0xFF,  // ........
            /* 0190 */  0xFF, 0x04, 0xFF, 0xFF, 0xFF, 0xFF               // ......
        })
        Name (DPG1, Buffer (0x017A)
        {
            /* 0000 */  0x24, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF8,  // $.......
            /* 0008 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x02,  // ......`.
            /* 0010 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x28, 0x0C, 0x04,  // .....(..
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x38, 0x0C, 0x04, 0x00,  // ....8...
            /* 0020 */  0x00, 0x00, 0x00, 0x14, 0x0D, 0x04, 0x00, 0x00,  // ........
            /* 0028 */  0x00, 0x00, 0x0C, 0x00, 0x01, 0x00, 0x19, 0x00,  // ........
            /* 0030 */  0x01, 0x00, 0x1A, 0x00, 0x01, 0x00, 0x1C, 0x00,  // ........
            /* 0038 */  0x01, 0x00, 0x1D, 0x00, 0x01, 0x00, 0x20, 0x00,  // ...... .
            /* 0040 */  0x02, 0x00, 0x00, 0x22, 0x00, 0x02, 0x00, 0x00,  // ..."....
            /* 0048 */  0x24, 0x00, 0x02, 0x00, 0x00, 0x26, 0x00, 0x02,  // $....&..
            /* 0050 */  0x00, 0x00, 0x28, 0x00, 0x04, 0x00, 0x00, 0x00,  // ..(.....
            /* 0058 */  0x00, 0x2C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,  // .,......
            /* 0060 */  0x3C, 0x00, 0x01, 0x00, 0x3D, 0x00, 0x01, 0x00,  // <...=...
            /* 0068 */  0x3E, 0x00, 0x02, 0x00, 0x00, 0x84, 0x00, 0x04,  // >.......
            /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x8C, 0x00, 0x04, 0x00,  // ........
            /* 0078 */  0x00, 0x00, 0x00, 0x92, 0x00, 0x02, 0x00, 0x00,  // ........
            /* 0080 */  0x94, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x98,  // ........
            /* 0088 */  0x00, 0x02, 0x00, 0x00, 0xA2, 0x00, 0x02, 0x00,  // ........
            /* 0090 */  0x00, 0xA8, 0x00, 0x02, 0x00, 0x00, 0xAC, 0x00,  // ........
            /* 0098 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x02,  // ........
            /* 00A0 */  0x00, 0x00, 0xB4, 0x00, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 00A8 */  0x00, 0xBC, 0x00, 0x02, 0x00, 0x00, 0xC8, 0x00,  // ........
            /* 00B0 */  0x02, 0x00, 0x00, 0xD0, 0x00, 0x02, 0x00, 0x00,  // ........
            /* 00B8 */  0xEC, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x14,  // ........
            /* 00C0 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x01,  // ......D.
            /* 00C8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x50, 0x01, 0x04,  // .....P..
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x58, 0x01, 0x04, 0x00,  // ....X...
            /* 00D8 */  0x00, 0x00, 0x00, 0x5C, 0x01, 0x04, 0x00, 0x00,  // ...\....
            /* 00E0 */  0x00, 0x00, 0xFC, 0x01, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 00E8 */  0x00, 0x00, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00F0 */  0x04, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x08,  // ........
            /* 00F8 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x28, 0x02,  // ......(.
            /* 0100 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x02, 0x04,  // .....,..
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x38, 0x02, 0x04, 0x00,  // ....8...
            /* 0110 */  0x00, 0x00, 0x00, 0x40, 0x02, 0x04, 0x00, 0x00,  // ...@....
            /* 0118 */  0x00, 0x00, 0x44, 0x02, 0x04, 0x00, 0x00, 0x00,  // ..D.....
            /* 0120 */  0x00, 0x50, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,  // .P......
            /* 0128 */  0x58, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C,  // X......\
            /* 0130 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x0C,  // ........
            /* 0138 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x34, 0x0D, 0x04,  // .....4..
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0xF4, 0x00, 0x04, 0x00,  // ........
            /* 0148 */  0x00, 0x00, 0x00, 0xA0, 0x0D, 0x04, 0x00, 0x00,  // ........
            /* 0150 */  0x00, 0x00, 0xA4, 0x0D, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0158 */  0x00, 0xA8, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0160 */  0xAC, 0x0D, 0x04, 0x00, 0x00, 0x00, 0x00, 0xCC,  // ........
            /* 0168 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x04, 0x00,  // ........
            /* 0170 */  0x02, 0x00, 0x00, 0xFF, 0xFF, 0x04, 0xFF, 0xFF,  // ........
            /* 0178 */  0xFF, 0xFF                                       // ..
        })
        Name (DPG2, Buffer (0x016C)
        {
            /* 0000 */  0x24, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0xF8,  // $.......
            /* 0008 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x60, 0x02,  // ......`.
            /* 0010 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x28, 0x0C, 0x04,  // .....(..
            /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x38, 0x0C, 0x04, 0x00,  // ....8...
            /* 0020 */  0x00, 0x00, 0x00, 0x14, 0x0D, 0x04, 0x00, 0x00,  // ........
            /* 0028 */  0x00, 0x00, 0x0C, 0x00, 0x01, 0x00, 0x19, 0x00,  // ........
            /* 0030 */  0x01, 0x00, 0x1A, 0x00, 0x01, 0x00, 0x1C, 0x00,  // ........
            /* 0038 */  0x01, 0x00, 0x1D, 0x00, 0x01, 0x00, 0x20, 0x00,  // ...... .
            /* 0040 */  0x02, 0x00, 0x00, 0x22, 0x00, 0x02, 0x00, 0x00,  // ..."....
            /* 0048 */  0x24, 0x00, 0x02, 0x00, 0x00, 0x26, 0x00, 0x02,  // $....&..
            /* 0050 */  0x00, 0x00, 0x28, 0x00, 0x04, 0x00, 0x00, 0x00,  // ..(.....
            /* 0058 */  0x00, 0x2C, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00,  // .,......
            /* 0060 */  0x3C, 0x00, 0x01, 0x00, 0x3D, 0x00, 0x01, 0x00,  // <...=...
            /* 0068 */  0x3E, 0x00, 0x02, 0x00, 0x00, 0x84, 0x00, 0x04,  // >.......
            /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x8C, 0x00, 0x04, 0x00,  // ........
            /* 0078 */  0x00, 0x00, 0x00, 0x92, 0x00, 0x02, 0x00, 0x00,  // ........
            /* 0080 */  0x94, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x98,  // ........
            /* 0088 */  0x00, 0x02, 0x00, 0x00, 0xA2, 0x00, 0x02, 0x00,  // ........
            /* 0090 */  0x00, 0xA8, 0x00, 0x02, 0x00, 0x00, 0xAC, 0x00,  // ........
            /* 0098 */  0x04, 0x00, 0x00, 0x00, 0x00, 0xB0, 0x00, 0x02,  // ........
            /* 00A0 */  0x00, 0x00, 0xB4, 0x00, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 00A8 */  0x00, 0xBC, 0x00, 0x02, 0x00, 0x00, 0xC8, 0x00,  // ........
            /* 00B0 */  0x02, 0x00, 0x00, 0xD0, 0x00, 0x02, 0x00, 0x00,  // ........
            /* 00B8 */  0xEC, 0x00, 0x04, 0x00, 0x00, 0x00, 0x00, 0x14,  // ........
            /* 00C0 */  0x01, 0x04, 0x00, 0x00, 0x00, 0x00, 0x44, 0x01,  // ......D.
            /* 00C8 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x50, 0x01, 0x04,  // .....P..
            /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x58, 0x01, 0x04, 0x00,  // ....X...
            /* 00D8 */  0x00, 0x00, 0x00, 0x5C, 0x01, 0x04, 0x00, 0x00,  // ...\....
            /* 00E0 */  0x00, 0x00, 0xFC, 0x01, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 00E8 */  0x00, 0x00, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 00F0 */  0x04, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x08,  // ........
            /* 00F8 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x28, 0x02,  // ......(.
            /* 0100 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x2C, 0x02, 0x04,  // .....,..
            /* 0108 */  0x00, 0x00, 0x00, 0x00, 0x38, 0x02, 0x04, 0x00,  // ....8...
            /* 0110 */  0x00, 0x00, 0x00, 0x40, 0x02, 0x04, 0x00, 0x00,  // ...@....
            /* 0118 */  0x00, 0x00, 0x44, 0x02, 0x04, 0x00, 0x00, 0x00,  // ..D.....
            /* 0120 */  0x00, 0x50, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00,  // .P......
            /* 0128 */  0x58, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x5C,  // X......\
            /* 0130 */  0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0xD0, 0x0C,  // ........
            /* 0138 */  0x04, 0x00, 0x00, 0x00, 0x00, 0x34, 0x0D, 0x04,  // .....4..
            /* 0140 */  0x00, 0x00, 0x00, 0x00, 0xF4, 0x00, 0x04, 0x00,  // ........
            /* 0148 */  0x00, 0x00, 0x00, 0xA0, 0x0D, 0x04, 0x00, 0x00,  // ........
            /* 0150 */  0x00, 0x00, 0xA4, 0x0D, 0x04, 0x00, 0x00, 0x00,  // ........
            /* 0158 */  0x00, 0xCC, 0x01, 0x04, 0x00, 0x00, 0x00, 0x00,  // ........
            /* 0160 */  0x04, 0x00, 0x02, 0x00, 0x00, 0xFF, 0xFF, 0x04,  // ........
            /* 0168 */  0xFF, 0xFF, 0xFF, 0xFF                           // ....
        })
        Name (DCLR, Buffer (0x43)
        {
            /* 0000 */  0x06, 0x00, 0x02, 0xFF, 0xFF, 0x1E, 0x00, 0x02,  // ........
            /* 0008 */  0xFF, 0xFF, 0xAA, 0x00, 0x02, 0xFF, 0xFF, 0xC0,  // ........
            /* 0010 */  0x00, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xD2, 0x00,  // ........
            /* 0018 */  0x02, 0xFF, 0xFF, 0xC4, 0x01, 0x04, 0xFF, 0xFF,  // ........
            /* 0020 */  0xFF, 0xFF, 0xD0, 0x01, 0x04, 0xFF, 0xFF, 0xFF,  // ........
            /* 0028 */  0xFF, 0xF0, 0x01, 0x04, 0xFF, 0xFF, 0xFF, 0xFF,  // ........
            /* 0030 */  0x9C, 0x0D, 0x04, 0xFF, 0xFF, 0xFF, 0xFF, 0xB2,  // ........
            /* 0038 */  0x00, 0x02, 0xFF, 0xFF, 0xFF, 0xFF, 0x04, 0xFF,  // ........
            /* 0040 */  0xFF, 0xFF, 0xFF                                 // ...
        })
        Name (ONOF, Buffer (0x03)
        {
             0x01, 0x01, 0x01                                 // ...
        })
        OperationRegion (OPG0, SystemMemory, Add (XBAS, 0x8000), 0x1000)
        Field (OPG0, AnyAcc, NoLock, Preserve)
        {
            P0VI,   16, 
            P0DI,   16, 
            Offset (0x06), 
            DSO0,   16, 
            Offset (0x34), 
            CPO0,   8, 
            Offset (0xB0), 
                ,   4, 
            P0LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P0VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P0LS,   4, 
            Offset (0x504), 
            HST0,   32, 
            P0TR,   1, 
            Offset (0x91C), 
                ,   31, 
            BSP1,   1, 
            Offset (0x93C), 
                ,   31, 
            BSP2,   1, 
            Offset (0x95C), 
                ,   31, 
            BSP3,   1, 
            Offset (0x97C), 
                ,   31, 
            BSP4,   1, 
            Offset (0x99C), 
                ,   31, 
            BSP5,   1, 
            Offset (0x9BC), 
                ,   31, 
            BSP6,   1, 
            Offset (0x9DC), 
                ,   31, 
            BSP7,   1, 
            Offset (0x9FC), 
                ,   31, 
            BSP8,   1, 
            Offset (0xC20), 
                ,   4, 
            P0AP,   2, 
            Offset (0xD0C), 
            LRV0,   32
        }

        OperationRegion (PCS0, SystemMemory, Add (XBAS, ShiftLeft (SBN0, 0x14)), 0xF0)
        Field (PCS0, DWordAcc, Lock, Preserve)
        {
            D0VI,   16, 
            Offset (0x2C), 
            S0VI,   16, 
            S0DI,   16, 
            Offset (0x4C), 
            W0VI,   16, 
            W0DI,   16
        }

        OperationRegion (CAP0, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN0, 0x14)), EECP), 0x14)
        Field (CAP0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP0,   32, 
            LCT0,   16
        }

        OperationRegion (OPG1, SystemMemory, Add (XBAS, 0x9000), 0x1000)
        Field (OPG1, AnyAcc, NoLock, Preserve)
        {
            P1VI,   16, 
            P1DI,   16, 
            Offset (0x06), 
            DSO1,   16, 
            Offset (0x34), 
            CPO1,   8, 
            Offset (0xB0), 
                ,   4, 
            P1LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P1VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P1LS,   4, 
            Offset (0x504), 
            HST1,   32, 
            P1TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P1AP,   2, 
            Offset (0xD0C), 
            LRV1,   32
        }

        OperationRegion (PCS1, SystemMemory, Add (XBAS, ShiftLeft (SBN1, 0x14)), 0xF0)
        Field (PCS1, DWordAcc, Lock, Preserve)
        {
            D1VI,   16, 
            Offset (0x2C), 
            S1VI,   16, 
            S1DI,   16, 
            Offset (0x4C), 
            W1VI,   16, 
            W1DI,   16
        }

        OperationRegion (CAP1, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN1, 0x14)), EEC1), 0x14)
        Field (CAP1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP1,   32, 
            LCT1,   16
        }

        OperationRegion (OPG2, SystemMemory, Add (XBAS, 0xA000), 0x1000)
        Field (OPG2, AnyAcc, NoLock, Preserve)
        {
            P2VI,   16, 
            P2DI,   16, 
            Offset (0x06), 
            DSO2,   16, 
            Offset (0x34), 
            CPO2,   8, 
            Offset (0xB0), 
                ,   4, 
            P2LD,   1, 
            Offset (0x11A), 
                ,   1, 
            P2VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P2LS,   4, 
            Offset (0x504), 
            HST2,   32, 
            P2TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P2AP,   2, 
            Offset (0xD0C), 
            LRV2,   32
        }

        OperationRegion (PCS2, SystemMemory, Add (XBAS, ShiftLeft (SBN2, 0x14)), 0xF0)
        Field (PCS2, DWordAcc, Lock, Preserve)
        {
            D2VI,   16, 
            Offset (0x2C), 
            S2VI,   16, 
            S2DI,   16, 
            Offset (0x4C), 
            W2VI,   16, 
            W2DI,   16
        }

        OperationRegion (CAP2, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN2, 0x14)), EEC2), 0x14)
        Field (CAP2, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP2,   32, 
            LCT2,   16
        }

        Method (PGON, 1, Serialized)
        {
            Store (Arg0, PEGI) /* \_SB_.PCI0.PEGI */
            Store (\XBAS, PEBA) /* \_SB_.PCI0.PEBA */
            Store (GDEV (PEGI), PDEV) /* \_SB_.PCI0.PDEV */
            Store (GFUN (PEGI), PFUN) /* \_SB_.PCI0.PFUN */
            If (LEqual (CCHK (PEGI, One), Zero))
            {
                Return (Zero)
            }

            WEPF (PEGI, One)
            GPPR (PEGI, One)
            If (LGreaterEqual (PCSL, 0x04))
            {
                If (LEqual (RC7A, One))
                {
                    C7AD (Zero)
                    RSPG (PEGI)
                    CLPG ()
                }
            }

            If (LEqual (Arg0, Zero))
            {
                Store (Zero, P0AP) /* \_SB_.PCI0.P0AP */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (Zero, P1AP) /* \_SB_.PCI0.P1AP */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (Zero, P2AP) /* \_SB_.PCI0.P2AP */
            }

            If (LNotEqual (PBGE, Zero))
            {
                If (SBDL (PEGI))
                {
                    PUAB (PEGI)
                    Store (GUBC (PEGI), CBDL) /* \_SB_.PCI0.CBDL */
                    Store (GMXB (PEGI), MBDL) /* \_SB_.PCI0.MBDL */
                    If (LGreater (CBDL, MBDL))
                    {
                        Store (MBDL, CBDL) /* \_SB_.PCI0.CBDL */
                    }

                    PDUB (PEGI, CBDL)
                }
            }

            If (LEqual (Arg0, Zero))
            {
                Store (Zero, P0LD) /* \_SB_.PCI0.P0LD */
                Store (One, P0TR) /* \_SB_.PCI0.P0TR */
                Store (Zero, TCNT) /* \_SB_.PCI0.TCNT */
                While (LLess (TCNT, LDLY))
                {
                    If (LEqual (P0VC, Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.TCNT */
                }

                Store (H0VI, W0VI) /* \_SB_.PCI0.W0VI */
                Store (H0DI, W0DI) /* \_SB_.PCI0.W0DI */
                Or (And (ELC0, 0x43), And (LCT0, 0xFFBC), LCT0) /* \_SB_.PCI0.LCT0 */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (Zero, P1LD) /* \_SB_.PCI0.P1LD */
                Store (One, P1TR) /* \_SB_.PCI0.P1TR */
                Store (Zero, TCNT) /* \_SB_.PCI0.TCNT */
                While (LLess (TCNT, LDLY))
                {
                    If (LEqual (P1VC, Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.TCNT */
                }

                Store (H1VI, W1VI) /* \_SB_.PCI0.W1VI */
                Store (H1DI, W1DI) /* \_SB_.PCI0.W1DI */
                Or (And (ELC1, 0x43), And (LCT1, 0xFFBC), LCT1) /* \_SB_.PCI0.LCT1 */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (Zero, P2LD) /* \_SB_.PCI0.P2LD */
                Store (One, P2TR) /* \_SB_.PCI0.P2TR */
                Store (Zero, TCNT) /* \_SB_.PCI0.TCNT */
                While (LLess (TCNT, LDLY))
                {
                    If (LEqual (P2VC, Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.TCNT */
                }

                Store (H2VI, W2VI) /* \_SB_.PCI0.W2VI */
                Store (H2DI, W2DI) /* \_SB_.PCI0.W2DI */
                Or (And (ELC2, 0x43), And (LCT2, 0xFFBC), LCT2) /* \_SB_.PCI0.LCT2 */
            }

            Return (Zero)
        }

        Method (PGOF, 1, Serialized)
        {
            Store (Arg0, PEGI) /* \_SB_.PCI0.PEGI */
            Store (\XBAS, PEBA) /* \_SB_.PCI0.PEBA */
            Store (GDEV (PEGI), PDEV) /* \_SB_.PCI0.PDEV */
            Store (GFUN (PEGI), PFUN) /* \_SB_.PCI0.PFUN */
            If (LEqual (CCHK (PEGI, Zero), Zero))
            {
                Return (Zero)
            }

            WEPF (PEGI, Zero)
            If (LEqual (Arg0, Zero))
            {
                Store (LCT0, ELC0) /* \_SB_.PCI0.ELC0 */
                Store (S0VI, H0VI) /* \_SB_.PCI0.H0VI */
                Store (S0DI, H0DI) /* \_SB_.PCI0.H0DI */
                Store (LCP0, ECP0) /* \_SB_.PCI0.ECP0 */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCT1, ELC1) /* \_SB_.PCI0.ELC1 */
                Store (S1VI, H1VI) /* \_SB_.PCI0.H1VI */
                Store (S1DI, H1DI) /* \_SB_.PCI0.H1DI */
                Store (LCP1, ECP1) /* \_SB_.PCI0.ECP1 */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCT2, ELC2) /* \_SB_.PCI0.ELC2 */
                Store (S2VI, H2VI) /* \_SB_.PCI0.H2VI */
                Store (S2DI, H2DI) /* \_SB_.PCI0.H2DI */
                Store (LCP2, ECP2) /* \_SB_.PCI0.ECP2 */
            }

            If (LGreaterEqual (PCSL, 0x04))
            {
                If (LEqual (RC7A, One))
                {
                    SVPG (PEGI)
                }
            }

            If (LEqual (Arg0, Zero))
            {
                Store (One, P0LD) /* \_SB_.PCI0.P0LD */
                Store (Zero, TCNT) /* \_SB_.PCI0.TCNT */
                While (LLess (TCNT, LDLY))
                {
                    If (LEqual (P0LS, Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.TCNT */
                }

                Store (0x02, P0AP) /* \_SB_.PCI0.P0AP */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, P1LD) /* \_SB_.PCI0.P1LD */
                Store (Zero, TCNT) /* \_SB_.PCI0.TCNT */
                While (LLess (TCNT, LDLY))
                {
                    If (LEqual (P1LS, Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.TCNT */
                }

                Store (0x02, P1AP) /* \_SB_.PCI0.P1AP */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (One, P2LD) /* \_SB_.PCI0.P2LD */
                Store (Zero, TCNT) /* \_SB_.PCI0.TCNT */
                While (LLess (TCNT, LDLY))
                {
                    If (LEqual (P2LS, Zero))
                    {
                        Break
                    }

                    Sleep (0x10)
                    Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.TCNT */
                }

                Store (0x02, P2AP) /* \_SB_.PCI0.P2AP */
            }

            If (LNotEqual (PBGE, Zero))
            {
                If (SBDL (PEGI))
                {
                    Store (GMXB (PEGI), MBDL) /* \_SB_.PCI0.MBDL */
                    PDUB (PEGI, MBDL)
                }
            }

            If (LGreaterEqual (PCSL, 0x04))
            {
                If (LEqual (RC7A, One))
                {
                    C7AD (One)
                }
            }

            GPPR (PEGI, Zero)
            Return (Zero)
        }

        Method (MMRB, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Return (TEMP) /* \_SB_.PCI0.MMRB.TEMP */
        }

        Method (MMWB, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Store (Arg5, TEMP) /* \_SB_.PCI0.MMWB.TEMP */
        }

        Method (MMRW, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x02)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   16
            }

            Return (TEMP) /* \_SB_.PCI0.MMRW.TEMP */
        }

        Method (MMWW, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x02)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   16
            }

            Store (Arg5, TEMP) /* \_SB_.PCI0.MMWW.TEMP */
        }

        Method (MMRD, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP) /* \_SB_.PCI0.MMRD.TEMP */
        }

        Method (MMWD, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Store (Arg5, TEMP) /* \_SB_.PCI0.MMWD.TEMP */
        }

        Method (GULC, 1, NotSerialized)
        {
            Store (MMRD (PEBA, PBUS, PDEV, PFUN, 0xAC), Local7)
            ShiftRight (Local7, 0x04, Local7)
            And (Local7, 0x3F, Local7)
            Store (Arg0, Local6)
            ShiftRight (Local6, 0x04, Local6)
            And (Local6, 0x3F, Local6)
            If (LGreater (Local7, Local6))
            {
                Subtract (Local7, Local6, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (GMXB, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR) /* \_SB_.PCI0.HSTR */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR) /* \_SB_.PCI0.HSTR */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR) /* \_SB_.PCI0.HSTR */
            }

            ShiftRight (HSTR, 0x10, HSTR) /* \_SB_.PCI0.HSTR */
            And (HSTR, 0x03, HSTR) /* \_SB_.PCI0.HSTR */
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (0x08, Local0)
                }
                Else
                {
                    Store (0x04, Local0)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    Store (0x04, Local0)
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
            }

            Return (Local0)
        }

        Method (PUAB, 1, NotSerialized)
        {
            Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
            Store (Zero, CBDL) /* \_SB_.PCI0.CBDL */
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV0, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV1, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV2, LREV) /* \_SB_.PCI0.LREV */
            }

            ShiftRight (HSTR, 0x10, HSTR) /* \_SB_.PCI0.HSTR */
            And (HSTR, 0x03, HSTR) /* \_SB_.PCI0.HSTR */
            ShiftRight (LREV, 0x14, LREV) /* \_SB_.PCI0.LREV */
            And (LREV, One, LREV) /* \_SB_.PCI0.LREV */
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    Store (0x08, CBDL) /* \_SB_.PCI0.CBDL */
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                }
                Else
                {
                    Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                    Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x04, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                    Else
                    {
                        Store (0x02, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x06, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                        Store (0x02, CBDL) /* \_SB_.PCI0.CBDL */
                    }
                }
            }

            Store (One, INDX) /* \_SB_.PCI0.INDX */
            If (LNotEqual (CBDL, Zero))
            {
                While (LLessEqual (INDX, CBDL))
                {
                    If (LEqual (P0VI, IVID)){}
                    ElseIf (LNotEqual (P0VI, IVID))
                    {
                        If (LEqual (FBDL, Zero))
                        {
                            Store (Zero, BSP1) /* \_SB_.PCI0.BSP1 */
                        }

                        If (LEqual (FBDL, One))
                        {
                            Store (Zero, BSP2) /* \_SB_.PCI0.BSP2 */
                        }

                        If (LEqual (FBDL, 0x02))
                        {
                            Store (Zero, BSP3) /* \_SB_.PCI0.BSP3 */
                        }

                        If (LEqual (FBDL, 0x03))
                        {
                            Store (Zero, BSP4) /* \_SB_.PCI0.BSP4 */
                        }

                        If (LEqual (FBDL, 0x04))
                        {
                            Store (Zero, BSP5) /* \_SB_.PCI0.BSP5 */
                        }

                        If (LEqual (FBDL, 0x05))
                        {
                            Store (Zero, BSP6) /* \_SB_.PCI0.BSP6 */
                        }

                        If (LEqual (FBDL, 0x06))
                        {
                            Store (Zero, BSP7) /* \_SB_.PCI0.BSP7 */
                        }

                        If (LEqual (FBDL, 0x07))
                        {
                            Store (Zero, BSP8) /* \_SB_.PCI0.BSP8 */
                        }
                    }

                    Increment (FBDL)
                    Increment (INDX)
                }
            }
        }

        Method (PDUB, 2, NotSerialized)
        {
            Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
            Store (Arg1, CBDL) /* \_SB_.PCI0.CBDL */
            If (LEqual (CBDL, Zero))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV0, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV1, LREV) /* \_SB_.PCI0.LREV */
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR) /* \_SB_.PCI0.HSTR */
                Store (LRV2, LREV) /* \_SB_.PCI0.LREV */
            }

            ShiftRight (HSTR, 0x10, HSTR) /* \_SB_.PCI0.HSTR */
            And (HSTR, 0x03, HSTR) /* \_SB_.PCI0.HSTR */
            ShiftRight (LREV, 0x14, LREV) /* \_SB_.PCI0.LREV */
            And (LREV, One, LREV) /* \_SB_.PCI0.LREV */
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Subtract (0x04, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                }
                Else
                {
                    Store (0x04, FBDL) /* \_SB_.PCI0.FBDL */
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x06, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (0x02, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL) /* \_SB_.PCI0.FBDL */
                    }
                    Else
                    {
                        Store (Zero, FBDL) /* \_SB_.PCI0.FBDL */
                    }
                }
            }

            Store (One, INDX) /* \_SB_.PCI0.INDX */
            While (LLessEqual (INDX, CBDL))
            {
                If (LEqual (P0VI, IVID)){}
                ElseIf (LNotEqual (P0VI, IVID))
                {
                    If (LEqual (FBDL, Zero))
                    {
                        Store (One, BSP1) /* \_SB_.PCI0.BSP1 */
                    }

                    If (LEqual (FBDL, One))
                    {
                        Store (One, BSP2) /* \_SB_.PCI0.BSP2 */
                    }

                    If (LEqual (FBDL, 0x02))
                    {
                        Store (One, BSP3) /* \_SB_.PCI0.BSP3 */
                    }

                    If (LEqual (FBDL, 0x03))
                    {
                        Store (One, BSP4) /* \_SB_.PCI0.BSP4 */
                    }

                    If (LEqual (FBDL, 0x04))
                    {
                        Store (One, BSP5) /* \_SB_.PCI0.BSP5 */
                    }

                    If (LEqual (FBDL, 0x05))
                    {
                        Store (One, BSP6) /* \_SB_.PCI0.BSP6 */
                    }

                    If (LEqual (FBDL, 0x06))
                    {
                        Store (One, BSP7) /* \_SB_.PCI0.BSP7 */
                    }

                    If (LEqual (FBDL, 0x07))
                    {
                        Store (One, BSP8) /* \_SB_.PCI0.BSP8 */
                    }
                }

                Increment (FBDL)
                Increment (INDX)
            }
        }

        Method (SBDL, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, Zero))
                {
                    Return (Zero)
                }
            }
            Else
            {
                Return (Zero)
            }

            Return (One)
        }

        Method (GUBC, 1, NotSerialized)
        {
            Store (Zero, Local7)
            If (LEqual (Arg0, Zero))
            {
                Store (LCP0, Local6)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCP1, Local6)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCP2, Local6)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P0UB, Zero))
                {
                    Store (P0UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P1UB, Zero))
                {
                    Store (P1UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P2UB, Zero))
                {
                    Store (P2UB, Local7)
                }
            }

            Return (Local7)
        }

        Method (MCHA, 0, NotSerialized)
        {
            Store (PEBA, Local7)
            Or (Local7, ShiftLeft (HBRB, 0x14), Local7)
            Or (Local7, ShiftLeft (HBRD, 0x0F), Local7)
            Or (Local7, ShiftLeft (HBRF, 0x0C), Local7)
            Or (Local7, 0x48, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x08)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                    ,   15, 
                TEMP,   24
            }

            Return (TEMP) /* \_SB_.PCI0.MCHA.TEMP */
        }

        Method (C7AD, 1, NotSerialized)
        {
            Store (MCHA (), Local7)
            ShiftLeft (Local7, 0x0F, Local7)
            Add (Local7, 0x5DA8, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                    ,   2, 
                TEMP,   1
            }

            Store (Arg0, TEMP) /* \_SB_.PCI0.C7AD.TEMP */
        }

        Method (GDEV, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (One, Local0)
            }

            Return (Local0)
        }

        Method (GFUN, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (Zero, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (0x02, Local0)
            }

            Return (Local0)
        }

        Method (CCHK, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (P0VI, Local7)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (P1VI, Local7)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (P2VI, Local7)
            }

            If (LEqual (Local7, IVID))
            {
                Return (Zero)
            }

            If (LNotEqual (Arg0, Zero))
            {
                Store (P0VI, Local7)
                If (LEqual (Local7, IVID))
                {
                    Return (Zero)
                }
            }

            If (LEqual (Arg1, Zero))
            {
                If (LEqual (REPF (Arg0), Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg1, One))
            {
                If (LEqual (REPF (Arg0), One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }

        Method (SVPG, 1, NotSerialized)
        {
            SCPG ()
            If (LEqual (Arg0, Zero))
            {
                SPG0 ()
            }
            ElseIf (LEqual (Arg0, One))
            {
                SPG1 ()
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                SPG2 ()
            }

            Or (SPGA, ShiftLeft (One, Arg0), SPGA) /* \_SB_.PCI0.SPGA */
        }

        Method (RSPG, 1, NotSerialized)
        {
            And (SPGA, ShiftLeft (One, Arg0), Local0)
            If (LEqual (Local0, Zero))
            {
                Return (Zero)
            }

            RCPG ()
            If (LEqual (Arg0, Zero))
            {
                RPG0 ()
            }
            ElseIf (LEqual (Arg0, One))
            {
                RPG1 ()
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                RPG2 ()
            }
        }

        Method (CLPG, 0, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DCLR, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DCLR, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DCLR, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    MMWB (PEBA, PBUS, PDEV, PFUN, POFF, DerefOf (Index (DCLR, INDX)))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (SCPG, 0, NotSerialized)
        {
            Store (MMRW (PEBA, PBUS, GDEV (Zero), GFUN (Zero), VIOF), Local7)
            If (LEqual (Local7, IVID))
            {
                Return (Zero)
            }

            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DCMN, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DCMN, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DCMN, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    Store (MMRB (PEBA, PBUS, GDEV (Zero), GFUN (Zero), POFF), Index (DCMN, INDX
                        ))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (RCPG, 0, NotSerialized)
        {
            Store (MMRW (PEBA, PBUS, GDEV (Zero), GFUN (Zero), VIOF), Local7)
            If (LEqual (Local7, IVID))
            {
                Return (Zero)
            }

            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DCMN, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DCMN, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DCMN, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    MMWB (PEBA, PBUS, GDEV (Zero), GFUN (Zero), POFF, DerefOf (Index (DCMN, INDX
                        )))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (SPG0, 0, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DPG0, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DPG0, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DPG0, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    Store (MMRB (PEBA, PBUS, PDEV, PFUN, POFF), Index (DPG0, INDX))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (RPG0, 0, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DPG0, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DPG0, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DPG0, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    MMWB (PEBA, PBUS, PDEV, PFUN, POFF, DerefOf (Index (DPG0, INDX)))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (SPG1, 0, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DPG1, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DPG1, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DPG1, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    Store (MMRB (PEBA, PBUS, PDEV, PFUN, POFF), Index (DPG1, INDX))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (RPG1, 0, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DPG1, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DPG1, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DPG1, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    MMWB (PEBA, PBUS, PDEV, PFUN, POFF, DerefOf (Index (DPG1, INDX)))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (SPG2, 0, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DPG2, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DPG2, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DPG2, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    Store (MMRB (PEBA, PBUS, PDEV, PFUN, POFF), Index (DPG2, INDX))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (RPG2, 0, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            While (One)
            {
                Store (DerefOf (Index (DPG2, INDX)), WLSB) /* \_SB_.PCI0.WLSB */
                Increment (INDX)
                Store (DerefOf (Index (DPG2, INDX)), WMSB) /* \_SB_.PCI0.WMSB */
                Store (Or (ShiftLeft (WMSB, 0x08), WLSB), POFF) /* \_SB_.PCI0.POFF */
                Increment (INDX)
                Store (DerefOf (Index (DPG2, INDX)), PLEN) /* \_SB_.PCI0.PLEN */
                Increment (INDX)
                If (LEqual (POFF, 0xFFFF))
                {
                    Break
                }

                While (LGreater (PLEN, Zero))
                {
                    MMWB (PEBA, PBUS, PDEV, PFUN, POFF, DerefOf (Index (DPG2, INDX)))
                    Increment (INDX)
                    Increment (POFF)
                    Decrement (PLEN)
                }
            }
        }

        Method (NTFY, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Notify (\_SB.PCI0.PEG0, Arg1)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Notify (\_SB.PCI0.PEG1, Arg1)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Notify (\_SB.PCI0.PEG2, Arg1)
            }
        }

        Method (GPPR, 2, NotSerialized)
        {
            If (LEqual (Arg1, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    If (CondRefOf (\_SB.PCI0.PEG0.PEGP.SGPO))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGPO (HLRS, One)
                        \_SB.PCI0.PEG0.PEGP.SGPO (PWEN, Zero)
                    }
                }
            }
            ElseIf (LEqual (Arg1, One))
            {
                If (LEqual (Arg0, Zero))
                {
                    If (CondRefOf (\_SB.PCI0.PEG0.PEGP.SGPO))
                    {
                        \_SB.PCI0.PEG0.PEGP.SGPO (HLRS, One)
                        \_SB.PCI0.PEG0.PEGP.SGPO (PWEN, One)
                        Sleep (DLPW)
                        \_SB.PCI0.PEG0.PEGP.SGPO (HLRS, Zero)
                        Sleep (DLHR)
                    }
                }
            }
        }

        Method (WEPF, 2, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            Store (One, PLEN) /* \_SB_.PCI0.PLEN */
            Add (INDX, Multiply (Arg0, PLEN), INDX) /* \_SB_.PCI0.INDX */
            While (LGreater (PLEN, Zero))
            {
                Store (Arg1, Index (ONOF, INDX))
                Increment (INDX)
                Decrement (PLEN)
            }
        }

        Method (REPF, 1, NotSerialized)
        {
            Store (Zero, INDX) /* \_SB_.PCI0.INDX */
            Store (One, PLEN) /* \_SB_.PCI0.PLEN */
            Add (INDX, Multiply (Arg0, PLEN), INDX) /* \_SB_.PCI0.INDX */
            While (LGreater (PLEN, Zero))
            {
                Store (DerefOf (Index (ONOF, INDX)), Local0)
                Increment (INDX)
                Decrement (PLEN)
            }

            Return (Local0)
        }

        Method (EPON, 0, NotSerialized)
        {
            Store (Zero, TIDX) /* \_SB_.PCI0.TIDX */
            While (LLess (TIDX, MXPG))
            {
                Store (Zero, INDX) /* \_SB_.PCI0.INDX */
                Store (One, PLEN) /* \_SB_.PCI0.PLEN */
                Add (INDX, Multiply (TIDX, PLEN), INDX) /* \_SB_.PCI0.INDX */
                While (LGreater (PLEN, Zero))
                {
                    Store (One, Index (ONOF, INDX))
                    Increment (INDX)
                    Decrement (PLEN)
                }

                Increment (TIDX)
            }
        }
    }
}

