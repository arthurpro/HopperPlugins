/*
 Copyright (c) 2014, Alessandro Gatti - frob.it
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions are met:

 1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

 2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
 CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
 OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "FRBBaseContext.h"

#import "FRBHopperCommon.h"

@implementation ItFrobHopperHopperCommonBaseContext

- (id<CPUDefinition>)cpuDefinition {
    @throw [NSException exceptionWithName:FRBHopperExceptionName
                                   reason:[NSString stringWithFormat:@"Forgot to override %s", __PRETTY_FUNCTION__]
                                 userInfo:nil];
}

- (void)initDisasmStructure:(DisasmStruct *)disasm
            withSyntaxIndex:(NSUInteger)syntaxIndex {
    InitialiseDisasmStruct(disasm);
}

- (Address)adjustCodeAddress:(Address)address {
    return address;
}

- (uint8_t)cpuModeFromAddress:(Address)address {
    return 0;
}

- (BOOL)addressForcesACPUMode:(Address)address {
    return NO;
}

- (Address)nextAddressToTryIfInstructionFailedToDecodeAt:(Address)address
                                              forCPUMode:(uint8_t)mode {
    return address + 1;
}

- (BOOL)hasProcedurePrologAt:(Address)address {
    return NO;
}

- (void)analysisBeginsAt:(Address)entryPoint {
}

- (void)analysisEnded {
}

- (void)procedureAnalysisBeginsForProcedure:(id<HPProcedure>)procedure
                               atEntryPoint:(Address)entryPoint {
}

- (void)procedureAnalysisOfPrologForProcedure:(id<HPProcedure>)procedure
                                 atEntryPoint:(Address)entryPoint {
}

- (void)procedureAnalysisEndedForProcedure:(id<HPProcedure>)procedure
                              atEntryPoint:(Address)entryPoint {
}

- (void)procedureAnalysisContinuesOnBasicBlock:(id<HPBasicBlock>)basicBlock {
}

- (void)resetDisassembler {
}

- (uint8_t)estimateCPUModeAtVirtualAddress:(Address)address {
    return 0;
}

- (int)disassembleSingleInstruction:(DisasmStruct *)disasm
                 usingProcessorMode:(NSUInteger)mode {
    @throw [NSException exceptionWithName:FRBHopperExceptionName
                                   reason:[NSString stringWithFormat:@"Forgot to override %s", __PRETTY_FUNCTION__]
                                 userInfo:nil];
}

- (BOOL)instructionCanBeUsedToExtractDirectMemoryReferences:(DisasmStruct *)disasmStruct {
    return YES;
}

- (BOOL)instructionHaltsExecutionFlow:(DisasmStruct *)disasm {
    @throw [NSException exceptionWithName:FRBHopperExceptionName
                                   reason:[NSString stringWithFormat:@"Forgot to override %s", __PRETTY_FUNCTION__]
                                 userInfo:nil];
}

- (void)performBranchesAnalysis:(DisasmStruct *)disasm
           computingNextAddress:(Address *)next
                    andBranches:(NSMutableArray *)branches
                   forProcedure:(id<HPProcedure>)procedure
                     basicBlock:(id<HPBasicBlock>)basicBlock
                      ofSegment:(id<HPSegment>)segment
                calledAddresses:(NSMutableArray *)calledAddresses
                      callsites:(NSMutableArray *)callSitesAddresses {
}

- (void)performInstructionSpecificAnalysis:(DisasmStruct *)disasm
                              forProcedure:(id<HPProcedure>)procedure
                                 inSegment:(id<HPSegment>)segment {
}

- (void)performProcedureAnalysis:(id<HPProcedure>)procedure
                      basicBlock:(id<HPBasicBlock>)basicBlock
                          disasm:(DisasmStruct *)disasm {
}

- (void)updateProcedureAnalysis:(DisasmStruct *)disasm {
}

- (NSString *)defaultFormattedVariableNameForDisplacement:(int64_t)displacement
                                              inProcedure:(id<HPProcedure>)procedure {
    return [NSString stringWithFormat:@"var%lld", displacement];
}

- (void)buildInstructionString:(DisasmStruct *)disasm
                    forSegment:(id<HPSegment>)segment
                populatingInfo:(id<HPFormattedInstructionInfo>)formattedInstructionInfo {
    @throw [NSException exceptionWithName:FRBHopperExceptionName
                                   reason:[NSString stringWithFormat:@"Forgot to override %s", __PRETTY_FUNCTION__]
                                 userInfo:nil];
}

- (BOOL)canDecompileProcedure:(id<HPProcedure>)procedure {
    return NO;
}

- (Address)skipHeader:(id<HPBasicBlock>)basicBlock
          ofProcedure:(id<HPProcedure>)procedure {
    return basicBlock.from;
}

- (Address)skipFooter:(id<HPBasicBlock>)basicBlock
          ofProcedure:(id<HPProcedure>)procedure {
    return basicBlock.to;
}

- (ASTNode *)rawDecodeArgumentIndex:(int)argIndex
                           ofDisasm:(DisasmStruct *)disasm
                  ignoringWriteMode:(BOOL)ignoreWrite
                    usingDecompiler:(Decompiler *)decompiler {
    return nil;
}

- (ASTNode *)decompileInstructionAtAddress:(Address)a
                                    disasm:(DisasmStruct)d
                                    length:(int)instrLength
                                      arg1:(ASTNode *)arg1
                                      arg2:(ASTNode *)arg2
                                      arg3:(ASTNode *)arg3
                                      dest:(ASTNode *)dest
                                 addNode_p:(BOOL *)addNode_p
                           usingDecompiler:(Decompiler *)decompiler {
    return nil;
}

- (NSData *)assembleRawInstruction:(NSString *)instr
                         atAddress:(Address)addr
                           forFile:(id<HPDisassembledFile>)file
                       withCPUMode:(uint8_t)cpuMode
                usingSyntaxVariant:(NSUInteger)syntax
                             error:(NSError **)error {
    return nil;
}

- (BOOL)displacementIsAnArgument:(int64_t)displacement
                    forProcedure:(id<HPProcedure>)procedure {
    return NO;
}

- (NSUInteger)stackArgumentSlotForDisplacement:(int64_t)displacement
                                   inProcedure:(id<HPProcedure>)procedure {
    return -1;
}

- (int64_t)displacementForStackSlotIndex:(NSUInteger)slot
                             inProcedure:(id<HPProcedure>)procedure {
    return 0;
}

- (BOOL)instructionMayBeASwitchStatement:(DisasmStruct *)disasmStruct {
    return NO;
}

- (Address)getThunkDestinationForInstructionAt:(Address)address {
    return BAD_ADDRESS;
}

@end