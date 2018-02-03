	.comm Compiler_s, 40
	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Compiler.mod",100,0,0,.LBB0
.LBB0:
	.stabs "BOOLEAN:t1=eTRUE:1,FALSE:0,;",0x80,0,0,0
	.stabs "CHAR:t2=r2;0;255;",0x80,0,0,0
	.stabs "SHORTCARD:t3=r3;0;65535;",0x80,0,0,0
	.stabs "LONGCARD:t4=r4;0;-1;",0x80,0,0,0
	.stabs "CARDINAL:t5=r5;0;-1;",0x80,0,0,0
	.stabs "SHORTINT:t6=r6;-32768;32767;",0x80,0,0,0
	.stabs "LONGINT:t7=r7;-2147483648;2147483647;",0x80,0,0,0
	.stabs "INTEGER:t8=r8;-2147483648;2147483647;",0x80,0,0,0
	.stabs "REAL:t9=r8;4;0;",0x80,0,0,0
	.stabs "LONGREAL:t10=r8;8;0;",0x80,0,0,0
	.stabs "BITSET:t11=r4;0;-1",0x80,0,0,0
	.stabs "WORD:t13=r13;0;255;",0x80,0,0,0
	.stabs "BYTE:t14=r2;0;255",0x80,0,0,0
	.stabs "VOID:t16=16",0x80,0,0,0
	.stabs "ADDRESS:t15=*16",0x80,0,0,0
	.stabs "PROC:t12=*f16;",0x80,0,0,0
	.globl	PFiles_Recover
	.globl	PFiles_DropLib
	.globl	PFiles_SelectLib
	.globl	PFiles_DropFile
	.globl	PFiles_SelectFile
	.globl	PFiles_CurrFile
	.globl	PFiles_FileEnded
	.globl	PFiles_LineEnded
	.globl	PFiles_PutLn
	.globl	PFiles_PutNum
	.globl	PFiles_PutChar
	.globl	PFiles_GetChar
	.globl	PFiles_ReleaseFiles
	.globl	WriteOut_Trace
	.globl	WriteOut_WriteOut
	.globl	WriteOut_WriteAtom
	.globl	InOut_EOF
	.globl	InOut_Done
	.globl	InOut_WriteBf
	.globl	InOut_WriteLn
	.globl	InOut_WriteLongReal
	.globl	InOut_WriteReal
	.globl	InOut_WriteInt
	.globl	InOut_WriteHex
	.globl	InOut_WriteOct
	.globl	InOut_WriteCard
	.globl	InOut_WriteString
	.globl	InOut_Write
	.globl	InOut_ReadLongReal
	.globl	InOut_ReadReal
	.globl	InOut_ReadInt
	.globl	InOut_ReadCard
	.globl	InOut_ReadString
	.globl	InOut_Read
	.globl	AtomTable_LookUp
	.globl	AtomTable_AtomChar
	.globl	AtomTable_StartAtom
	.globl	Compiler
	.globl	Compiler_ClCompiler
	.globl	Compiler_ClCompiler_CompileClause
	.globl	Compiler_ClCompiler_CompileBody
	.globl	Compiler_ClCompiler_CompileSubgoal
	.globl	Compiler_ClCompiler_CompileSubgoalArgument
	.globl	Compiler_ClCompiler_CompileHead
	.globl	Compiler_ClCompiler_CompileHeadArgument
	.globl	Compiler_ClCompiler_CompileSubgoalStructure
	.globl	Compiler_ClCompiler_CompileHeadStructure
	.globl	Compiler_ClCompiler_CompileSubgoalVariable
	.globl	Compiler_ClCompiler_CompileVarInStructure
	.globl	Compiler_ClCompiler_CompileHeadVariable
	.globl	Compiler_ClCompiler_OccuredInHead
	.globl	Compiler_ClCompiler_AllocatedYNumber
	.globl	Compiler_ClCompiler_AllocateInArgumentReg
	.globl	Compiler_ClCompiler_AllocateInEnvironment
	.globl	Compiler_NumberOfVars
	.globl	Compiler_TestPrintVarArray
	.globl	Compiler_LookForGlobalVariables
	.globl	Compiler_LookForGlobalVariables_GlobalsInBody
	.globl	Compiler_LookForGlobalVariables_GlobalsInHead
	.globl	Compiler_LookForGlobalVariables_LookForVarInBody
	.globl	Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm
	.globl	Compiler_EnvironmentNeeded
	.globl	Compiler_EnvironmentNeeded_NumberOfSubgoals
	.globl	Compiler_EmitYAReg
	.globl	Compiler_EmitXAReg
	.globl	Compiler_Emit2Regs
	.globl	Compiler_EmitYReg
	.globl	Compiler_EmitXReg
	.globl	Compiler_EmitReg
	.globl	Compiler_EmitFunctorReg
	.globl	Compiler_EmitNumReg
	.globl	Compiler_EmitNumber
	.globl	Compiler_EmitProcedureHead
	.globl	Compiler_EmitFunctorName
	.globl	Compiler_EmitWAMInstructionLabeled
	.globl	Compiler_EmitWAMInstruction
	.globl	Compiler_PrintWAMSource
	.globl	Compiler_EmitNextClauseLabel
	.globl	Compiler_PrintNextClauseLabel
	.globl	Compiler_Tab
	.globl	Compiler_InitVarArray
	.stabs "Compiler_ClCompiler_CompileClause:F16",36,0,0,Compiler_ClCompiler_CompileClause
	.align 4
Compiler_ClCompiler_CompileClause:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,531,.LN1-Compiler_ClCompiler_CompileClause		# line 531, column 3
.LBB1:
.LN2:
	.stabn  68,0,533,.LN2-Compiler_ClCompiler_CompileClause		# line 533, column 12
	pushl	8(%ebp)
	call	Compiler_EnvironmentNeeded
	addl	$4, %esp
	movb	%al,-5(%ebp) 
.LN3:
	.stabn  68,0,534,.LN3-Compiler_ClCompiler_CompileClause		# line 534, column 5
	pushl	$0
	leal	Compiler_s + 8,%eax
	pushl	%eax
	call	Compiler_InitVarArray
	addl	$8, %esp
.LN4:
	.stabn  68,0,535,.LN4-Compiler_ClCompiler_CompileClause		# line 535, column 5
	pushl	$0
	leal	Compiler_s + 24,%eax
	pushl	%eax
	call	Compiler_InitVarArray
	addl	$8, %esp
.LN5:
	.stabn  68,0,536,.LN5-Compiler_ClCompiler_CompileClause		# line 536, column 5
	cmpb	$0,-5(%ebp)
	je	.Lab2
.Lab3:
.LN6:
	.stabn  68,0,537,.LN6-Compiler_ClCompiler_CompileClause		# line 537, column 24
	movl	DISPLAY_,%eax
	movl	$0,-72(%eax) 
.LN7:
	.stabn  68,0,538,.LN7-Compiler_ClCompiler_CompileClause		# line 538, column 7
	leal	Compiler_s + 8,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	Compiler_LookForGlobalVariables
	addl	$8, %esp
.LN8:
	.stabn  68,0,539,.LN8-Compiler_ClCompiler_CompileClause		# line 539, column 7
	leal	Compiler_s + 8,%eax
	pushl	%eax
	call	Compiler_TestPrintVarArray
	addl	$4, %esp
.LN9:
	.stabn  68,0,540,.LN9-Compiler_ClCompiler_CompileClause		# line 540, column 7
	pushl	$6
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN10:
	.stabn  68,0,541,.LN10-Compiler_ClCompiler_CompileClause		# line 541, column 7
	leal	Compiler_s + 8,%esi
	subl	$16,%esp
	movl	%esp,%edi
	movl	$4,%ecx
	cld
	repz
	movsl
	call	Compiler_NumberOfVars
	addl	$16, %esp
	pushl	%eax
	call	Compiler_EmitNumber
	addl	$4, %esp
.Lab2:
.LN11:
	.stabn  68,0,544,.LN11-Compiler_ClCompiler_CompileClause		# line 544, column 5
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	Compiler_ClCompiler_CompileHead
	addl	$4, %esp
.LN12:
	.stabn  68,0,546,.LN12-Compiler_ClCompiler_CompileClause		# line 546, column 5
	movl	8(%ebp),%eax
	cmpl	$0,4(%eax)
	je	.Lab6
.Lab5:
.LN13:
	.stabn  68,0,547,.LN13-Compiler_ClCompiler_CompileClause		# line 547, column 7
	movzbl	-5(%ebp),%eax
	pushl	%eax
	movl	8(%ebp),%eax
	pushl	4(%eax)
	call	Compiler_ClCompiler_CompileBody
	addl	$8, %esp
	jmp	.Lab4
.Lab6:
.LN14:
	.stabn  68,0,549,.LN14-Compiler_ClCompiler_CompileClause		# line 549, column 7
	pushl	$5
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.Lab4:
.LN15:
	.stabn  68,0,550,.LN15-Compiler_ClCompiler_CompileClause		# line 550, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
	.stabs "NeedEnv:1",128,0,1,-5
	.stabs "evalarity:t24=4",128,0,0,0
	.stabs "evalpred:t25=eccompileR:41,reconsultR:40,consultR:39,listingR:38,showvarR:37,showtermR:36,inferencesR:35,timeR:34,ucodeR:33,closeR:32,tellingR:31,tellR:30,seeingR:29,seeR:28,argR:27,functorR:26,nonspR:25,zapR:24,advclR:23,getclR:22,clenvR:21,addclR:20,ltR:19,isR:18,setflgR:17,flagR:16,varR:15,integerR:14,atomR:13,haltR:12,abortR:11,opR:10,nameR:9,eofR:8,eolnR:7,nlR:6,putR:5,get0R:4,writeR:3,readR:2,cutR:1,callR:0,;",128,0,0,0
	.stabs "predtype:t26=eevalP:1,normP:0,;",128,0,0,0
	.stabs "prec:t27=4",128,0,0,0
	.stabs "optype:t28=enonO:7,yfxO:6,xfyO:5,xfxO:4,yfO:3,xfO:2,fyO:1,fxO:0,;",128,0,0,0
	.stabs "strindex:t30=4",128,0,0,0
	.stabs "astring:t29=s8length:4,32,32;index:30,0,32;;",128,0,0,0
	.stabs "atomentry:t23=s32arity:24,224,32;routine:25,208,8;proc:17,224,32;pclass:26,200,8;sys:1,192,8;oprec:27,160,32;oclass:28,128,8;chain:22,96,32;atomno:7,64,32;ident:29,0,64;;",128,0,0,0
	.stabs "atom:t22=*23",128,0,0,0
	.stabs "nodetag:t31=eskelT:4,anonT:3,varT:2,intT:1,funcT:0,;",128,0,0,0
	.stabs "nodeinfo:t21=s16offset:7,32,32;dummych:2,8,8;val:19,32,32;ival:7,32,32;son:19,96,32;arity:7,64,32;name:22,32,32;tag:31,0,8;;",128,0,0,0
	.stabs "fieldtype:t32=eheapF:2,localF:1,globalF:0,;",128,0,0,0
	.stabs "node:t20=s32info:21,128,128;scope:7,96,32;field:32,64,8;chain:19,32,32;brother:19,0,32;;",128,0,0,0
	.stabs "term:t19=*20",128,0,0,0
	.stabs "clause:t18=s36heapchain:19,256,32;backchain:17,224,32;chain:17,192,32;keyval:7,160,32;refcount:7,128,32;denied:1,96,8;nvars:7,64,32;body:19,32,32;head:19,0,32;;",128,0,0,0
	.stabs "clptr:t17=*18",128,0,0,0
	.stabs "cl:p17",160,0,4,8
	.stabn 192,0,0,.LBB1-Compiler_ClCompiler_CompileClause
	.stabn 224,0,0,.LBE1-Compiler_ClCompiler_CompileClause
	.stabs "Compiler_ClCompiler_CompileBody:F16",36,0,0,Compiler_ClCompiler_CompileBody
	.align 4
Compiler_ClCompiler_CompileBody:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab7, %esp
.LN16:
	.stabn  68,0,513,.LN16-Compiler_ClCompiler_CompileBody		# line 513, column 3
.LBB2:
	jmp	.Lab8
.Lab9:
.LN17:
	.stabn  68,0,515,.LN17-Compiler_ClCompiler_CompileBody		# line 515, column 7
	pushl	8(%ebp)
	call	Compiler_ClCompiler_CompileSubgoal
	addl	$4, %esp
.LN18:
	.stabn  68,0,516,.LN18-Compiler_ClCompiler_CompileBody		# line 516, column 7
	movl	8(%ebp),%eax
	cmpl	$0,(%eax)
	je	.Lab13
.Lab12:
.LN19:
	.stabn  68,0,517,.LN19-Compiler_ClCompiler_CompileBody		# line 517, column 9
	pushl	$3
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
	jmp	.Lab11
.Lab13:
.LN20:
	.stabn  68,0,519,.LN20-Compiler_ClCompiler_CompileBody		# line 519, column 9
	cmpb	$0,12(%ebp)
	je	.Lab14
.Lab15:
.LN21:
	.stabn  68,0,520,.LN21-Compiler_ClCompiler_CompileBody		# line 520, column 11
	pushl	$7
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.Lab14:
.LN22:
	.stabn  68,0,522,.LN22-Compiler_ClCompiler_CompileBody		# line 522, column 9
	pushl	$4
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.Lab11:
.LN23:
	.stabn  68,0,524,.LN23-Compiler_ClCompiler_CompileBody		# line 524, column 7
	pushl	8(%ebp)
	call	Compiler_EmitFunctorName
	addl	$4, %esp
