type CPACRType   = typeof(CPACR_EL1);
type CNTKCTLType = typeof(CNTKCTL_EL1);
type ESRType     = typeof(ESR_ELx);
type FPCRType    = typeof(FPCR);
type MAIRType    = typeof(MAIR_EL1);
type SCRType     = typeof(SCR);
type SCTLRType   = typeof(SCTLR_EL1);

// The following appear to be missing from the XML
// The following is not necessarily correct - but it lets us keep going
typeof(TTBCR) TTBCR_S;
__register 32 { 0+:24 PC, 29+:2 EL, 31 NS } EDPCSRhi;
__register 32 {12 ExT, 14+:2 AET} VDFSR;
__register 64 { 12 ExT, 14+:2 AET, 24 IDS, 31 A ,0+:24 ISS } VSESR_EL2;

bits(64) AArch64.SysRegRead(integer op0, integer op1, integer crn, integer crm, integer op2);
AArch64.SysRegWrite(integer op0, integer op1, integer crn, integer crm, integer op2, bits(64) val);