.LN24:
	.stabn  68,0,525,.LN24-Compiler_ClCompiler_CompileBody		# line 525, column 8
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,8(%ebp) 
.Lab8:
.LN25:
	.stabn  68,0,514,.LN25-Compiler_ClCompiler_CompileBody		# line 514, column 12
	cmpl	$0,8(%ebp)
	jne	.Lab9
.Lab10:
.LN26:
	.stabn  68,0,515,.LN26-Compiler_ClCompiler_CompileBody		# line 515, column 0
.LBE2:
	leave
	ret
	.Lab7 = 4
	.stabs "NeedsEnv:p1",160,0,1,12
	.stabs "b:p19",160,0,4,8
	.stabn 192,0,0,.LBB2-Compiler_ClCompiler_CompileBody
	.stabn 224,0,0,.LBE2-Compiler_ClCompiler_CompileBody
	.stabs "Compiler_ClCompiler_CompileSubgoal:F16",36,0,0,Compiler_ClCompiler_CompileSubgoal
	.align 4
Compiler_ClCompiler_CompileSubgoal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab16, %esp
.LN27:
	.stabn  68,0,500,.LN27-Compiler_ClCompiler_CompileSubgoal		# line 500, column 3
.LBB3:
.LN28:
	.stabn  68,0,501,.LN28-Compiler_ClCompiler_CompileSubgoal		# line 501, column 5
	movl	8(%ebp),%eax
	cmpl	$0,24(%eax)
	jle	.Lab17
.Lab18:
.LN29:
	.stabn  68,0,502,.LN29-Compiler_ClCompiler_CompileSubgoal		# line 502, column 10
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN30:
	.stabn  68,0,503,.LN30-Compiler_ClCompiler_CompileSubgoal		# line 503, column 10
	movl	$1,-12(%ebp) 
	jmp	.Lab19
.Lab20:
.LN31:
	.stabn  68,0,505,.LN31-Compiler_ClCompiler_CompileSubgoal		# line 505, column 9
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Compiler_ClCompiler_CompileSubgoalArgument
	addl	$8, %esp
.LN32:
	.stabn  68,0,506,.LN32-Compiler_ClCompiler_CompileSubgoal		# line 506, column 12
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN33:
	.stabn  68,0,507,.LN33-Compiler_ClCompiler_CompileSubgoal		# line 507, column 9
	incl	-12(%ebp) 
.Lab19:
.LN34:
	.stabn  68,0,504,.LN34-Compiler_ClCompiler_CompileSubgoal		# line 504, column 16
	cmpl	$0,-8(%ebp)
	jne	.Lab20
.Lab21:
.Lab17:
.LN35:
	.stabn  68,0,505,.LN35-Compiler_ClCompiler_CompileSubgoal		# line 505, column 0
.LBE3:
	leave
	ret
	.Lab16 = 12
	.stabs "ArgumentIndex:t33=4",128,0,0,0
	.stabs "reg:33",128,0,4,-12
	.stabs "arg:19",128,0,4,-8
	.stabs "h:p19",160,0,4,8
	.stabn 192,0,0,.LBB3-Compiler_ClCompiler_CompileSubgoal
	.stabn 224,0,0,.LBE3-Compiler_ClCompiler_CompileSubgoal
	.stabs "Compiler_ClCompiler_CompileSubgoalArgument:F16",36,0,0,Compiler_ClCompiler_CompileSubgoalArgument
	.align 4
Compiler_ClCompiler_CompileSubgoalArgument:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab22, %esp
.LN36:
	.stabn  68,0,484,.LN36-Compiler_ClCompiler_CompileSubgoalArgument		# line 484, column 3
.LBB4:
	movl	$16,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-8(%ebp) 
.LN37:
	.stabn  68,0,486,.LN37-Compiler_ClCompiler_CompileSubgoalArgument		# line 486, column 7
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab30:
	.long	.Lab29
	.long	.Lab28
	.long	.Lab27
	.long	.Lab26
	.long	.Lab25
	.text
	subl	$0,%eax
	jb	.Lab23
	cmpl	$4,%eax
	ja	.Lab23
	jmp	*.Lab30(,%eax,4)
.Lab29:
.LN38:
	.stabn  68,0,487,.LN38-Compiler_ClCompiler_CompileSubgoalArgument		# line 487, column 16
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_CompileSubgoalStructure
	addl	$8, %esp
	jmp	.Lab24
.Lab28:
.LN39:
	.stabn  68,0,488,.LN39-Compiler_ClCompiler_CompileSubgoalArgument		# line 488, column 16
	pushl	$24
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN40:
	.stabn  68,0,489,.LN40-Compiler_ClCompiler_CompileSubgoalArgument		# line 489, column 16
	pushl	12(%ebp)
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	Compiler_EmitNumReg
	addl	$8, %esp
	jmp	.Lab24
.Lab27:
	jmp	.Lab24
.Lab26:
	jmp	.Lab24
.Lab25:
.LN41:
	.stabn  68,0,492,.LN41-Compiler_ClCompiler_CompileSubgoalArgument		# line 492, column 16
	pushl	12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab31:
	.long	1,16
	.text
	boundl	%eax,.Lab31
	pushl	%eax
	call	Compiler_ClCompiler_CompileSubgoalVariable
	addl	$8, %esp
	jmp	.Lab24
.Lab23:
	call	CaseErr_
.Lab24:
.LN42:
	.stabn  68,0,493,.LN42-Compiler_ClCompiler_CompileSubgoalArgument		# line 493, column 0
.LBE4:
	leave
	ret
	.Lab22 = 8
	.stabs "areg:p33",160,0,4,12
	.stabs "t:p19",160,0,4,8
	.stabn 192,0,0,.LBB4-Compiler_ClCompiler_CompileSubgoalArgument
	.stabn 224,0,0,.LBE4-Compiler_ClCompiler_CompileSubgoalArgument
	.stabs "Compiler_ClCompiler_CompileHead:F16",36,0,0,Compiler_ClCompiler_CompileHead
	.align 4
Compiler_ClCompiler_CompileHead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab32, %esp
.LN43:
	.stabn  68,0,470,.LN43-Compiler_ClCompiler_CompileHead		# line 470, column 3
.LBB5:
.LN44:
	.stabn  68,0,471,.LN44-Compiler_ClCompiler_CompileHead		# line 471, column 5
	movl	8(%ebp),%eax
	cmpl	$0,24(%eax)
	jle	.Lab33
.Lab34:
.LN45:
	.stabn  68,0,472,.LN45-Compiler_ClCompiler_CompileHead		# line 472, column 19
	movl	DISPLAY_,%ebx
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	.data
	.align 4
.Lab35:
	.long	0,16
	.text
	boundl	%eax,.Lab35
	movl	%eax,-140(%ebx) 
.LN46:
	.stabn  68,0,473,.LN46-Compiler_ClCompiler_CompileHead		# line 473, column 10
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN47:
	.stabn  68,0,474,.LN47-Compiler_ClCompiler_CompileHead		# line 474, column 10
	movl	$1,-12(%ebp) 
	jmp	.Lab36
.Lab37:
.LN48:
	.stabn  68,0,476,.LN48-Compiler_ClCompiler_CompileHead		# line 476, column 9
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Compiler_ClCompiler_CompileHeadArgument
	addl	$8, %esp
.LN49:
	.stabn  68,0,477,.LN49-Compiler_ClCompiler_CompileHead		# line 477, column 12
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN50:
	.stabn  68,0,478,.LN50-Compiler_ClCompiler_CompileHead		# line 478, column 9
	incl	-12(%ebp) 
.Lab36:
.LN51:
	.stabn  68,0,475,.LN51-Compiler_ClCompiler_CompileHead		# line 475, column 16
	cmpl	$0,-8(%ebp)
	jne	.Lab37
.Lab38:
.Lab33:
.LN52:
	.stabn  68,0,476,.LN52-Compiler_ClCompiler_CompileHead		# line 476, column 0
.LBE5:
	leave
	ret
	.Lab32 = 12
	.stabs "reg:33",128,0,4,-12
	.stabs "arg:19",128,0,4,-8
	.stabs "h:p19",160,0,4,8
	.stabn 192,0,0,.LBB5-Compiler_ClCompiler_CompileHead
	.stabn 224,0,0,.LBE5-Compiler_ClCompiler_CompileHead
	.stabs "Compiler_ClCompiler_CompileHeadArgument:F16",36,0,0,Compiler_ClCompiler_CompileHeadArgument
	.align 4
Compiler_ClCompiler_CompileHeadArgument:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab39, %esp
.LN53:
	.stabn  68,0,454,.LN53-Compiler_ClCompiler_CompileHeadArgument		# line 454, column 3
.LBB6:
	movl	$16,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-8(%ebp) 
.LN54:
	.stabn  68,0,456,.LN54-Compiler_ClCompiler_CompileHeadArgument		# line 456, column 7
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab47:
	.long	.Lab46
	.long	.Lab45
	.long	.Lab44
	.long	.Lab43
	.long	.Lab42
	.text
	subl	$0,%eax
	jb	.Lab40
	cmpl	$4,%eax
	ja	.Lab40
	jmp	*.Lab47(,%eax,4)
.Lab46:
.LN55:
	.stabn  68,0,457,.LN55-Compiler_ClCompiler_CompileHeadArgument		# line 457, column 16
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_CompileHeadStructure
	addl	$8, %esp
	jmp	.Lab41
.Lab45:
.LN56:
	.stabn  68,0,458,.LN56-Compiler_ClCompiler_CompileHeadArgument		# line 458, column 16
	pushl	$13
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN57:
	.stabn  68,0,459,.LN57-Compiler_ClCompiler_CompileHeadArgument		# line 459, column 16
	pushl	12(%ebp)
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	Compiler_EmitNumReg
	addl	$8, %esp
	jmp	.Lab41
.Lab44:
	jmp	.Lab41
.Lab43:
	jmp	.Lab41
.Lab42:
.LN58:
	.stabn  68,0,462,.LN58-Compiler_ClCompiler_CompileHeadArgument		# line 462, column 16
	pushl	12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab48:
	.long	1,16
	.text
	boundl	%eax,.Lab48
	pushl	%eax
	call	Compiler_ClCompiler_CompileHeadVariable
	addl	$8, %esp
	jmp	.Lab41
.Lab40:
	call	CaseErr_
.Lab41:
.LN59:
	.stabn  68,0,463,.LN59-Compiler_ClCompiler_CompileHeadArgument		# line 463, column 0
.LBE6:
	leave
	ret
	.Lab39 = 8
	.stabs "areg:p33",160,0,4,12
	.stabs "t:p19",160,0,4,8
	.stabn 192,0,0,.LBB6-Compiler_ClCompiler_CompileHeadArgument
	.stabn 224,0,0,.LBE6-Compiler_ClCompiler_CompileHeadArgument
	.stabs "Compiler_ClCompiler_CompileSubgoalStructure:F16",36,0,0,Compiler_ClCompiler_CompileSubgoalStructure
	.align 4
Compiler_ClCompiler_CompileSubgoalStructure:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab49, %esp
.LN60:
	.stabn  68,0,428,.LN60-Compiler_ClCompiler_CompileSubgoalStructure		# line 428, column 3
.LBB7:
.LN61:
	.stabn  68,0,429,.LN61-Compiler_ClCompiler_CompileSubgoalStructure		# line 429, column 5
	movl	8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	.Lab52
.Lab51:
.LN62:
	.stabn  68,0,430,.LN62-Compiler_ClCompiler_CompileSubgoalStructure		# line 430, column 7
	pushl	$24
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN63:
	.stabn  68,0,431,.LN63-Compiler_ClCompiler_CompileSubgoalStructure		# line 431, column 7
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_EmitFunctorReg
	addl	$8, %esp
	jmp	.Lab50
.Lab52:
.LN64:
	.stabn  68,0,433,.LN64-Compiler_ClCompiler_CompileSubgoalStructure		# line 433, column 7
	pushl	$23
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN65:
	.stabn  68,0,434,.LN65-Compiler_ClCompiler_CompileSubgoalStructure		# line 434, column 7
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_EmitFunctorReg
	addl	$8, %esp
.LN66:
	.stabn  68,0,435,.LN66-Compiler_ClCompiler_CompileSubgoalStructure		# line 435, column 10
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab53
.Lab54:
	movl	$16,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN67:
	.stabn  68,0,438,.LN67-Compiler_ClCompiler_CompileSubgoalStructure		# line 438, column 11
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab63:
	.long	.Lab62
	.long	.Lab61
	.long	.Lab60
	.long	.Lab59
	.long	.Lab58
	.text
	subl	$0,%eax
	jb	.Lab56
	cmpl	$4,%eax
	ja	.Lab56
	jmp	*.Lab63(,%eax,4)
.Lab62:
.LN68:
	.stabn  68,0,439,.LN68-Compiler_ClCompiler_CompileSubgoalStructure		# line 439, column 20
	pushl	12(%ebp)
	pushl	-8(%ebp)
	call	Compiler_ClCompiler_CompileSubgoalStructure
	addl	$8, %esp
	jmp	.Lab57
.Lab61:
.LN69:
	.stabn  68,0,440,.LN69-Compiler_ClCompiler_CompileSubgoalStructure		# line 440, column 20
	pushl	$18
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN70:
	.stabn  68,0,441,.LN70-Compiler_ClCompiler_CompileSubgoalStructure		# line 441, column 20
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab64:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab64
	pushl	%eax
	call	Compiler_EmitNumber
	addl	$4, %esp
	jmp	.Lab57
.Lab60:
	jmp	.Lab57
.Lab59:
.LN71:
	.stabn  68,0,443,.LN71-Compiler_ClCompiler_CompileSubgoalStructure		# line 443, column 20
	pushl	$14
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN72:
	.stabn  68,0,444,.LN72-Compiler_ClCompiler_CompileSubgoalStructure		# line 444, column 20
	pushl	$16
	call	Compiler_ClCompiler_AllocateInArgumentReg
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitXReg
	addl	$4, %esp
	jmp	.Lab57
.Lab58:
.LN73:
	.stabn  68,0,445,.LN73-Compiler_ClCompiler_CompileSubgoalStructure		# line 445, column 20
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab65:
	.long	1,16
	.text
	boundl	%eax,.Lab65
	pushl	%eax
	call	Compiler_ClCompiler_CompileVarInStructure
	addl	$4, %esp
	jmp	.Lab57
.Lab56:
	call	CaseErr_
.Lab57:
.LN74:
	.stabn  68,0,448,.LN74-Compiler_ClCompiler_CompileSubgoalStructure		# line 448, column 12
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab53:
.LN75:
	.stabn  68,0,436,.LN75-Compiler_ClCompiler_CompileSubgoalStructure		# line 436, column 16
	cmpl	$0,-8(%ebp)
	jne	.Lab54
.Lab55:
.Lab50:
.LN76:
	.stabn  68,0,437,.LN76-Compiler_ClCompiler_CompileSubgoalStructure		# line 437, column 0
.LBE7:
	leave
	ret
	.Lab49 = 12
	.stabs "arg:19",128,0,4,-8
	.stabs "areg:p33",160,0,4,12
	.stabs "s:p19",160,0,4,8
	.stabn 192,0,0,.LBB7-Compiler_ClCompiler_CompileSubgoalStructure
	.stabn 224,0,0,.LBE7-Compiler_ClCompiler_CompileSubgoalStructure
	.stabs "Compiler_ClCompiler_CompileHeadStructure:F16",36,0,0,Compiler_ClCompiler_CompileHeadStructure
	.align 4
Compiler_ClCompiler_CompileHeadStructure:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab66, %esp
.LN77:
	.stabn  68,0,400,.LN77-Compiler_ClCompiler_CompileHeadStructure		# line 400, column 3
.LBB8:
.LN78:
	.stabn  68,0,401,.LN78-Compiler_ClCompiler_CompileHeadStructure		# line 401, column 5
	movl	8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	.Lab69
.Lab68:
.LN79:
	.stabn  68,0,402,.LN79-Compiler_ClCompiler_CompileHeadStructure		# line 402, column 7
	pushl	$13
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN80:
	.stabn  68,0,403,.LN80-Compiler_ClCompiler_CompileHeadStructure		# line 403, column 7
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_EmitFunctorReg
	addl	$8, %esp
	jmp	.Lab67
.Lab69:
.LN81:
	.stabn  68,0,405,.LN81-Compiler_ClCompiler_CompileHeadStructure		# line 405, column 7
	pushl	$12
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN82:
	.stabn  68,0,406,.LN82-Compiler_ClCompiler_CompileHeadStructure		# line 406, column 7
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_EmitFunctorReg
	addl	$8, %esp
.LN83:
	.stabn  68,0,407,.LN83-Compiler_ClCompiler_CompileHeadStructure		# line 407, column 10
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab70
.Lab71:
	movl	$16,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN84:
	.stabn  68,0,410,.LN84-Compiler_ClCompiler_CompileHeadStructure		# line 410, column 11
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab80:
	.long	.Lab79
	.long	.Lab78
	.long	.Lab77
	.long	.Lab76
	.long	.Lab75
	.text
	subl	$0,%eax
	jb	.Lab73
	cmpl	$4,%eax
	ja	.Lab73
	jmp	*.Lab80(,%eax,4)
.Lab79:
.LN85:
	.stabn  68,0,411,.LN85-Compiler_ClCompiler_CompileHeadStructure		# line 411, column 20
	pushl	12(%ebp)
	pushl	-8(%ebp)
	call	Compiler_ClCompiler_CompileHeadStructure
	addl	$8, %esp
	jmp	.Lab74
.Lab78:
.LN86:
	.stabn  68,0,412,.LN86-Compiler_ClCompiler_CompileHeadStructure		# line 412, column 20
	pushl	$18
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN87:
	.stabn  68,0,413,.LN87-Compiler_ClCompiler_CompileHeadStructure		# line 413, column 20
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab81:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab81
	pushl	%eax
	call	Compiler_EmitNumber
	addl	$4, %esp
	jmp	.Lab74
.Lab77:
	jmp	.Lab74
.Lab76:
.LN88:
	.stabn  68,0,415,.LN88-Compiler_ClCompiler_CompileHeadStructure		# line 415, column 20
	pushl	$14
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN89:
	.stabn  68,0,416,.LN89-Compiler_ClCompiler_CompileHeadStructure		# line 416, column 20
	pushl	$16
	call	Compiler_ClCompiler_AllocateInArgumentReg
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitXReg
	addl	$4, %esp
	jmp	.Lab74
.Lab75:
.LN90:
	.stabn  68,0,418,.LN90-Compiler_ClCompiler_CompileHeadStructure		# line 418, column 20
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab82:
	.long	1,16
	.text
	boundl	%eax,.Lab82
	pushl	%eax
	call	Compiler_ClCompiler_CompileVarInStructure
	addl	$4, %esp
	jmp	.Lab74
.Lab73:
	call	CaseErr_
.Lab74:
.LN91:
	.stabn  68,0,421,.LN91-Compiler_ClCompiler_CompileHeadStructure		# line 421, column 12
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab70:
.LN92:
	.stabn  68,0,408,.LN92-Compiler_ClCompiler_CompileHeadStructure		# line 408, column 16
	cmpl	$0,-8(%ebp)
	jne	.Lab71
.Lab72:
.Lab67:
.LN93:
	.stabn  68,0,409,.LN93-Compiler_ClCompiler_CompileHeadStructure		# line 409, column 0
.LBE8:
	leave
	ret
	.Lab66 = 12
	.stabs "arg:19",128,0,4,-8
	.stabs "areg:p33",160,0,4,12
	.stabs "s:p19",160,0,4,8
	.stabn 192,0,0,.LBB8-Compiler_ClCompiler_CompileHeadStructure
	.stabn 224,0,0,.LBE8-Compiler_ClCompiler_CompileHeadStructure
	.stabs "Compiler_ClCompiler_CompileSubgoalVariable:F16",36,0,0,Compiler_ClCompiler_CompileSubgoalVariable
	.align 4
Compiler_ClCompiler_CompileSubgoalVariable:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab83, %esp
.LN94:
	.stabn  68,0,374,.LN94-Compiler_ClCompiler_CompileSubgoalVariable		# line 374, column 3
.LBB9:
.LN95:
	.stabn  68,0,375,.LN95-Compiler_ClCompiler_CompileSubgoalVariable		# line 375, column 5
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 23(%eax)
	je	.Lab86
.Lab85:
.LN96:
	.stabn  68,0,376,.LN96-Compiler_ClCompiler_CompileSubgoalVariable		# line 376, column 7
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 7(%eax)
	je	.Lab89
.Lab88:
.LN97:
	.stabn  68,0,377,.LN97-Compiler_ClCompiler_CompileSubgoalVariable		# line 377, column 9
	pushl	$22
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN98:
	.stabn  68,0,378,.LN98-Compiler_ClCompiler_CompileSubgoalVariable		# line 378, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_AllocatedYNumber
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitYAReg
	addl	$8, %esp
	jmp	.Lab87
.Lab89:
.LN99:
	.stabn  68,0,380,.LN99-Compiler_ClCompiler_CompileSubgoalVariable		# line 380, column 9
	pushl	8(%ebp)
	call	Compiler_ClCompiler_OccuredInHead
	addl	$4, %esp
	cmpl	12(%ebp),%eax
	je	.Lab90
.Lab91:
.LN100:
	.stabn  68,0,381,.LN100-Compiler_ClCompiler_CompileSubgoalVariable		# line 381, column 11
	pushl	$21
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN101:
	.stabn  68,0,382,.LN101-Compiler_ClCompiler_CompileSubgoalVariable		# line 382, column 11
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_OccuredInHead
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitXAReg
	addl	$8, %esp
.Lab90:
.Lab87:
	jmp	.Lab84
.Lab86:
.LN102:
	.stabn  68,0,386,.LN102-Compiler_ClCompiler_CompileSubgoalVariable		# line 386, column 7
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 7(%eax)
	je	.Lab94
.Lab93:
.LN103:
	.stabn  68,0,387,.LN103-Compiler_ClCompiler_CompileSubgoalVariable		# line 387, column 9
	pushl	$20
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN104:
	.stabn  68,0,388,.LN104-Compiler_ClCompiler_CompileSubgoalVariable		# line 388, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_AllocateInEnvironment
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitYAReg
	addl	$8, %esp
	jmp	.Lab92
.Lab94:
.LN105:
	.stabn  68,0,390,.LN105-Compiler_ClCompiler_CompileSubgoalVariable		# line 390, column 9
	pushl	$19
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN106:
	.stabn  68,0,391,.LN106-Compiler_ClCompiler_CompileSubgoalVariable		# line 391, column 9
	pushl	12(%ebp)
	pushl	12(%ebp)
	call	Compiler_EmitXAReg
	addl	$8, %esp
.LN107:
	.stabn  68,0,392,.LN107-Compiler_ClCompiler_CompileSubgoalVariable		# line 392, column 40
	movl	DISPLAY_,%ecx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,-140(%ecx,%ebx,4) 
.Lab92:
.LN108:
	.stabn  68,0,394,.LN108-Compiler_ClCompiler_CompileSubgoalVariable		# line 394, column 24
	movl	8(%ebp),%eax
	movb	$1,Compiler_s + 23(%eax) 
.Lab84:
.LN109:
	.stabn  68,0,395,.LN109-Compiler_ClCompiler_CompileSubgoalVariable		# line 395, column 0
.LBE9:
	leave
	ret
	.Lab83 = 4
	.stabs "areg:p33",160,0,4,12
	.stabs "VarIndex:t34=4",128,0,0,0
	.stabs "varnum:p34",160,0,4,8
	.stabn 192,0,0,.LBB9-Compiler_ClCompiler_CompileSubgoalVariable
	.stabn 224,0,0,.LBE9-Compiler_ClCompiler_CompileSubgoalVariable
	.stabs "Compiler_ClCompiler_CompileVarInStructure:F16",36,0,0,Compiler_ClCompiler_CompileVarInStructure
	.align 4
Compiler_ClCompiler_CompileVarInStructure:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab95, %esp
.LN110:
	.stabn  68,0,352,.LN110-Compiler_ClCompiler_CompileVarInStructure		# line 352, column 3
.LBB10:
.LN111:
	.stabn  68,0,353,.LN111-Compiler_ClCompiler_CompileVarInStructure		# line 353, column 5
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 23(%eax)
	je	.Lab98
.Lab97:
.LN112:
	.stabn  68,0,354,.LN112-Compiler_ClCompiler_CompileVarInStructure		# line 354, column 7
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 7(%eax)
	je	.Lab101
.Lab100:
.LN113:
	.stabn  68,0,355,.LN113-Compiler_ClCompiler_CompileVarInStructure		# line 355, column 9
	pushl	$17
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN114:
	.stabn  68,0,356,.LN114-Compiler_ClCompiler_CompileVarInStructure		# line 356, column 9
	pushl	8(%ebp)
	call	Compiler_ClCompiler_AllocatedYNumber
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitYReg
	addl	$4, %esp
	jmp	.Lab99
.Lab101:
.LN115:
	.stabn  68,0,358,.LN115-Compiler_ClCompiler_CompileVarInStructure		# line 358, column 9
	pushl	$16
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN116:
	.stabn  68,0,359,.LN116-Compiler_ClCompiler_CompileVarInStructure		# line 359, column 9
	pushl	8(%ebp)
	call	Compiler_ClCompiler_OccuredInHead
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitXReg
	addl	$4, %esp
.Lab99:
	jmp	.Lab96
.Lab98:
.LN117:
	.stabn  68,0,362,.LN117-Compiler_ClCompiler_CompileVarInStructure		# line 362, column 7
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 7(%eax)
	je	.Lab104
.Lab103:
.LN118:
	.stabn  68,0,363,.LN118-Compiler_ClCompiler_CompileVarInStructure		# line 363, column 9
	pushl	$15
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN119:
	.stabn  68,0,364,.LN119-Compiler_ClCompiler_CompileVarInStructure		# line 364, column 9
	pushl	8(%ebp)
	call	Compiler_ClCompiler_AllocateInEnvironment
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitYReg
	addl	$4, %esp
	jmp	.Lab102
.Lab104:
.LN120:
	.stabn  68,0,366,.LN120-Compiler_ClCompiler_CompileVarInStructure		# line 366, column 9
	pushl	$14
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN121:
	.stabn  68,0,367,.LN121-Compiler_ClCompiler_CompileVarInStructure		# line 367, column 9
	pushl	8(%ebp)
	call	Compiler_ClCompiler_AllocateInArgumentReg
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitXReg
	addl	$4, %esp
.Lab102:
.LN122:
	.stabn  68,0,369,.LN122-Compiler_ClCompiler_CompileVarInStructure		# line 369, column 24
	movl	8(%ebp),%eax
	movb	$1,Compiler_s + 23(%eax) 
.Lab96:
.LN123:
	.stabn  68,0,370,.LN123-Compiler_ClCompiler_CompileVarInStructure		# line 370, column 0
.LBE10:
	leave
	ret
	.Lab95 = 4
	.stabs "varnum:p34",160,0,4,8
	.stabn 192,0,0,.LBB10-Compiler_ClCompiler_CompileVarInStructure
	.stabn 224,0,0,.LBE10-Compiler_ClCompiler_CompileVarInStructure
	.stabs "Compiler_ClCompiler_CompileHeadVariable:F16",36,0,0,Compiler_ClCompiler_CompileHeadVariable
	.align 4
Compiler_ClCompiler_CompileHeadVariable:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab105, %esp
.LN124:
	.stabn  68,0,331,.LN124-Compiler_ClCompiler_CompileHeadVariable		# line 331, column 3
.LBB11:
.LN125:
	.stabn  68,0,332,.LN125-Compiler_ClCompiler_CompileHeadVariable		# line 332, column 5
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 23(%eax)
	je	.Lab108
.Lab107:
.LN126:
	.stabn  68,0,333,.LN126-Compiler_ClCompiler_CompileHeadVariable		# line 333, column 7
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 7(%eax)
	je	.Lab111
.Lab110:
.LN127:
	.stabn  68,0,334,.LN127-Compiler_ClCompiler_CompileHeadVariable		# line 334, column 9
	pushl	$11
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN128:
	.stabn  68,0,335,.LN128-Compiler_ClCompiler_CompileHeadVariable		# line 335, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_AllocatedYNumber
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitYAReg
	addl	$8, %esp
	jmp	.Lab109
.Lab111:
.LN129:
	.stabn  68,0,337,.LN129-Compiler_ClCompiler_CompileHeadVariable		# line 337, column 9
	pushl	$10
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN130:
	.stabn  68,0,338,.LN130-Compiler_ClCompiler_CompileHeadVariable		# line 338, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_OccuredInHead
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitXAReg
	addl	$8, %esp
.Lab109:
	jmp	.Lab106
.Lab108:
.LN131:
	.stabn  68,0,341,.LN131-Compiler_ClCompiler_CompileHeadVariable		# line 341, column 7
	movl	8(%ebp),%eax
	cmpb	$0,Compiler_s + 7(%eax)
	je	.Lab114
.Lab113:
.LN132:
	.stabn  68,0,342,.LN132-Compiler_ClCompiler_CompileHeadVariable		# line 342, column 9
	pushl	$9
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN133:
	.stabn  68,0,343,.LN133-Compiler_ClCompiler_CompileHeadVariable		# line 343, column 9
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Compiler_ClCompiler_AllocateInEnvironment
	addl	$4, %esp
	pushl	%eax
	call	Compiler_EmitYAReg
	addl	$8, %esp
	jmp	.Lab112
.Lab114:
.LN134:
	.stabn  68,0,345,.LN134-Compiler_ClCompiler_CompileHeadVariable		# line 345, column 40
	movl	DISPLAY_,%ecx
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,-140(%ecx,%ebx,4) 
.Lab112:
.LN135:
	.stabn  68,0,347,.LN135-Compiler_ClCompiler_CompileHeadVariable		# line 347, column 24
	movl	8(%ebp),%eax
	movb	$1,Compiler_s + 23(%eax) 
.Lab106:
.LN136:
	.stabn  68,0,348,.LN136-Compiler_ClCompiler_CompileHeadVariable		# line 348, column 0
.LBE11:
	leave
	ret
	.Lab105 = 4
	.stabs "areg:p33",160,0,4,12
	.stabs "varnum:p34",160,0,4,8
	.stabn 192,0,0,.LBB11-Compiler_ClCompiler_CompileHeadVariable
	.stabn 224,0,0,.LBE11-Compiler_ClCompiler_CompileHeadVariable
	.stabs "Compiler_ClCompiler_OccuredInHead:F33",36,0,0,Compiler_ClCompiler_OccuredInHead
	.align 4
Compiler_ClCompiler_OccuredInHead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab115, %esp
.LN137:
	.stabn  68,0,326,.LN137-Compiler_ClCompiler_OccuredInHead		# line 326, column 3
.LBB12:
.LN138:
	.stabn  68,0,327,.LN138-Compiler_ClCompiler_OccuredInHead		# line 327, column 5
	movl	DISPLAY_,%ebx
	movl	8(%ebp),%eax
	movl	-140(%ebx,%eax,4),%eax
	leave
	ret
.LN139:
	.stabn  68,0,328,.LN139-Compiler_ClCompiler_OccuredInHead		# line 328, column 0
	call	ReturnErr_
.LBE12:
	leave
	ret
	.Lab115 = 4
	.stabs "variable:p34",160,0,4,8
	.stabn 192,0,0,.LBB12-Compiler_ClCompiler_OccuredInHead
	.stabn 224,0,0,.LBE12-Compiler_ClCompiler_OccuredInHead
	.stabs "EnvironmentIndex:t35=4",128,0,0,0
	.stabs "Compiler_ClCompiler_AllocatedYNumber:F35",36,0,0,Compiler_ClCompiler_AllocatedYNumber
	.align 4
Compiler_ClCompiler_AllocatedYNumber:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab116, %esp
.LN140:
	.stabn  68,0,321,.LN140-Compiler_ClCompiler_AllocatedYNumber		# line 321, column 3
.LBB13:
.LN141:
	.stabn  68,0,322,.LN141-Compiler_ClCompiler_AllocatedYNumber		# line 322, column 5
	movl	DISPLAY_,%ebx
	movl	8(%ebp),%eax
	movl	-72(%ebx,%eax,4),%eax
	leave
	ret
.LN142:
	.stabn  68,0,323,.LN142-Compiler_ClCompiler_AllocatedYNumber		# line 323, column 0
	call	ReturnErr_
.LBE13:
	leave
	ret
	.Lab116 = 4
	.stabs "variable:p34",160,0,4,8
	.stabn 192,0,0,.LBB13-Compiler_ClCompiler_AllocatedYNumber
	.stabn 224,0,0,.LBE13-Compiler_ClCompiler_AllocatedYNumber
	.stabs "Compiler_ClCompiler_AllocateInArgumentReg:F33",36,0,0,Compiler_ClCompiler_AllocateInArgumentReg
	.align 4
Compiler_ClCompiler_AllocateInArgumentReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab117, %esp
.LN143:
	.stabn  68,0,314,.LN143-Compiler_ClCompiler_AllocateInArgumentReg		# line 314, column 3
.LBB14:
.LN144:
	.stabn  68,0,315,.LN144-Compiler_ClCompiler_AllocateInArgumentReg		# line 315, column 5
	movl	DISPLAY_,%eax
	incl	-140(%eax) 
.LN145:
	.stabn  68,0,316,.LN145-Compiler_ClCompiler_AllocateInArgumentReg		# line 316, column 38
	movl	DISPLAY_,%ecx
	movl	8(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-140(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab119
	jmp	.Lab118
.Lab119:
   	call	BoundErr_		
.Lab118:
	movl	%eax,-140(%ecx,%ebx,4) 
.LN146:
	.stabn  68,0,317,.LN146-Compiler_ClCompiler_AllocateInArgumentReg		# line 317, column 5
	movl	DISPLAY_,%eax
	movl	-140(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab121
	jmp	.Lab120
.Lab121:
   	call	BoundErr_		
.Lab120:
	leave
	ret
.LN147:
	.stabn  68,0,318,.LN147-Compiler_ClCompiler_AllocateInArgumentReg		# line 318, column 0
	call	ReturnErr_
.LBE14:
	leave
	ret
	.Lab117 = 4
	.stabs "variable:p34",160,0,4,8
	.stabn 192,0,0,.LBB14-Compiler_ClCompiler_AllocateInArgumentReg
	.stabn 224,0,0,.LBE14-Compiler_ClCompiler_AllocateInArgumentReg
	.stabs "Compiler_ClCompiler_AllocateInEnvironment:F35",36,0,0,Compiler_ClCompiler_AllocateInEnvironment
	.align 4
Compiler_ClCompiler_AllocateInEnvironment:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab122, %esp
.LN148:
	.stabn  68,0,307,.LN148-Compiler_ClCompiler_AllocateInEnvironment		# line 307, column 3
.LBB15:
.LN149:
	.stabn  68,0,308,.LN149-Compiler_ClCompiler_AllocateInEnvironment		# line 308, column 5
	movl	DISPLAY_,%eax
	incl	-72(%eax) 
.LN150:
	.stabn  68,0,309,.LN150-Compiler_ClCompiler_AllocateInEnvironment		# line 309, column 41
	movl	DISPLAY_,%ecx
	movl	8(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-72(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab124
	jmp	.Lab123
.Lab124:
   	call	BoundErr_		
.Lab123:
	movl	%eax,-72(%ecx,%ebx,4) 
.LN151:
	.stabn  68,0,310,.LN151-Compiler_ClCompiler_AllocateInEnvironment		# line 310, column 5
	movl	DISPLAY_,%eax
	movl	-72(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab126
	jmp	.Lab125
.Lab126:
   	call	BoundErr_		
.Lab125:
	leave
	ret
.LN152:
	.stabn  68,0,311,.LN152-Compiler_ClCompiler_AllocateInEnvironment		# line 311, column 0
	call	ReturnErr_
.LBE15:
	leave
	ret
	.Lab122 = 4
	.stabs "variable:p34",160,0,4,8
	.stabn 192,0,0,.LBB15-Compiler_ClCompiler_AllocateInEnvironment
	.stabn 224,0,0,.LBE15-Compiler_ClCompiler_AllocateInEnvironment
	.stabs "Compiler_ClCompiler:F16",36,0,0,Compiler_ClCompiler
	.align 4
Compiler_ClCompiler:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab127, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN153:
	.stabn  68,0,554,.LN153-Compiler_ClCompiler		# line 554, column 1
.LBB16:
.LN154:
	.stabn  68,0,555,.LN154-Compiler_ClCompiler		# line 555, column 4
	cmpl	$0,8(%ebp)
	jne	.Lab128
.Lab129:
.LN155:
	.stabn  68,0,555,.LN155-Compiler_ClCompiler		# line 555, column 19
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab128:
.LN156:
	.stabn  68,0,557,.LN156-Compiler_ClCompiler		# line 557, column 4
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	Compiler_EmitProcedureHead
	addl	$4, %esp
.LN157:
	.stabn  68,0,559,.LN157-Compiler_ClCompiler		# line 559, column 4
	movl	8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	.Lab132
.Lab131:
.LN158:
	.stabn  68,0,560,.LN158-Compiler_ClCompiler		# line 560, column 6
	pushl	8(%ebp)
	call	Compiler_ClCompiler_CompileClause
	addl	$4, %esp
	jmp	.Lab130
.Lab132:
.LN159:
	.stabn  68,0,562,.LN159-Compiler_ClCompiler		# line 562, column 6
	pushl	$0
	call	Compiler_EmitWAMInstruction
	addl	$4, %esp
.LN160:
	.stabn  68,0,563,.LN160-Compiler_ClCompiler		# line 563, column 6
	call	Compiler_EmitNextClauseLabel
	jmp	.Lab133
.Lab134:
.LN161:
	.stabn  68,0,565,.LN161-Compiler_ClCompiler		# line 565, column 8
	pushl	8(%ebp)
	call	Compiler_ClCompiler_CompileClause
	addl	$4, %esp
.LN162:
	.stabn  68,0,566,.LN162-Compiler_ClCompiler		# line 566, column 10
	movl	8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,8(%ebp) 
.LN163:
	.stabn  68,0,567,.LN163-Compiler_ClCompiler		# line 567, column 8
	cmpl	$0,8(%ebp)
	je	.Lab136
.Lab137:
.LN164:
	.stabn  68,0,568,.LN164-Compiler_ClCompiler		# line 568, column 10
	movl	8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	.Lab140
.Lab139:
.LN165:
	.stabn  68,0,569,.LN165-Compiler_ClCompiler		# line 569, column 12
	pushl	$2
	call	Compiler_EmitWAMInstructionLabeled
	addl	$4, %esp
	jmp	.Lab138
.Lab140:
.LN166:
	.stabn  68,0,571,.LN166-Compiler_ClCompiler		# line 571, column 12
	pushl	$1
	call	Compiler_EmitWAMInstructionLabeled
	addl	$4, %esp
.LN167:
	.stabn  68,0,572,.LN167-Compiler_ClCompiler		# line 572, column 12
	call	Compiler_EmitNextClauseLabel
.Lab138:
.Lab136:
.Lab133:
.LN168:
	.stabn  68,0,564,.LN168-Compiler_ClCompiler		# line 564, column 14
	cmpl	$0,8(%ebp)
	jne	.Lab134
.Lab135:
.Lab130:
.LN169:
	.stabn  68,0,565,.LN169-Compiler_ClCompiler		# line 565, column 0
.LBE16:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab127 = 140
	.stabs "LastArgument:36=4",128,0,4,-140
	.stabs "ArgumentAllocationTable:37=ar4;1;16;33",128,0,64,-136
	.stabs "AllocationPointer:38=4",128,0,4,-72
	.stabs "EnvironmentAllocationTable:39=ar4;1;16;35",128,0,64,-68
	.stabs "cl:p17",160,0,4,8
	.stabn 192,0,0,.LBB16-Compiler_ClCompiler
	.stabn 224,0,0,.LBE16-Compiler_ClCompiler
	.stabs "Compiler_NumberOfVars:F4",36,0,0,Compiler_NumberOfVars
	.align 4
Compiler_NumberOfVars:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab141, %esp
.LN170:
	.stabn  68,0,286,.LN170-Compiler_NumberOfVars		# line 286, column 1
.LBB17:
.LN171:
	.stabn  68,0,287,.LN171-Compiler_NumberOfVars		# line 287, column 4
	movl	$0,-12(%ebp) 
.LN172:
	.stabn  68,0,288,.LN172-Compiler_NumberOfVars		# line 288, column 3
	movl	$1,-8(%ebp) 
.Lab142:
.LN173:
	.stabn  68,0,289,.LN173-Compiler_NumberOfVars		# line 289, column 5
	movl	-8(%ebp),%eax
	cmpb	$0,7(%ebp,%eax,1)
	je	.Lab144
.Lab145:
.LN174:
	.stabn  68,0,289,.LN174-Compiler_NumberOfVars		# line 289, column 18
	incl	-12(%ebp) 
.Lab144:
.LN175:
	.stabn  68,0,288,.LN175-Compiler_NumberOfVars		# line 288, column 3
	cmpl	$16,-8(%ebp)
	jae	.Lab143
	incl	-8(%ebp) 
	jmp	.Lab142
.Lab143:
.LN176:
	.stabn  68,0,291,.LN176-Compiler_NumberOfVars		# line 291, column 3
	movl	-12(%ebp),%eax
	leave
	ret
.LN177:
	.stabn  68,0,292,.LN177-Compiler_NumberOfVars		# line 292, column 0
	call	ReturnErr_
.LBE17:
	leave
	ret
	.Lab141 = 12
	.stabs "s:4",128,0,4,-12
	.stabs "i:34",128,0,4,-8
	.stabs "VarArray:t40=ar4;1;16;1",128,0,0,0
	.stabs "v:p40",160,0,16,8
	.stabn 192,0,0,.LBB17-Compiler_NumberOfVars
	.stabn 224,0,0,.LBE17-Compiler_NumberOfVars
	.stabs "Compiler_TestPrintVarArray:F16",36,0,0,Compiler_TestPrintVarArray
	.align 4
Compiler_TestPrintVarArray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab146, %esp
.LN178:
	.stabn  68,0,272,.LN178-Compiler_TestPrintVarArray		# line 272, column 1
.LBB18:
.LN179:
	.stabn  68,0,273,.LN179-Compiler_TestPrintVarArray		# line 273, column 3
	call	InOut_WriteLn
.LN180:
	.stabn  68,0,273,.LN180-Compiler_TestPrintVarArray		# line 273, column 12
	pushl	$1
	call	Compiler_Tab
	addl	$4, %esp
.LN181:
	.stabn  68,0,274,.LN181-Compiler_TestPrintVarArray		# line 274, column 3
	.data
.Lab147:
 	.ascii	"; permanent variables:\000"
	.text
	pushl	$22
	leal	.Lab147,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN182:
	.stabn  68,0,275,.LN182-Compiler_TestPrintVarArray		# line 275, column 3
	movl	$1,-8(%ebp) 
.Lab148:
.LN183:
	.stabn  68,0,276,.LN183-Compiler_TestPrintVarArray		# line 276, column 5
	movl	-8(%ebp),%eax
 	addl	8(%ebp),%eax 
	cmpb	$0,-1(%eax)
	je	.Lab150
.Lab151:
.LN184:
	.stabn  68,0,277,.LN184-Compiler_TestPrintVarArray		# line 277, column 7
	pushl	$1
	pushl	-8(%ebp)
	call	InOut_WriteInt
	addl	$8, %esp
.LN185:
	.stabn  68,0,277,.LN185-Compiler_TestPrintVarArray		# line 277, column 22
	pushl	$44
	call	InOut_Write
	addl	$4, %esp
.Lab150:
.LN186:
	.stabn  68,0,275,.LN186-Compiler_TestPrintVarArray		# line 275, column 3
	cmpl	$16,-8(%ebp)
	jae	.Lab149
	incl	-8(%ebp) 
	jmp	.Lab148
.Lab149:
.LN187:
	.stabn  68,0,280,.LN187-Compiler_TestPrintVarArray		# line 280, column 3
	call	InOut_WriteLn
.LN188:
	.stabn  68,0,281,.LN188-Compiler_TestPrintVarArray		# line 281, column 0
.LBE18:
	leave
	ret
	.Lab146 = 8
	.stabs "i:34",128,0,4,-8
	.stabs "v:v40",160,0,16,8
	.stabn 192,0,0,.LBB18-Compiler_TestPrintVarArray
	.stabn 224,0,0,.LBE18-Compiler_TestPrintVarArray
	.stabs "Compiler_LookForGlobalVariables_GlobalsInBody:F16",36,0,0,Compiler_LookForGlobalVariables_GlobalsInBody
	.align 4
Compiler_LookForGlobalVariables_GlobalsInBody:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab152, %esp
.LN189:
	.stabn  68,0,257,.LN189-Compiler_LookForGlobalVariables_GlobalsInBody		# line 257, column 3
.LBB19:
.LN190:
	.stabn  68,0,258,.LN190-Compiler_LookForGlobalVariables_GlobalsInBody		# line 258, column 12
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab153
.Lab154:
.LN191:
	.stabn  68,0,260,.LN191-Compiler_LookForGlobalVariables_GlobalsInBody		# line 260, column 7
	pushl	-8(%ebp)
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Compiler_LookForGlobalVariables_GlobalsInHead
	addl	$8, %esp
.LN192:
	.stabn  68,0,261,.LN192-Compiler_LookForGlobalVariables_GlobalsInBody		# line 261, column 14
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab153:
.LN193:
	.stabn  68,0,259,.LN193-Compiler_LookForGlobalVariables_GlobalsInBody		# line 259, column 18
	cmpl	$0,-8(%ebp)
	jne	.Lab154
.Lab155:
.LN194:
	.stabn  68,0,260,.LN194-Compiler_LookForGlobalVariables_GlobalsInBody		# line 260, column 0
.LBE19:
	leave
	ret
	.Lab152 = 8
	.stabs "subgoal:19",128,0,4,-8
	.stabs "bodyptr:p19",160,0,4,8
	.stabn 192,0,0,.LBB19-Compiler_LookForGlobalVariables_GlobalsInBody
	.stabn 224,0,0,.LBE19-Compiler_LookForGlobalVariables_GlobalsInBody
	.stabs "Compiler_LookForGlobalVariables_GlobalsInHead:F16",36,0,0,Compiler_LookForGlobalVariables_GlobalsInHead
	.align 4
Compiler_LookForGlobalVariables_GlobalsInHead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab156, %esp
.LN195:
	.stabn  68,0,238,.LN195-Compiler_LookForGlobalVariables_GlobalsInHead		# line 238, column 3
.LBB20:
	jmp	.Lab157
.Lab158:
	movl	$16,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-8(%ebp) 
.LN196:
	.stabn  68,0,242,.LN196-Compiler_LookForGlobalVariables_GlobalsInHead		# line 242, column 9
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab164:
	.long	.Lab163
	.long	.Lab160
	.long	.Lab160
	.long	.Lab160
	.long	.Lab162
	.text
	subl	$0,%eax
	jb	.Lab160
	cmpl	$4,%eax
	ja	.Lab160
	jmp	*.Lab164(,%eax,4)
.Lab163:
.LN197:
	.stabn  68,0,244,.LN197-Compiler_LookForGlobalVariables_GlobalsInHead		# line 244, column 19
	pushl	12(%ebp)
	movl	-8(%ebp),%eax
	pushl	12(%eax)
	call	Compiler_LookForGlobalVariables_GlobalsInHead
	addl	$8, %esp
	jmp	.Lab161
.Lab162:
.LN198:
	.stabn  68,0,245,.LN198-Compiler_LookForGlobalVariables_GlobalsInHead		# line 245, column 19
	pushl	12(%ebp)
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	.data
	.align 4
.Lab165:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab165
	pushl	%eax
	call	Compiler_LookForGlobalVariables_LookForVarInBody
	addl	$8, %esp
	jmp	.Lab161
.Lab160:
.Lab161:
.LN199:
	.stabn  68,0,251,.LN199-Compiler_LookForGlobalVariables_GlobalsInHead		# line 251, column 10
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,8(%ebp) 
.Lab157:
.LN200:
	.stabn  68,0,239,.LN200-Compiler_LookForGlobalVariables_GlobalsInHead		# line 239, column 14
	cmpl	$0,8(%ebp)
	jne	.Lab158
.Lab159:
.LN201:
	.stabn  68,0,240,.LN201-Compiler_LookForGlobalVariables_GlobalsInHead		# line 240, column 0
.LBE20:
	leave
	ret
	.Lab156 = 8
	.stabs "startofbody:p19",160,0,4,12
	.stabs "arg:p19",160,0,4,8
	.stabn 192,0,0,.LBB20-Compiler_LookForGlobalVariables_GlobalsInHead
	.stabn 224,0,0,.LBE20-Compiler_LookForGlobalVariables_GlobalsInHead
	.stabs "Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm:F1",36,0,0,Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm
	.align 4
Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab166, %esp
.LN202:
	.stabn  68,0,201,.LN202-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 201, column 5
.LBB21:
.LN203:
	.stabn  68,0,202,.LN203-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 202, column 13
	movb	$0,-5(%ebp) 
	jmp	.Lab167
.Lab168:
	movl	$16,%eax
 	addl	12(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN204:
	.stabn  68,0,205,.LN204-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 205, column 11
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab174:
	.long	.Lab173
	.long	.Lab170
	.long	.Lab170
	.long	.Lab170
	.long	.Lab172
	.text
	subl	$0,%eax
	jb	.Lab170
	cmpl	$4,%eax
	ja	.Lab170
	jmp	*.Lab174(,%eax,4)
.Lab173:
.LN205:
	.stabn  68,0,206,.LN205-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 206, column 27
	movl	-12(%ebp),%eax
	pushl	12(%eax)
	pushl	8(%ebp)
	call	Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm
	addl	$8, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab171
.Lab172:
.LN206:
	.stabn  68,0,207,.LN206-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 207, column 27
	movl	8(%ebp),%ebx
	movl	-12(%ebp),%eax
	cmpl	4(%eax),%ebx
	sete	%al
	movb	%al,-5(%ebp) 
	jmp	.Lab171
.Lab170:
.Lab171:
.LN207:
	.stabn  68,0,212,.LN207-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 212, column 12
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,12(%ebp) 
.Lab167:
.LN208:
	.stabn  68,0,203,.LN208-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 203, column 23
	cmpl	$0,12(%ebp)
	je	.Lab169
.Lab175:
	cmpb	$0,-5(%ebp)
	je	.Lab168
.Lab169:
.LN209:
	.stabn  68,0,214,.LN209-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 214, column 7
	movb	-5(%ebp),%al
	leave
	ret
.LN210:
	.stabn  68,0,215,.LN210-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm		# line 215, column 0
	call	ReturnErr_
.LBE21:
	leave
	ret
	.Lab166 = 12
	.stabs "result:1",128,0,1,-5
	.stabs "arg:p19",160,0,4,12
	.stabs "var:p4",160,0,4,8
	.stabn 192,0,0,.LBB21-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm
	.stabn 224,0,0,.LBE21-Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm
	.stabs "Compiler_LookForGlobalVariables_LookForVarInBody:F16",36,0,0,Compiler_LookForGlobalVariables_LookForVarInBody
	.align 4
Compiler_LookForGlobalVariables_LookForVarInBody:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab176, %esp
.LN211:
	.stabn  68,0,217,.LN211-Compiler_LookForGlobalVariables_LookForVarInBody		# line 217, column 3
.LBB22:
.LN212:
	.stabn  68,0,218,.LN212-Compiler_LookForGlobalVariables_LookForVarInBody		# line 218, column 5
	movl	DISPLAY_,%ebx
	movl	8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab180
	cmpl	$16,%eax
	jbe	.Lab179
.Lab180:
   	call	BoundErr_		
.Lab179:
 	addl	12(%ebx),%eax 
	cmpb	$1,-1(%eax)
	je	.Lab177
.Lab178:
.LN213:
	.stabn  68,0,220,.LN213-Compiler_LookForGlobalVariables_LookForVarInBody		# line 220, column 14
	movl	12(%ebp),%eax
	movl	%eax,-8(%ebp) 
.LN214:
	.stabn  68,0,221,.LN214-Compiler_LookForGlobalVariables_LookForVarInBody		# line 221, column 7
	cmpl	$0,-8(%ebp)
	jne	.Lab181
.Lab182:
.LN215:
	.stabn  68,0,221,.LN215-Compiler_LookForGlobalVariables_LookForVarInBody		# line 221, column 27
	leave
	ret
.Lab181:
.LN216:
	.stabn  68,0,222,.LN216-Compiler_LookForGlobalVariables_LookForVarInBody		# line 222, column 14
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab183
.Lab184:
.LN217:
	.stabn  68,0,226,.LN217-Compiler_LookForGlobalVariables_LookForVarInBody		# line 226, column 9
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	pushl	8(%ebp)
	call	Compiler_LookForGlobalVariables_LookForVarInBody_IsVarInTerm
	addl	$8, %esp
	cmpb	$0,%al
	je	.Lab186
.Lab187:
.LN218:
	.stabn  68,0,227,.LN218-Compiler_LookForGlobalVariables_LookForVarInBody		# line 227, column 23
	movl	DISPLAY_,%ebx
	movl	8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab189
	cmpl	$16,%eax
	jbe	.Lab188
.Lab189:
   	call	BoundErr_		
.Lab188:
 	addl	12(%ebx),%eax 
	movb	$1,-1(%eax) 
.Lab186:
.LN219:
	.stabn  68,0,230,.LN219-Compiler_LookForGlobalVariables_LookForVarInBody		# line 230, column 16
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab183:
.LN220:
	.stabn  68,0,224,.LN220-Compiler_LookForGlobalVariables_LookForVarInBody		# line 224, column 20
	cmpl	$0,-8(%ebp)
	jne	.Lab184
.Lab185:
.Lab177:
.LN221:
	.stabn  68,0,225,.LN221-Compiler_LookForGlobalVariables_LookForVarInBody		# line 225, column 0
.LBE22:
	leave
	ret
	.Lab176 = 8
	.stabs "subgoal:19",128,0,4,-8
	.stabs "startofbody:p19",160,0,4,12
	.stabs "varname:p4",160,0,4,8
	.stabn 192,0,0,.LBB22-Compiler_LookForGlobalVariables_LookForVarInBody
	.stabn 224,0,0,.LBE22-Compiler_LookForGlobalVariables_LookForVarInBody
	.stabs "Compiler_LookForGlobalVariables:F16",36,0,0,Compiler_LookForGlobalVariables
	.align 4
Compiler_LookForGlobalVariables:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab190, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN222:
	.stabn  68,0,265,.LN222-Compiler_LookForGlobalVariables		# line 265, column 1
.LBB23:
.LN223:
	.stabn  68,0,266,.LN223-Compiler_LookForGlobalVariables		# line 266, column 3
	movl	8(%ebp),%eax
	pushl	4(%eax)
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	pushl	28(%eax)
	call	Compiler_LookForGlobalVariables_GlobalsInHead
	addl	$8, %esp
.LN224:
	.stabn  68,0,267,.LN224-Compiler_LookForGlobalVariables		# line 267, column 3
	movl	8(%ebp),%eax
	pushl	4(%eax)
	call	Compiler_LookForGlobalVariables_GlobalsInBody
	addl	$4, %esp
.LN225:
	.stabn  68,0,268,.LN225-Compiler_LookForGlobalVariables		# line 268, column 0
.LBE23:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab190 = 4
	.stabs "glo:v40",160,0,16,12
	.stabs "cl:p17",160,0,4,8
	.stabn 192,0,0,.LBB23-Compiler_LookForGlobalVariables
	.stabn 224,0,0,.LBE23-Compiler_LookForGlobalVariables
	.stabs "Compiler_EnvironmentNeeded_NumberOfSubgoals:F4",36,0,0,Compiler_EnvironmentNeeded_NumberOfSubgoals
	.align 4
Compiler_EnvironmentNeeded_NumberOfSubgoals:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab191, %esp
.LN226:
	.stabn  68,0,180,.LN226-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 180, column 3
.LBB24:
.LN227:
	.stabn  68,0,181,.LN227-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 181, column 18
	movl	$0,-12(%ebp) 
.LN228:
	.stabn  68,0,182,.LN228-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 182, column 12
	movl	8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab192
.Lab193:
.LN229:
	.stabn  68,0,184,.LN229-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 184, column 14
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN230:
	.stabn  68,0,185,.LN230-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 185, column 7
	incl	-12(%ebp) 
.Lab192:
.LN231:
	.stabn  68,0,183,.LN231-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 183, column 18
	cmpl	$0,-8(%ebp)
	jne	.Lab193
.Lab194:
.LN232:
	.stabn  68,0,187,.LN232-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 187, column 5
	movl	-12(%ebp),%eax
	leave
	ret
.LN233:
	.stabn  68,0,188,.LN233-Compiler_EnvironmentNeeded_NumberOfSubgoals		# line 188, column 0
	call	ReturnErr_
.LBE24:
	leave
	ret
	.Lab191 = 12
	.stabs "subgoalnumber:4",128,0,4,-12
	.stabs "bodyptr:19",128,0,4,-8
	.stabs "cl:p17",160,0,4,8
	.stabn 192,0,0,.LBB24-Compiler_EnvironmentNeeded_NumberOfSubgoals
	.stabn 224,0,0,.LBE24-Compiler_EnvironmentNeeded_NumberOfSubgoals
	.stabs "Compiler_EnvironmentNeeded:F1",36,0,0,Compiler_EnvironmentNeeded
	.align 4
Compiler_EnvironmentNeeded:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab195, %esp
.LN234:
	.stabn  68,0,190,.LN234-Compiler_EnvironmentNeeded		# line 190, column 1
.LBB25:
.LN235:
	.stabn  68,0,191,.LN235-Compiler_EnvironmentNeeded		# line 191, column 3
	pushl	8(%ebp)
	call	Compiler_EnvironmentNeeded_NumberOfSubgoals
	addl	$4, %esp
	cmpl	$1,%eax
	seta	%al
	leave
	ret
.LN236:
	.stabn  68,0,192,.LN236-Compiler_EnvironmentNeeded		# line 192, column 0
	call	ReturnErr_
.LBE25:
	leave
	ret
	.Lab195 = 4
	.stabs "cl:p17",160,0,4,8
	.stabn 192,0,0,.LBB25-Compiler_EnvironmentNeeded
	.stabn 224,0,0,.LBE25-Compiler_EnvironmentNeeded
	.stabs "Compiler_EmitYAReg:F16",36,0,0,Compiler_EmitYAReg
	.align 4
Compiler_EmitYAReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab196, %esp
.LN237:
	.stabn  68,0,171,.LN237-Compiler_EmitYAReg		# line 171, column 1
.LBB26:
.LN238:
	.stabn  68,0,172,.LN238-Compiler_EmitYAReg		# line 172, column 3
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$121
	call	Compiler_Emit2Regs
	addl	$12, %esp
.LN239:
	.stabn  68,0,173,.LN239-Compiler_EmitYAReg		# line 173, column 0
.LBE26:
	leave
	ret
	.Lab196 = 4
	.stabs "areg:p4",160,0,4,12
	.stabs "yreg:p4",160,0,4,8
	.stabn 192,0,0,.LBB26-Compiler_EmitYAReg
	.stabn 224,0,0,.LBE26-Compiler_EmitYAReg
	.stabs "Compiler_EmitXAReg:F16",36,0,0,Compiler_EmitXAReg
	.align 4
Compiler_EmitXAReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab197, %esp
.LN240:
	.stabn  68,0,166,.LN240-Compiler_EmitXAReg		# line 166, column 1
.LBB27:
.LN241:
	.stabn  68,0,167,.LN241-Compiler_EmitXAReg		# line 167, column 3
	pushl	12(%ebp)
	pushl	8(%ebp)
	pushl	$120
	call	Compiler_Emit2Regs
	addl	$12, %esp
.LN242:
	.stabn  68,0,168,.LN242-Compiler_EmitXAReg		# line 168, column 0
.LBE27:
	leave
	ret
	.Lab197 = 4
	.stabs "areg:p4",160,0,4,12
	.stabs "xreg:p4",160,0,4,8
	.stabn 192,0,0,.LBB27-Compiler_EmitXAReg
	.stabn 224,0,0,.LBE27-Compiler_EmitXAReg
	.stabs "Compiler_Emit2Regs:F16",36,0,0,Compiler_Emit2Regs
	.align 4
Compiler_Emit2Regs:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab198, %esp
.LN243:
	.stabn  68,0,159,.LN243-Compiler_Emit2Regs		# line 159, column 1
.LBB28:
.LN244:
	.stabn  68,0,160,.LN244-Compiler_Emit2Regs		# line 160, column 3
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	InOut_Write
	addl	$4, %esp
.LN245:
	.stabn  68,0,160,.LN245-Compiler_Emit2Regs		# line 160, column 17
	pushl	$1
	movl	12(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab199
.Lab200:
   	call	BoundErr_		
.Lab199:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN246:
	.stabn  68,0,161,.LN246-Compiler_Emit2Regs		# line 161, column 3
	pushl	$44
	call	InOut_Write
	addl	$4, %esp
.LN247:
	.stabn  68,0,162,.LN247-Compiler_Emit2Regs		# line 162, column 3
	pushl	$97
	call	InOut_Write
	addl	$4, %esp
.LN248:
	.stabn  68,0,162,.LN248-Compiler_Emit2Regs		# line 162, column 15
	pushl	$1
	movl	16(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab201
.Lab202:
   	call	BoundErr_		
.Lab201:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN249:
	.stabn  68,0,163,.LN249-Compiler_Emit2Regs		# line 163, column 0
.LBE28:
	leave
	ret
	.Lab198 = 4
	.stabs "reg2:p4",160,0,4,16
	.stabs "reg1:p4",160,0,4,12
	.stabs "first:p2",160,0,1,8
	.stabn 192,0,0,.LBB28-Compiler_Emit2Regs
	.stabn 224,0,0,.LBE28-Compiler_Emit2Regs
	.stabs "Compiler_EmitYReg:F16",36,0,0,Compiler_EmitYReg
	.align 4
Compiler_EmitYReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab203, %esp
.LN250:
	.stabn  68,0,154,.LN250-Compiler_EmitYReg		# line 154, column 1
.LBB29:
.LN251:
	.stabn  68,0,155,.LN251-Compiler_EmitYReg		# line 155, column 3
	pushl	8(%ebp)
	pushl	$121
	call	Compiler_EmitReg
	addl	$8, %esp
.LN252:
	.stabn  68,0,156,.LN252-Compiler_EmitYReg		# line 156, column 0
.LBE29:
	leave
	ret
	.Lab203 = 4
	.stabs "reg:p4",160,0,4,8
	.stabn 192,0,0,.LBB29-Compiler_EmitYReg
	.stabn 224,0,0,.LBE29-Compiler_EmitYReg
	.stabs "Compiler_EmitXReg:F16",36,0,0,Compiler_EmitXReg
	.align 4
Compiler_EmitXReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab204, %esp
.LN253:
	.stabn  68,0,149,.LN253-Compiler_EmitXReg		# line 149, column 1
.LBB30:
.LN254:
	.stabn  68,0,150,.LN254-Compiler_EmitXReg		# line 150, column 3
	pushl	8(%ebp)
	pushl	$120
	call	Compiler_EmitReg
	addl	$8, %esp
.LN255:
	.stabn  68,0,151,.LN255-Compiler_EmitXReg		# line 151, column 0
.LBE30:
	leave
	ret
	.Lab204 = 4
	.stabs "reg:p4",160,0,4,8
	.stabn 192,0,0,.LBB30-Compiler_EmitXReg
	.stabn 224,0,0,.LBE30-Compiler_EmitXReg
	.stabs "Compiler_EmitReg:F16",36,0,0,Compiler_EmitReg
	.align 4
Compiler_EmitReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab205, %esp
.LN256:
	.stabn  68,0,144,.LN256-Compiler_EmitReg		# line 144, column 1
.LBB31:
.LN257:
	.stabn  68,0,145,.LN257-Compiler_EmitReg		# line 145, column 3
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	InOut_Write
	addl	$4, %esp
.LN258:
	.stabn  68,0,145,.LN258-Compiler_EmitReg		# line 145, column 16
	pushl	$1
	movl	12(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab206
.Lab207:
   	call	BoundErr_		
.Lab206:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN259:
	.stabn  68,0,146,.LN259-Compiler_EmitReg		# line 146, column 0
.LBE31:
	leave
	ret
	.Lab205 = 4
	.stabs "reg:p4",160,0,4,12
	.stabs "name:p2",160,0,1,8
	.stabn 192,0,0,.LBB31-Compiler_EmitReg
	.stabn 224,0,0,.LBE31-Compiler_EmitReg
	.stabs "Compiler_EmitFunctorReg:F16",36,0,0,Compiler_EmitFunctorReg
	.align 4
Compiler_EmitFunctorReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab208, %esp
.LN260:
	.stabn  68,0,136,.LN260-Compiler_EmitFunctorReg		# line 136, column 1
.LBB32:
.LN261:
	.stabn  68,0,137,.LN261-Compiler_EmitFunctorReg		# line 137, column 3
	pushl	8(%ebp)
	call	Compiler_EmitFunctorName
	addl	$4, %esp
.LN262:
	.stabn  68,0,138,.LN262-Compiler_EmitFunctorReg		# line 138, column 3
	pushl	$44
	call	InOut_Write
	addl	$4, %esp
.LN263:
	.stabn  68,0,139,.LN263-Compiler_EmitFunctorReg		# line 139, column 3
	pushl	$97
	call	InOut_Write
	addl	$4, %esp
.LN264:
	.stabn  68,0,140,.LN264-Compiler_EmitFunctorReg		# line 140, column 3
	pushl	$1
	movl	12(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab209
.Lab210:
   	call	BoundErr_		
.Lab209:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN265:
	.stabn  68,0,141,.LN265-Compiler_EmitFunctorReg		# line 141, column 0
.LBE32:
	leave
	ret
	.Lab208 = 4
	.stabs "reg:p4",160,0,4,12
	.stabs "f:p19",160,0,4,8
	.stabn 192,0,0,.LBB32-Compiler_EmitFunctorReg
	.stabn 224,0,0,.LBE32-Compiler_EmitFunctorReg
	.stabs "Compiler_EmitNumReg:F16",36,0,0,Compiler_EmitNumReg
	.align 4
Compiler_EmitNumReg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab211, %esp
.LN266:
	.stabn  68,0,128,.LN266-Compiler_EmitNumReg		# line 128, column 1
.LBB33:
.LN267:
	.stabn  68,0,129,.LN267-Compiler_EmitNumReg		# line 129, column 3
	pushl	$1
	pushl	8(%ebp)
	call	InOut_WriteInt
	addl	$8, %esp
.LN268:
	.stabn  68,0,130,.LN268-Compiler_EmitNumReg		# line 130, column 3
	pushl	$44
	call	InOut_Write
	addl	$4, %esp
.LN269:
	.stabn  68,0,131,.LN269-Compiler_EmitNumReg		# line 131, column 3
	pushl	$97
	call	InOut_Write
	addl	$4, %esp
.LN270:
	.stabn  68,0,132,.LN270-Compiler_EmitNumReg		# line 132, column 3
	pushl	$1
	movl	12(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab212
.Lab213:
   	call	BoundErr_		
.Lab212:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN271:
	.stabn  68,0,133,.LN271-Compiler_EmitNumReg		# line 133, column 0
.LBE33:
	leave
	ret
	.Lab211 = 4
	.stabs "reg:p4",160,0,4,12
	.stabs "n:p7",160,0,4,8
	.stabn 192,0,0,.LBB33-Compiler_EmitNumReg
	.stabn 224,0,0,.LBE33-Compiler_EmitNumReg
	.stabs "Compiler_EmitNumber:F16",36,0,0,Compiler_EmitNumber
	.align 4
Compiler_EmitNumber:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab214, %esp
.LN272:
	.stabn  68,0,123,.LN272-Compiler_EmitNumber		# line 123, column 1
.LBB34:
.LN273:
	.stabn  68,0,124,.LN273-Compiler_EmitNumber		# line 124, column 3
	pushl	$1
	movl	8(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab215
.Lab216:
   	call	BoundErr_		
.Lab215:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN274:
	.stabn  68,0,125,.LN274-Compiler_EmitNumber		# line 125, column 0
.LBE34:
	leave
	ret
	.Lab214 = 4
	.stabs "n:p4",160,0,4,8
	.stabn 192,0,0,.LBB34-Compiler_EmitNumber
	.stabn 224,0,0,.LBE34-Compiler_EmitNumber
	.stabs "Compiler_EmitProcedureHead:F16",36,0,0,Compiler_EmitProcedureHead
	.align 4
Compiler_EmitProcedureHead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab217, %esp
.LN275:
	.stabn  68,0,117,.LN275-Compiler_EmitProcedureHead		# line 117, column 1
.LBB35:
.LN276:
	.stabn  68,0,118,.LN276-Compiler_EmitProcedureHead		# line 118, column 3
	.data
.Lab218:
 	.ascii	"procedure \000"
	.text
	pushl	$10
	leal	.Lab218,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN277:
	.stabn  68,0,119,.LN277-Compiler_EmitProcedureHead		# line 119, column 3
	pushl	8(%ebp)
	call	Compiler_EmitFunctorName
	addl	$4, %esp
.LN278:
	.stabn  68,0,120,.LN278-Compiler_EmitProcedureHead		# line 120, column 0
.LBE35:
	leave
	ret
	.Lab217 = 4
	.stabs "h:p19",160,0,4,8
	.stabn 192,0,0,.LBB35-Compiler_EmitProcedureHead
	.stabn 224,0,0,.LBE35-Compiler_EmitProcedureHead
	.stabs "Compiler_EmitFunctorName:F16",36,0,0,Compiler_EmitFunctorName
	.align 4
Compiler_EmitFunctorName:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab219, %esp
.LN279:
	.stabn  68,0,110,.LN279-Compiler_EmitFunctorName		# line 110, column 1
.LBB36:
.LN280:
	.stabn  68,0,111,.LN280-Compiler_EmitFunctorName		# line 111, column 3
	pushl	$1
	movl	8(%ebp),%eax
	pushl	20(%eax)
	pushl	$0
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN281:
	.stabn  68,0,112,.LN281-Compiler_EmitFunctorName		# line 112, column 3
	pushl	$47
	call	InOut_Write
	addl	$4, %esp
.LN282:
	.stabn  68,0,113,.LN282-Compiler_EmitFunctorName		# line 113, column 3
	pushl	$1
	movl	8(%ebp),%eax
	pushl	24(%eax)
	call	InOut_WriteInt
	addl	$8, %esp
.LN283:
	.stabn  68,0,114,.LN283-Compiler_EmitFunctorName		# line 114, column 0
.LBE36:
	leave
	ret
	.Lab219 = 4
	.stabs "h:p19",160,0,4,8
	.stabn 192,0,0,.LBB36-Compiler_EmitFunctorName
	.stabn 224,0,0,.LBE36-Compiler_EmitFunctorName
	.stabs "Compiler_EmitWAMInstructionLabeled:F16",36,0,0,Compiler_EmitWAMInstructionLabeled
	.align 4
Compiler_EmitWAMInstructionLabeled:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab220, %esp
.LN284:
	.stabn  68,0,103,.LN284-Compiler_EmitWAMInstructionLabeled		# line 103, column 1
.LBB37:
.LN285:
	.stabn  68,0,104,.LN285-Compiler_EmitWAMInstructionLabeled		# line 104, column 3
	call	InOut_WriteLn
.LN286:
	.stabn  68,0,105,.LN286-Compiler_EmitWAMInstructionLabeled		# line 105, column 3
	call	InOut_WriteLn
.LN287:
	.stabn  68,0,106,.LN287-Compiler_EmitWAMInstructionLabeled		# line 106, column 3
	pushl	$1
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	Compiler_PrintWAMSource
	addl	$8, %esp
.LN288:
	.stabn  68,0,107,.LN288-Compiler_EmitWAMInstructionLabeled		# line 107, column 0
.LBE37:
	leave
	ret
	.Lab220 = 4
	.stabs "WAMInstruction:t41=ePutCons:24,PutStru:23,PutValueY:22,PutValueX:21,PutVarY:20,PutVarX:19,UnifyCons:18,UnifyValueY:17,UnifyValueX:16,UnifyVarY:15,UnifyVarX:14,GetCons:13,GetStru:12,GetValueY:11,GetValueX:10,GetVarY:9,GetVarX:8,Deallocate:7,Allocate:6,Proceed:5,Execute:4,Call:3,TrustMeElseFail:2,RetryMeElse:1,TryMeElse:0,;",128,0,0,0
	.stabs "w:p41",160,0,1,8
	.stabn 192,0,0,.LBB37-Compiler_EmitWAMInstructionLabeled
	.stabn 224,0,0,.LBE37-Compiler_EmitWAMInstructionLabeled
	.stabs "Compiler_EmitWAMInstruction:F16",36,0,0,Compiler_EmitWAMInstruction
	.align 4
Compiler_EmitWAMInstruction:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab221, %esp
.LN289:
	.stabn  68,0,97,.LN289-Compiler_EmitWAMInstruction		# line 97, column 1
.LBB38:
.LN290:
	.stabn  68,0,98,.LN290-Compiler_EmitWAMInstruction		# line 98, column 3
	call	InOut_WriteLn
.LN291:
	.stabn  68,0,99,.LN291-Compiler_EmitWAMInstruction		# line 99, column 3
	pushl	$0
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	Compiler_PrintWAMSource
	addl	$8, %esp
.LN292:
	.stabn  68,0,100,.LN292-Compiler_EmitWAMInstruction		# line 100, column 0
.LBE38:
	leave
	ret
	.Lab221 = 4
	.stabs "w:p41",160,0,1,8
	.stabn 192,0,0,.LBB38-Compiler_EmitWAMInstruction
	.stabn 224,0,0,.LBE38-Compiler_EmitWAMInstruction
	.stabs "Compiler_PrintWAMSource:F16",36,0,0,Compiler_PrintWAMSource
	.align 4
Compiler_PrintWAMSource:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab222, %esp
.LN293:
	.stabn  68,0,54,.LN293-Compiler_PrintWAMSource		# line 54, column 1
.LBB39:
.LN294:
	.stabn  68,0,56,.LN294-Compiler_PrintWAMSource		# line 56, column 4
	cmpb	$0,12(%ebp)
	je	.Lab225
.Lab224:
.LN295:
	.stabn  68,0,57,.LN295-Compiler_PrintWAMSource		# line 57, column 6
	call	Compiler_PrintNextClauseLabel
.LN296:
	.stabn  68,0,58,.LN296-Compiler_PrintWAMSource		# line 58, column 6
	pushl	$58
	call	InOut_Write
	addl	$4, %esp
.LN297:
	.stabn  68,0,59,.LN297-Compiler_PrintWAMSource		# line 59, column 6
	pushl	$1
	call	Compiler_Tab
	addl	$4, %esp
.LN298:
	.stabn  68,0,60,.LN298-Compiler_PrintWAMSource		# line 60, column 6
	incl	Compiler_s + 4 
	jmp	.Lab223
.Lab225:
.LN299:
	.stabn  68,0,62,.LN299-Compiler_PrintWAMSource		# line 62, column 6
	pushl	$1
	call	Compiler_Tab
	addl	$4, %esp
.Lab223:
.LN300:
	.stabn  68,0,65,.LN300-Compiler_PrintWAMSource		# line 65, column 4
	movzbl	8(%ebp),%eax
	.data
	.align 4
.Lab253:
	.long	.Lab252
	.long	.Lab251
	.long	.Lab250
	.long	.Lab249
	.long	.Lab248
	.long	.Lab247
	.long	.Lab246
	.long	.Lab245
	.long	.Lab244
	.long	.Lab243
	.long	.Lab242
	.long	.Lab241
	.long	.Lab240
	.long	.Lab239
	.long	.Lab238
	.long	.Lab237
	.long	.Lab236
	.long	.Lab235
	.long	.Lab234
	.long	.Lab233
	.long	.Lab232
	.long	.Lab231
	.long	.Lab230
	.long	.Lab229
	.long	.Lab228
	.text
	subl	$0,%eax
	jb	.Lab226
	cmpl	$24,%eax
	ja	.Lab226
	jmp	*.Lab253(,%eax,4)
.Lab252:
.LN301:
	.stabn  68,0,67,.LN301-Compiler_PrintWAMSource		# line 67, column 23
	.data
.Lab254:
 	.ascii	"try_me_else\000"
	.text
	pushl	$11
	leal	.Lab254,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN302:
	.stabn  68,0,67,.LN302-Compiler_PrintWAMSource		# line 67, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab251:
.LN303:
	.stabn  68,0,68,.LN303-Compiler_PrintWAMSource		# line 68, column 23
	.data
.Lab255:
 	.ascii	"retry_me_else\000"
	.text
	pushl	$13
	leal	.Lab255,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN304:
	.stabn  68,0,68,.LN304-Compiler_PrintWAMSource		# line 68, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab250:
.LN305:
	.stabn  68,0,69,.LN305-Compiler_PrintWAMSource		# line 69, column 23
	.data
.Lab256:
 	.ascii	"trust_me_else_fail\000"
	.text
	pushl	$18
	leal	.Lab256,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
	jmp	.Lab227
.Lab249:
.LN306:
	.stabn  68,0,70,.LN306-Compiler_PrintWAMSource		# line 70, column 23
	.data
.Lab257:
 	.ascii	"call\000"
	.text
	pushl	$4
	leal	.Lab257,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN307:
	.stabn  68,0,70,.LN307-Compiler_PrintWAMSource		# line 70, column 58
	pushl	$3
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab248:
.LN308:
	.stabn  68,0,71,.LN308-Compiler_PrintWAMSource		# line 71, column 23
	.data
.Lab258:
 	.ascii	"execute\000"
	.text
	pushl	$7
	leal	.Lab258,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN309:
	.stabn  68,0,71,.LN309-Compiler_PrintWAMSource		# line 71, column 58
	pushl	$3
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab247:
.LN310:
	.stabn  68,0,72,.LN310-Compiler_PrintWAMSource		# line 72, column 23
	.data
.Lab259:
 	.ascii	"proceed\000"
	.text
	pushl	$7
	leal	.Lab259,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
	jmp	.Lab227
.Lab246:
.LN311:
	.stabn  68,0,73,.LN311-Compiler_PrintWAMSource		# line 73, column 23
	.data
.Lab260:
 	.ascii	"allocate\000"
	.text
	pushl	$8
	leal	.Lab260,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN312:
	.stabn  68,0,73,.LN312-Compiler_PrintWAMSource		# line 73, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab245:
.LN313:
	.stabn  68,0,74,.LN313-Compiler_PrintWAMSource		# line 74, column 23
	.data
.Lab261:
 	.ascii	"deallocate\000"
	.text
	pushl	$10
	leal	.Lab261,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
	jmp	.Lab227
.Lab244:
.LN314:
	.stabn  68,0,75,.LN314-Compiler_PrintWAMSource		# line 75, column 23
	.data
.Lab262:
 	.ascii	"get_var_x\000"
	.text
	pushl	$9
	leal	.Lab262,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN315:
	.stabn  68,0,75,.LN315-Compiler_PrintWAMSource		# line 75, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab243:
.LN316:
	.stabn  68,0,76,.LN316-Compiler_PrintWAMSource		# line 76, column 23
	.data
.Lab263:
 	.ascii	"get_var_y\000"
	.text
	pushl	$9
	leal	.Lab263,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN317:
	.stabn  68,0,76,.LN317-Compiler_PrintWAMSource		# line 76, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab242:
.LN318:
	.stabn  68,0,77,.LN318-Compiler_PrintWAMSource		# line 77, column 23
	.data
.Lab264:
 	.ascii	"get_value_x\000"
	.text
	pushl	$11
	leal	.Lab264,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN319:
	.stabn  68,0,77,.LN319-Compiler_PrintWAMSource		# line 77, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab241:
.LN320:
	.stabn  68,0,78,.LN320-Compiler_PrintWAMSource		# line 78, column 23
	.data
.Lab265:
 	.ascii	"get_value_y\000"
	.text
	pushl	$11
	leal	.Lab265,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN321:
	.stabn  68,0,78,.LN321-Compiler_PrintWAMSource		# line 78, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab240:
.LN322:
	.stabn  68,0,79,.LN322-Compiler_PrintWAMSource		# line 79, column 23
	.data
.Lab266:
 	.ascii	"get_stru\000"
	.text
	pushl	$8
	leal	.Lab266,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN323:
	.stabn  68,0,79,.LN323-Compiler_PrintWAMSource		# line 79, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab239:
.LN324:
	.stabn  68,0,80,.LN324-Compiler_PrintWAMSource		# line 80, column 23
	.data
.Lab267:
 	.ascii	"get_cons\000"
	.text
	pushl	$8
	leal	.Lab267,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN325:
	.stabn  68,0,80,.LN325-Compiler_PrintWAMSource		# line 80, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab238:
.LN326:
	.stabn  68,0,81,.LN326-Compiler_PrintWAMSource		# line 81, column 23
	.data
.Lab268:
 	.ascii	"unify_var_x\000"
	.text
	pushl	$11
	leal	.Lab268,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN327:
	.stabn  68,0,81,.LN327-Compiler_PrintWAMSource		# line 81, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab237:
.LN328:
	.stabn  68,0,82,.LN328-Compiler_PrintWAMSource		# line 82, column 23
	.data
.Lab269:
 	.ascii	"unify_var_y\000"
	.text
	pushl	$11
	leal	.Lab269,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN329:
	.stabn  68,0,82,.LN329-Compiler_PrintWAMSource		# line 82, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab236:
.LN330:
	.stabn  68,0,83,.LN330-Compiler_PrintWAMSource		# line 83, column 23
	.data
.Lab270:
 	.ascii	"unify_value_x\000"
	.text
	pushl	$13
	leal	.Lab270,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN331:
	.stabn  68,0,83,.LN331-Compiler_PrintWAMSource		# line 83, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab235:
.LN332:
	.stabn  68,0,84,.LN332-Compiler_PrintWAMSource		# line 84, column 23
	.data
.Lab271:
 	.ascii	"unify_value_y\000"
	.text
	pushl	$13
	leal	.Lab271,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN333:
	.stabn  68,0,84,.LN333-Compiler_PrintWAMSource		# line 84, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab234:
.LN334:
	.stabn  68,0,85,.LN334-Compiler_PrintWAMSource		# line 85, column 23
	.data
.Lab272:
 	.ascii	"unify_cons\000"
	.text
	pushl	$10
	leal	.Lab272,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN335:
	.stabn  68,0,85,.LN335-Compiler_PrintWAMSource		# line 85, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab233:
.LN336:
	.stabn  68,0,86,.LN336-Compiler_PrintWAMSource		# line 86, column 23
	.data
.Lab273:
 	.ascii	"put_var_x\000"
	.text
	pushl	$9
	leal	.Lab273,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN337:
	.stabn  68,0,86,.LN337-Compiler_PrintWAMSource		# line 86, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab232:
.LN338:
	.stabn  68,0,87,.LN338-Compiler_PrintWAMSource		# line 87, column 23
	.data
.Lab274:
 	.ascii	"put_var_y\000"
	.text
	pushl	$9
	leal	.Lab274,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN339:
	.stabn  68,0,87,.LN339-Compiler_PrintWAMSource		# line 87, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab231:
.LN340:
	.stabn  68,0,88,.LN340-Compiler_PrintWAMSource		# line 88, column 23
	.data
.Lab275:
 	.ascii	"put_value_x\000"
	.text
	pushl	$11
	leal	.Lab275,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN341:
	.stabn  68,0,88,.LN341-Compiler_PrintWAMSource		# line 88, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab230:
.LN342:
	.stabn  68,0,89,.LN342-Compiler_PrintWAMSource		# line 89, column 23
	.data
.Lab276:
 	.ascii	"put_value_y\000"
	.text
	pushl	$11
	leal	.Lab276,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN343:
	.stabn  68,0,89,.LN343-Compiler_PrintWAMSource		# line 89, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab229:
.LN344:
	.stabn  68,0,90,.LN344-Compiler_PrintWAMSource		# line 90, column 23
	.data
.Lab277:
 	.ascii	"put_stru\000"
	.text
	pushl	$8
	leal	.Lab277,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN345:
	.stabn  68,0,90,.LN345-Compiler_PrintWAMSource		# line 90, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab228:
.LN346:
	.stabn  68,0,91,.LN346-Compiler_PrintWAMSource		# line 91, column 23
	.data
.Lab278:
 	.ascii	"put_cons\000"
	.text
	pushl	$8
	leal	.Lab278,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN347:
	.stabn  68,0,91,.LN347-Compiler_PrintWAMSource		# line 91, column 58
	pushl	$2
	call	Compiler_Tab
	addl	$4, %esp
	jmp	.Lab227
.Lab226:
	call	CaseErr_
.Lab227:
.LN348:
	.stabn  68,0,92,.LN348-Compiler_PrintWAMSource		# line 92, column 0
.LBE39:
	leave
	ret
	.Lab222 = 4
	.stabs "label:p1",160,0,1,12
	.stabs "w:p41",160,0,1,8
	.stabn 192,0,0,.LBB39-Compiler_PrintWAMSource
	.stabn 224,0,0,.LBE39-Compiler_PrintWAMSource
	.stabs "Compiler_EmitNextClauseLabel:F16",36,0,0,Compiler_EmitNextClauseLabel
	.align 4
Compiler_EmitNextClauseLabel:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab279, %esp
.LN349:
	.stabn  68,0,49,.LN349-Compiler_EmitNextClauseLabel		# line 49, column 1
.LBB40:
.LN350:
	.stabn  68,0,50,.LN350-Compiler_EmitNextClauseLabel		# line 50, column 3
	call	Compiler_PrintNextClauseLabel
.LN351:
	.stabn  68,0,51,.LN351-Compiler_EmitNextClauseLabel		# line 51, column 0
.LBE40:
	leave
	ret
	.Lab279 = 4
	.stabn 192,0,0,.LBB40-Compiler_EmitNextClauseLabel
	.stabn 224,0,0,.LBE40-Compiler_EmitNextClauseLabel
	.stabs "Compiler_PrintNextClauseLabel:F16",36,0,0,Compiler_PrintNextClauseLabel
	.align 4
Compiler_PrintNextClauseLabel:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab280, %esp
.LN352:
	.stabn  68,0,41,.LN352-Compiler_PrintNextClauseLabel		# line 41, column 1
.LBB41:
.LN353:
	.stabn  68,0,42,.LN353-Compiler_PrintNextClauseLabel		# line 42, column 4
	pushl	$76
	call	InOut_Write
	addl	$4, %esp
.LN354:
	.stabn  68,0,43,.LN354-Compiler_PrintNextClauseLabel		# line 43, column 4
	pushl	$1
	movl	Compiler_s,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab281
.Lab282:
   	call	BoundErr_		
.Lab281:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN355:
	.stabn  68,0,44,.LN355-Compiler_PrintNextClauseLabel		# line 44, column 4
	pushl	$67
	call	InOut_Write
	addl	$4, %esp
.LN356:
	.stabn  68,0,45,.LN356-Compiler_PrintNextClauseLabel		# line 45, column 4
	pushl	$1
	movl	Compiler_s + 4,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab283
.Lab284:
   	call	BoundErr_		
.Lab283:
	pushl	%eax
	call	InOut_WriteInt
	addl	$8, %esp
.LN357:
	.stabn  68,0,46,.LN357-Compiler_PrintNextClauseLabel		# line 46, column 0
.LBE41:
	leave
	ret
	.Lab280 = 4
	.stabn 192,0,0,.LBB41-Compiler_PrintNextClauseLabel
	.stabn 224,0,0,.LBE41-Compiler_PrintNextClauseLabel
	.stabs "Compiler_Tab:F16",36,0,0,Compiler_Tab
	.align 4
Compiler_Tab:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab285, %esp
.LN358:
	.stabn  68,0,36,.LN358-Compiler_Tab		# line 36, column 1
.LBB42:
.LN359:
	.stabn  68,0,37,.LN359-Compiler_Tab		# line 37, column 3
	movl	8(%ebp),%eax
	movl	%eax,-12(%ebp) 
	cmpl	$1,-12(%ebp)
	jb	.Lab286
	movl	$1,-8(%ebp) 
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp) 
.Lab287:
.LN360:
	.stabn  68,0,37,.LN360-Compiler_Tab		# line 37, column 20
	pushl	$9
	call	InOut_Write
	addl	$4, %esp
.LN361:
	.stabn  68,0,37,.LN361-Compiler_Tab		# line 37, column 3
	movl	-8(%ebp),%eax
	cmpl	-16(%ebp),%eax
	jae	.Lab286
	incl	-8(%ebp) 
	jmp	.Lab287
.Lab286:
.LN362:
	.stabn  68,0,38,.LN362-Compiler_Tab		# line 38, column 0
.LBE42:
	leave
	ret
	.Lab285 = 16
	.stabs "TAB:c=i9",128,0,0,0
	.stabs "i:4",128,0,4,-8
	.stabs "n:p4",160,0,4,8
	.stabn 192,0,0,.LBB42-Compiler_Tab
	.stabn 224,0,0,.LBE42-Compiler_Tab
	.stabs "Compiler_InitVarArray:F16",36,0,0,Compiler_InitVarArray
	.align 4
Compiler_InitVarArray:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab288, %esp
.LN363:
	.stabn  68,0,27,.LN363-Compiler_InitVarArray		# line 27, column 1
.LBB43:
.LN364:
	.stabn  68,0,28,.LN364-Compiler_InitVarArray		# line 28, column 3
	movl	$1,-8(%ebp) 
.Lab289:
.LN365:
	.stabn  68,0,29,.LN365-Compiler_InitVarArray		# line 29, column 9
	movl	-8(%ebp),%ebx
 	addl	8(%ebp),%ebx 
	movb	12(%ebp),%al
	movb	%al,-1(%ebx) 
.LN366:
	.stabn  68,0,28,.LN366-Compiler_InitVarArray		# line 28, column 3
	cmpl	$16,-8(%ebp)
	jae	.Lab290
	incl	-8(%ebp) 
	jmp	.Lab289
.Lab290:
.LN367:
	.stabn  68,0,29,.LN367-Compiler_InitVarArray		# line 29, column 0
.LBE43:
	leave
	ret
	.Lab288 = 8
	.stabs "i:34",128,0,4,-8
	.stabs "toset:p1",160,0,1,12
	.stabs "v:v40",160,0,16,8
	.stabn 192,0,0,.LBB43-Compiler_InitVarArray
	.stabn 224,0,0,.LBE43-Compiler_InitVarArray
	.stabs "Compiler:F16",36,0,0,Compiler
	.align 4
Compiler:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab291, %esp
.LN368:
	.stabn  68,0,580,.LN368-Compiler		# line 580, column 1
.LBB44:
.LN369:
	.stabn  68,0,581,.LN369-Compiler		# line 581, column 17
	movl	$0,Compiler_s 
.LN370:
	.stabn  68,0,582,.LN370-Compiler		# line 582, column 19
	movl	$0,Compiler_s + 4 
.LN371:
	.stabn  68,0,583,.LN371-Compiler		# line 583, column 0
.LBE44:
	leave
	ret
	.Lab291 = 4
	.stabs "MaxArg:c=i16",128,0,0,0
	.stabs "MaxEnv:c=i16",128,0,0,0
	.stabs "MaxVars:c=i16",128,0,0,0
	.stabn 192,0,0,.LBB44-Compiler
	.stabn 224,0,0,.LBE44-Compiler
	.stabs "Compiler_s:Gs40IsVarInit:40,192,128;IsGlobalVar:40,64,128;NextClauseNumber:4,32,32;NextProcNumber:4,0,32;;",32,0,0,0
