	.comm BuiltIn_s, 4
	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "BuiltIn.mod",100,0,0,.LBB0
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
	.globl	Compiler_ClCompiler
	.globl	OpSystem_ReadOneTerminalLine
	.globl	OpSystem_Time
	.globl	Unify_Unify
	.globl	Parser_ReadIn
	.globl	Parser_Rprec
	.globl	Parser_Lprec
	.globl	Database_DeleteClause
	.globl	Database_AddClause
	.globl	Database_FindClause
	.globl	ErrorHandler_InternalError
	.globl	ErrorHandler_ExecError
	.globl	ErrorHandler_Report
	.globl	ErrorHandler_Abort
	.globl	ErrorHandler_Crash
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
	.globl	Terms_GetBody
	.globl	Terms_Bind
	.globl	Terms_BindVars
	.globl	Terms_Deref
	.globl	Terms_ListRep
	.globl	Terms_IsAtom
	.globl	Terms_IsFunc
	.globl	Terms_MakeBros
	.globl	Terms_MakeVar
	.globl	Terms_MakeInt
	.globl	Terms_MakeFunc
	.globl	Stacks_ChangeClause
	.globl	Stacks_EnvRef
	.globl	Stacks_KillStacks
	.globl	Stacks_DisposeEnv
	.globl	Stacks_Cut
	.globl	Stacks_GetEnv
	.globl	Stacks_NewEnv
	.globl	Stacks_NewGlobal
	.globl	Stacks_TrailVar
	.globl	AtomTable_LookUp
	.globl	AtomTable_AtomChar
	.globl	AtomTable_StartAtom
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
	.globl	BuiltIn
	.globl	BuiltIn_Execute
	.globl	BuiltIn_StartExecution
	.globl	BuiltIn_CallEvalPred
	.globl	BuiltIn_CallEvalPred_BoolToResult
	.globl	BuiltIn_CallEvalPred_DoSetflg
	.globl	BuiltIn_CallEvalPred_DoFlag
	.globl	BuiltIn_CallEvalPred_DoNonsp
	.globl	BuiltIn_CallEvalPred_DoCCompile
	.globl	BuiltIn_CallEvalPred_DoReconsult
	.globl	BuiltIn_CallEvalPred_DoConsult
	.globl	BuiltIn_CallEvalPred_DoListing
	.globl	BuiltIn_CallEvalPred_DoListing_PrintClause
	.globl	BuiltIn_CallEvalPred_DoListing_PrintBody
	.globl	BuiltIn_CallEvalPred_DoListing_PrintHead
	.globl	BuiltIn_CallEvalPred_DoListing_PrintTerm
	.globl	BuiltIn_CallEvalPred_DoInferences
	.globl	BuiltIn_CallEvalPred_DoTime
	.globl	BuiltIn_CallEvalPred_DoUcode
	.globl	BuiltIn_CallEvalPred_DoUcode_UserCode
	.globl	BuiltIn_CallEvalPred_DoClose
	.globl	BuiltIn_CallEvalPred_DoSelect
	.globl	BuiltIn_CallEvalPred_DoZap
	.globl	BuiltIn_CallEvalPred_DoAdvCl
	.globl	BuiltIn_CallEvalPred_DoGetCl
	.globl	BuiltIn_CallEvalPred_DoClEnv
	.globl	BuiltIn_CallEvalPred_DoArg
	.globl	BuiltIn_CallEvalPred_DoFunctor
	.globl	BuiltIn_CallEvalPred_DoAddcl
	.globl	BuiltIn_CallEvalPred_DoName
	.globl	BuiltIn_CallEvalPred_DoOp
	.globl	BuiltIn_CallEvalPred_DoPut
	.globl	BuiltIn_CallEvalPred_DoGet0
	.globl	BuiltIn_CallEvalPred_DoWrite
	.globl	BuiltIn_CallEvalPred_DoRead
	.globl	BuiltIn_CallEvalPred_DoCall
	.globl	BuiltIn_CallEvalPred_Evaluate
	.globl	BuiltIn_CallEvalPred_GetArgs
	.globl	BuiltIn_CallEvalPred_PredError
	.globl	BuiltIn_CallEvalPred_ShowContext
	.globl	BuiltIn_IntResult
	.stabs "UnifyResult:t17=eNoMatch:1,Match:0,;",128,0,0,0
	.stabs "BuiltIn_Execute:F17",36,0,0,BuiltIn_Execute
	.align 4
BuiltIn_Execute:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,707,.LN1-BuiltIn_Execute		# line 707, column 1
.LBB1:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
.Lab2:
.LN2:
	.stabn  68,0,713,.LN2-BuiltIn_Execute		# line 713, column 6
	movl	-8(%ebp),%eax
	movzbl	24(%eax),%eax
	.data
	.align 4
.Lab11:
	.long	.Lab10
	.long	.Lab9
	.long	.Lab8
	.long	.Lab7
	.long	.Lab6
	.text
	subl	$0,%eax
	jb	.Lab4
	cmpl	$4,%eax
	ja	.Lab4
	jmp	*.Lab11(,%eax,4)
.Lab10:
.LN3:
	.stabn  68,0,717,.LN3-BuiltIn_Execute		# line 717, column 15
	cmpl	$1,OpSystem_s + 8
	jne	.Lab12
.Lab13:
.LN4:
	.stabn  68,0,717,.LN4-BuiltIn_Execute		# line 717, column 41
	movl	-8(%ebp),%eax
	pushl	8(%eax)
	movl	-8(%ebp),%eax
	pushl	(%eax)
	pushl	$0
	call	WriteOut_Trace
	addl	$12, %esp
.Lab12:
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN5:
	.stabn  68,0,719,.LN5-BuiltIn_Execute		# line 719, column 18
	movl	-12(%ebp),%eax
	movzbl	25(%eax),%eax
	.data
	.align 4
.Lab18:
	.long	.Lab17
	.long	.Lab16
	.text
	subl	$0,%eax
	jb	.Lab14
	cmpl	$1,%eax
	ja	.Lab14
	jmp	*.Lab18(,%eax,4)
.Lab17:
.LN6:
	.stabn  68,0,721,.LN6-BuiltIn_Execute		# line 721, column 35
	movl	-8(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,20(%ebx) 
.LN7:
	.stabn  68,0,722,.LN7-BuiltIn_Execute		# line 722, column 33
	movl	-8(%ebp),%eax
	movb	$1,24(%eax) 
	jmp	.Lab15
.Lab16:
.LN8:
	.stabn  68,0,725,.LN8-BuiltIn_Execute		# line 725, column 24
	movl	-12(%ebp),%eax
	pushl	28(%eax)
	movl	-12(%ebp),%eax
	movzbl	26(%eax),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	8(%eax)
	movl	-8(%ebp),%eax
	pushl	(%eax)
	call	BuiltIn_CallEvalPred
	addl	$16, %esp
	movzbl	%al,%eax
	.data
	.align 4
.Lab21:
	.long	.Lab19
	.long	.Lab19
	.text
	subl	$2147483647,%eax
	jb	.Lab19
	cmpl	$1,%eax
	ja	.Lab19
	jmp	*.Lab21(,%eax,4)
.LN9:
	.stabn  68,0,726,.LN9-BuiltIn_Execute		# line 726, column 39
	movl	-8(%ebp),%eax
	movb	$3,24(%eax) 
.LN10:
	.stabn  68,0,727,.LN10-BuiltIn_Execute		# line 727, column 39
	movl	-8(%ebp),%eax
	movb	$4,24(%eax) 
.LN11:
	.stabn  68,0,728,.LN11-BuiltIn_Execute		# line 728, column 39
	movl	-8(%ebp),%eax
	movb	$4,24(%eax) 
.LN12:
	.stabn  68,0,729,.LN12-BuiltIn_Execute		# line 729, column 33
.Lab19:
	call	CaseErr_
.Lab20:
	jmp	.Lab15
.Lab14:
	call	CaseErr_
.Lab15:
.LN13:
	.stabn  68,0,734,.LN13-BuiltIn_Execute		# line 734, column 15
	incl	BuiltIn_s 
	jmp	.Lab5
.Lab9:
.LN14:
	.stabn  68,0,740,.LN14-BuiltIn_Execute		# line 740, column 12
	movl	-8(%ebp),%eax
	pushl	8(%eax)
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	$20,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	call	Database_FindClause
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab24
.Lab23:
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN15:
	.stabn  68,0,742,.LN15-BuiltIn_Execute		# line 742, column 18
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	.data
	.align 4
.Lab25:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab25
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	20(%eax)
	movl	-8(%ebp),%eax
	pushl	8(%eax)
	movl	-8(%ebp),%eax
	pushl	(%eax)
	movl	$4,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	call	Stacks_NewEnv
	addl	$20, %esp
.LN16:
	.stabn  68,0,743,.LN16-BuiltIn_Execute		# line 743, column 18
	movl	-16(%ebp),%eax
	cmpl	$0,24(%eax)
	je	.Lab26
.Lab27:
.LN17:
	.stabn  68,0,743,.LN17-BuiltIn_Execute		# line 743, column 51
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,Stacks_s + 4 
.Lab26:
.LN18:
	.stabn  68,0,744,.LN18-BuiltIn_Execute		# line 744, column 18
.Lab29:
.LN19:
	.stabn  68,0,745,.LN19-BuiltIn_Execute		# line 745, column 27
	movl	-8(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx) 
.LN20:
	.stabn  68,0,746,.LN20-BuiltIn_Execute		# line 746, column 29
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,8(%ebx) 
.LN21:
	.stabn  68,0,747,.LN21-BuiltIn_Execute		# line 747, column 27
	movl	-8(%ebp),%eax
	movb	$2,24(%eax) 
	jmp	.Lab28
.Lab30:
.LN22:
	.stabn  68,0,750,.LN22-BuiltIn_Execute		# line 750, column 27
	movl	-8(%ebp),%eax
	movb	$4,24(%eax) 
.Lab28:
	jmp	.Lab22
.Lab24:
.LN23:
	.stabn  68,0,754,.LN23-BuiltIn_Execute		# line 754, column 21
	movl	-8(%ebp),%eax
	movb	$4,24(%eax) 
.Lab22:
	jmp	.Lab5
.Lab8:
.LN24:
	.stabn  68,0,761,.LN24-BuiltIn_Execute		# line 761, column 10
	movl	-8(%ebp),%eax
	cmpl	$0,(%eax)
	jne	.Lab33
.Lab32:
.LN25:
	.stabn  68,0,762,.LN25-BuiltIn_Execute		# line 762, column 18
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%ebx) 
.LN26:
	.stabn  68,0,763,.LN26-BuiltIn_Execute		# line 763, column 13
	movl	$20,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	movl	$8,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	movl	$0,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	Stacks_GetEnv
	addl	$16, %esp
.LN27:
	.stabn  68,0,764,.LN27-BuiltIn_Execute		# line 764, column 13
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	Stacks_s + 4,%eax
	jbe	.Lab34
.Lab35:
.LN28:
	.stabn  68,0,764,.LN28-BuiltIn_Execute		# line 764, column 40
	call	Stacks_DisposeEnv
.Lab34:
.LN29:
	.stabn  68,0,765,.LN29-BuiltIn_Execute		# line 765, column 13
	cmpl	$1,OpSystem_s + 8
	jne	.Lab36
.Lab37:
.LN30:
	.stabn  68,0,765,.LN30-BuiltIn_Execute		# line 765, column 39
	movl	-8(%ebp),%eax
	pushl	8(%eax)
	movl	-8(%ebp),%eax
	pushl	(%eax)
	pushl	$1
	call	WriteOut_Trace
	addl	$12, %esp
.Lab36:
.LN31:
	.stabn  68,0,766,.LN31-BuiltIn_Execute		# line 766, column 19
	movl	-8(%ebp),%eax
	movb	$3,24(%eax) 
	jmp	.Lab31
.Lab33:
.LN32:
	.stabn  68,0,769,.LN32-BuiltIn_Execute		# line 769, column 19
	movl	-8(%ebp),%eax
	movb	$0,24(%eax) 
.Lab31:
	jmp	.Lab5
.Lab7:
.LN33:
	.stabn  68,0,774,.LN33-BuiltIn_Execute		# line 774, column 10
	movl	-8(%ebp),%eax
	movl	8(%eax),%ebx
	movl	-8(%ebp),%eax
	cmpl	16(%eax),%ebx
	jbe	.Lab40
.Lab39:
.LN34:
	.stabn  68,0,775,.LN34-BuiltIn_Execute		# line 775, column 19
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,(%ebx) 
.LN35:
	.stabn  68,0,776,.LN35-BuiltIn_Execute		# line 776, column 19
	movl	-8(%ebp),%eax
	movb	$2,24(%eax) 
	jmp	.Lab38
.Lab40:
.LN36:
	.stabn  68,0,779,.LN36-BuiltIn_Execute		# line 779, column 13
.Lab38:
	jmp	.Lab5
.Lab6:
.LN37:
	.stabn  68,0,785,.LN37-BuiltIn_Execute		# line 785, column 10
	movl	Stacks_s + 4,%ebx
	movl	-8(%ebp),%eax
	cmpl	12(%eax),%ebx
	jbe	.Lab43
.Lab42:
.LN38:
	.stabn  68,0,786,.LN38-BuiltIn_Execute		# line 786, column 13
	movl	$20,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	movl	$8,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	movl	$0,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	pushl	Stacks_s + 4
	call	Stacks_GetEnv
	addl	$16, %esp
.LN39:
	.stabn  68,0,787,.LN39-BuiltIn_Execute		# line 787, column 13
	movl	Stacks_s + 4,%eax
 	subl	$1,%eax 
	cmpl	$1000,%eax
	jbe	.Lab44
.Lab45:
   	call	BoundErr_		
.Lab44:
	pushl	%eax
	call	Stacks_KillStacks
	addl	$4, %esp
.LN40:
	.stabn  68,0,788,.LN40-BuiltIn_Execute		# line 788, column 21
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,20(%ebx) 
.LN41:
	.stabn  68,0,789,.LN41-BuiltIn_Execute		# line 789, column 19
	movl	-8(%ebp),%eax
	movb	$1,24(%eax) 
	jmp	.Lab41
.Lab43:
.LN42:
	.stabn  68,0,792,.LN42-BuiltIn_Execute		# line 792, column 13
.Lab41:
	jmp	.Lab5
.Lab4:
	call	CaseErr_
.Lab5:
	jmp	.Lab2
.Lab3:
.LN43:
	.stabn  68,0,793,.LN43-BuiltIn_Execute		# line 793, column 0
	call	ReturnErr_
.LBE1:
	leave
	ret
	.Lab1 = 16
	.stabs "InterpreterState:t19=efailQ:4,returnQ:3,bodyQ:2,procQ:1,callQ:0,;",128,0,0,0
	.stabs "evalarity:t27=4",128,0,0,0
	.stabs "evalpred:t28=eccompileR:41,reconsultR:40,consultR:39,listingR:38,showvarR:37,showtermR:36,inferencesR:35,timeR:34,ucodeR:33,closeR:32,tellingR:31,tellR:30,seeingR:29,seeR:28,argR:27,functorR:26,nonspR:25,zapR:24,advclR:23,getclR:22,clenvR:21,addclR:20,ltR:19,isR:18,setflgR:17,flagR:16,varR:15,integerR:14,atomR:13,haltR:12,abortR:11,opR:10,nameR:9,eofR:8,eolnR:7,nlR:6,putR:5,get0R:4,writeR:3,readR:2,cutR:1,callR:0,;",128,0,0,0
	.stabs "predtype:t29=eevalP:1,normP:0,;",128,0,0,0
	.stabs "prec:t30=4",128,0,0,0
	.stabs "optype:t31=enonO:7,yfxO:6,xfyO:5,xfxO:4,yfO:3,xfO:2,fyO:1,fxO:0,;",128,0,0,0
	.stabs "strindex:t33=4",128,0,0,0
	.stabs "astring:t32=s8length:4,32,32;index:33,0,32;;",128,0,0,0
	.stabs "atomentry:t26=s32arity:27,224,32;routine:28,208,8;proc:20,224,32;pclass:29,200,8;sys:1,192,8;oprec:30,160,32;oclass:31,128,8;chain:25,96,32;atomno:7,64,32;ident:32,0,64;;",128,0,0,0
	.stabs "atom:t25=*26",128,0,0,0
	.stabs "nodetag:t34=eskelT:4,anonT:3,varT:2,intT:1,funcT:0,;",128,0,0,0
	.stabs "nodeinfo:t24=s16offset:7,32,32;dummych:2,8,8;val:22,32,32;ival:7,32,32;son:22,96,32;arity:7,64,32;name:25,32,32;tag:34,0,8;;",128,0,0,0
	.stabs "fieldtype:t35=eheapF:2,localF:1,globalF:0,;",128,0,0,0
	.stabs "node:t23=s32info:24,128,128;scope:7,96,32;field:35,64,8;chain:22,32,32;brother:22,0,32;;",128,0,0,0
	.stabs "term:t22=*23",128,0,0,0
	.stabs "clause:t21=s36heapchain:22,256,32;backchain:20,224,32;chain:20,192,32;keyval:7,160,32;refcount:7,128,32;denied:1,96,8;nvars:7,64,32;body:22,32,32;head:22,0,32;;",128,0,0,0
	.stabs "clptr:t20=*21",128,0,0,0
	.stabs "env:t36=4",128,0,0,0
	.stabs "ProcessDescriptor:t18=s25state:19,192,8;clausep:20,160,32;startenv:36,128,32;baseenv:36,96,32;callenv:36,64,32;envp:36,32,32;callp:22,0,32;;",128,0,0,0
	.stabs "d:v18",160,0,25,8
	.stabn 192,0,0,.LBB1-BuiltIn_Execute
	.stabn 224,0,0,.LBE1-BuiltIn_Execute
	.stabs "BuiltIn_StartExecution:F17",36,0,0,BuiltIn_StartExecution
	.align 4
BuiltIn_StartExecution:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab46, %esp
.LN44:
	.stabn  68,0,695,.LN44-BuiltIn_StartExecution		# line 695, column 1
.LBB2:
	movl	16(%ebp),%eax
	movl	%eax,-8(%ebp) 
.LN45:
	.stabn  68,0,697,.LN45-BuiltIn_StartExecution		# line 697, column 13
	movl	-8(%ebp),%eax
	pushl	%eax
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	popl	%ebx
	movl	%eax,(%ebx) 
.LN46:
	.stabn  68,0,698,.LN46-BuiltIn_StartExecution		# line 698, column 13
	movl	-8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,8(%ebx) 
.LN47:
	.stabn  68,0,699,.LN47-BuiltIn_StartExecution		# line 699, column 13
	movl	-8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,16(%ebx) 
.LN48:
	.stabn  68,0,700,.LN48-BuiltIn_StartExecution		# line 700, column 13
	movl	-8(%ebp),%ebx
	movl	Stacks_s,%eax
	movl	%eax,12(%ebx) 
.LN49:
	.stabn  68,0,701,.LN49-BuiltIn_StartExecution		# line 701, column 13
	movl	-8(%ebp),%eax
	movb	$0,24(%eax) 
.LN50:
	.stabn  68,0,703,.LN50-BuiltIn_StartExecution		# line 703, column 3
	pushl	16(%ebp)
	call	BuiltIn_Execute
	addl	$4, %esp
	leave
	ret
.LN51:
	.stabn  68,0,704,.LN51-BuiltIn_StartExecution		# line 704, column 0
	call	ReturnErr_
.LBE2:
	leave
	ret
	.Lab46 = 8
	.stabs "d:v18",160,0,25,16
	.stabs "goalenv:p36",160,0,4,12
	.stabs "goalp:p22",160,0,4,8
	.stabn 192,0,0,.LBB2-BuiltIn_StartExecution
	.stabn 224,0,0,.LBE2-BuiltIn_StartExecution
	.stabs "BuiltIn_CallEvalPred_BoolToResult:F17",36,0,0,BuiltIn_CallEvalPred_BoolToResult
	.align 4
BuiltIn_CallEvalPred_BoolToResult:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab47, %esp
.LN52:
	.stabn  68,0,626,.LN52-BuiltIn_CallEvalPred_BoolToResult		# line 626, column 1
.LBB3:
.LN53:
	.stabn  68,0,627,.LN53-BuiltIn_CallEvalPred_BoolToResult		# line 627, column 3
	cmpb	$0,8(%ebp)
	je	.Lab50
.Lab49:
.LN54:
	.stabn  68,0,628,.LN54-BuiltIn_CallEvalPred_BoolToResult		# line 628, column 5
	jmp	.Lab48
.Lab50:
.LN55:
	.stabn  68,0,630,.LN55-BuiltIn_CallEvalPred_BoolToResult		# line 630, column 5
.Lab48:
.LN56:
	.stabn  68,0,631,.LN56-BuiltIn_CallEvalPred_BoolToResult		# line 631, column 0
	call	ReturnErr_
.LBE3:
	leave
	ret
	.Lab47 = 4
	.stabs "b:p1",160,0,1,8
	.stabn 192,0,0,.LBB3-BuiltIn_CallEvalPred_BoolToResult
	.stabn 224,0,0,.LBE3-BuiltIn_CallEvalPred_BoolToResult
	.stabs "BuiltIn_CallEvalPred_DoSetflg:F16",36,0,0,BuiltIn_CallEvalPred_DoSetflg
	.align 4
BuiltIn_CallEvalPred_DoSetflg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab51, %esp
.LN57:
	.stabn  68,0,619,.LN57-BuiltIn_CallEvalPred_DoSetflg		# line 619, column 1
.LBB4:
.LN58:
	.stabn  68,0,620,.LN58-BuiltIn_CallEvalPred_DoSetflg		# line 620, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$1,16(%eax)
	jne	.Lab53
.Lab54:
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab52
.Lab53:
.LN59:
	.stabn  68,0,621,.LN59-BuiltIn_CallEvalPred_DoSetflg		# line 621, column 42
	pushl	$10
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN60:
	.stabn  68,0,621,.LN60-BuiltIn_CallEvalPred_DoSetflg		# line 621, column 61
	leave
	ret
.Lab52:
.LN61:
	.stabn  68,0,622,.LN61-BuiltIn_CallEvalPred_DoSetflg		# line 622, column 31
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%ebx
	.data
	.align 4
.Lab55:
	.long	1,10
	.text
	boundl	%ebx,.Lab55
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,OpSystem_s - 4(,%ebx,4) 
.LN62:
	.stabn  68,0,623,.LN62-BuiltIn_CallEvalPred_DoSetflg		# line 623, column 0
.LBE4:
	leave
	ret
	.Lab51 = 4
	.stabn 192,0,0,.LBB4-BuiltIn_CallEvalPred_DoSetflg
	.stabn 224,0,0,.LBE4-BuiltIn_CallEvalPred_DoSetflg
	.stabs "BuiltIn_CallEvalPred_DoFlag:F16",36,0,0,BuiltIn_CallEvalPred_DoFlag
	.align 4
BuiltIn_CallEvalPred_DoFlag:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab56, %esp
.LN63:
	.stabn  68,0,611,.LN63-BuiltIn_CallEvalPred_DoFlag		# line 611, column 1
.LBB5:
.LN64:
	.stabn  68,0,612,.LN64-BuiltIn_CallEvalPred_DoFlag		# line 612, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab57
.Lab58:
.LN65:
	.stabn  68,0,612,.LN65-BuiltIn_CallEvalPred_DoFlag		# line 612, column 40
	pushl	$9
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN66:
	.stabn  68,0,612,.LN66-BuiltIn_CallEvalPred_DoFlag		# line 612, column 58
	leave
	ret
.Lab57:
.LN67:
	.stabn  68,0,613,.LN67-BuiltIn_CallEvalPred_DoFlag		# line 613, column 11
	movl	DISPLAY_,%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	.data
	.align 4
.Lab59:
	.long	1,10
	.text
	boundl	%eax,.Lab59
	pushl	OpSystem_s - 4(,%eax,4)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	BuiltIn_IntResult
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.LN68:
	.stabn  68,0,614,.LN68-BuiltIn_CallEvalPred_DoFlag		# line 614, column 0
.LBE5:
	leave
	ret
	.Lab56 = 4
	.stabn 192,0,0,.LBB5-BuiltIn_CallEvalPred_DoFlag
	.stabn 224,0,0,.LBE5-BuiltIn_CallEvalPred_DoFlag
	.stabs "BuiltIn_CallEvalPred_DoNonsp:F16",36,0,0,BuiltIn_CallEvalPred_DoNonsp
	.align 4
BuiltIn_CallEvalPred_DoNonsp:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab60, %esp
.LN69:
	.stabn  68,0,600,.LN69-BuiltIn_CallEvalPred_DoNonsp		# line 600, column 1
.LBB6:
.LN70:
	.stabn  68,0,601,.LN70-BuiltIn_CallEvalPred_DoNonsp		# line 601, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab61
.Lab62:
.LN71:
	.stabn  68,0,601,.LN71-BuiltIn_CallEvalPred_DoNonsp		# line 601, column 40
	pushl	$12
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN72:
	.stabn  68,0,601,.LN72-BuiltIn_CallEvalPred_DoNonsp		# line 601, column 59
	leave
	ret
.Lab61:
.LN73:
	.stabn  68,0,602,.LN73-BuiltIn_CallEvalPred_DoNonsp		# line 602, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	.data
	.align 4
.Lab66:
	.long	0,255
	.text
	boundl	%eax,.Lab66
	cmpb	$16,PFiles_s + 16(%eax)
	je	.Lab65
.Lab64:
.LN74:
	.stabn  68,0,603,.LN74-BuiltIn_CallEvalPred_DoNonsp		# line 603, column 13
	jmp	.Lab63
.Lab65:
.LN75:
	.stabn  68,0,605,.LN75-BuiltIn_CallEvalPred_DoNonsp		# line 605, column 13
.Lab63:
.LN76:
	.stabn  68,0,606,.LN76-BuiltIn_CallEvalPred_DoNonsp		# line 606, column 0
.LBE6:
	leave
	ret
	.Lab60 = 4
	.stabn 192,0,0,.LBB6-BuiltIn_CallEvalPred_DoNonsp
	.stabn 224,0,0,.LBE6-BuiltIn_CallEvalPred_DoNonsp
	.stabs "BuiltIn_CallEvalPred_DoCCompile:F16",36,0,0,BuiltIn_CallEvalPred_DoCCompile
	.align 4
BuiltIn_CallEvalPred_DoCCompile:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab67, %esp
.LN77:
	.stabn  68,0,589,.LN77-BuiltIn_CallEvalPred_DoCCompile		# line 589, column 1
.LBB7:
.LN78:
	.stabn  68,0,590,.LN78-BuiltIn_CallEvalPred_DoCCompile		# line 590, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$0,16(%eax)
	je	.Lab68
.Lab69:
.LN79:
	.stabn  68,0,590,.LN79-BuiltIn_CallEvalPred_DoCCompile		# line 590, column 38
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN80:
	.stabn  68,0,590,.LN80-BuiltIn_CallEvalPred_DoCCompile		# line 590, column 56
	leave
	ret
.Lab68:
.LN81:
	.stabn  68,0,591,.LN81-BuiltIn_CallEvalPred_DoCCompile		# line 591, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	cmpb	$0,25(%eax)
	je	.Lab72
.Lab71:
.LN82:
	.stabn  68,0,592,.LN82-BuiltIn_CallEvalPred_DoCCompile		# line 592, column 7
	.data
.Lab73:
 	.ascii	"... sorry built-in predicate.\000"
	.text
	pushl	$29
	leal	.Lab73,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
	jmp	.Lab70
.Lab72:
.LN83:
	.stabn  68,0,594,.LN83-BuiltIn_CallEvalPred_DoCCompile		# line 594, column 7
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	pushl	28(%eax)
	call	Compiler_ClCompiler
	addl	$4, %esp
.Lab70:
.LN84:
	.stabn  68,0,595,.LN84-BuiltIn_CallEvalPred_DoCCompile		# line 595, column 0
.LBE7:
	leave
	ret
	.Lab67 = 4
	.stabn 192,0,0,.LBB7-BuiltIn_CallEvalPred_DoCCompile
	.stabn 224,0,0,.LBE7-BuiltIn_CallEvalPred_DoCCompile
	.stabs "BuiltIn_CallEvalPred_DoReconsult:F16",36,0,0,BuiltIn_CallEvalPred_DoReconsult
	.align 4
BuiltIn_CallEvalPred_DoReconsult:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab74, %esp
.LN85:
	.stabn  68,0,585,.LN85-BuiltIn_CallEvalPred_DoReconsult		# line 585, column 1
.LBB8:
.LN86:
	.stabn  68,0,586,.LN86-BuiltIn_CallEvalPred_DoReconsult		# line 586, column 0
.LBE8:
	leave
	ret
	.Lab74 = 4
	.stabn 192,0,0,.LBB8-BuiltIn_CallEvalPred_DoReconsult
	.stabn 224,0,0,.LBE8-BuiltIn_CallEvalPred_DoReconsult
	.stabs "BuiltIn_CallEvalPred_DoConsult:F16",36,0,0,BuiltIn_CallEvalPred_DoConsult
	.align 4
BuiltIn_CallEvalPred_DoConsult:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab75, %esp
.LN87:
	.stabn  68,0,552,.LN87-BuiltIn_CallEvalPred_DoConsult		# line 552, column 1
.LBB9:
.LN88:
	.stabn  68,0,553,.LN88-BuiltIn_CallEvalPred_DoConsult		# line 553, column 13
	call	OpSystem_Time
	movl	%eax,-48(%ebp) 
.LN89:
	.stabn  68,0,555,.LN89-BuiltIn_CallEvalPred_DoConsult		# line 555, column 4
	pushl	$0
	call	BuiltIn_CallEvalPred_DoSelect
	addl	$4, %esp
.LN90:
	.stabn  68,0,556,.LN90-BuiltIn_CallEvalPred_DoConsult		# line 556, column 4
.Lab77:
.LN91:
	.stabn  68,0,556,.LN91-BuiltIn_CallEvalPred_DoConsult		# line 556, column 22
	leave
	ret
.Lab76:
	jmp	.Lab78
.Lab79:
.LN92:
	.stabn  68,0,559,.LN92-BuiltIn_CallEvalPred_DoConsult		# line 559, column 19
	movl	$0,Stacks_s + 4 
.LN93:
	.stabn  68,0,560,.LN93-BuiltIn_CallEvalPred_DoConsult		# line 560, column 7
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	leal	-16(%ebp),%eax
	pushl	%eax
	call	Stacks_NewEnv
	addl	$20, %esp
.LN94:
	.stabn  68,0,561,.LN94-BuiltIn_CallEvalPred_DoConsult		# line 561, column 7
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Parser_ReadIn
	addl	$8, %esp
	cmpb	$0,%al
	je	.Lab81
.Lab82:
.LN95:
	.stabn  68,0,562,.LN95-BuiltIn_CallEvalPred_DoConsult		# line 562, column 10
	pushl	$1
	pushl	AtomTable_s + 5028
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab85
.Lab84:
.LN96:
	.stabn  68,0,563,.LN96-BuiltIn_CallEvalPred_DoConsult		# line 563, column 25
	leal	-44(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	BuiltIn_StartExecution
	addl	$12, %esp
	movb	%al,-18(%ebp) 
	jmp	.Lab83
.Lab85:
.LN97:
	.stabn  68,0,565,.LN97-BuiltIn_CallEvalPred_DoConsult		# line 565, column 26
	pushl	$0
	pushl	$0
	pushl	-8(%ebp)
	call	Database_AddClause
	addl	$12, %esp
	movb	%al,-17(%ebp) 
.Lab83:
.Lab81:
.LN98:
	.stabn  68,0,568,.LN98-BuiltIn_CallEvalPred_DoConsult		# line 568, column 7
	pushl	$0
	call	Stacks_KillStacks
	addl	$4, %esp
.Lab78:
.LN99:
	.stabn  68,0,558,.LN99-BuiltIn_CallEvalPred_DoConsult		# line 558, column 10
	call	PFiles_FileEnded
	cmpb	$0,%al
	je	.Lab79
.Lab80:
.LN100:
	.stabn  68,0,570,.LN100-BuiltIn_CallEvalPred_DoConsult		# line 570, column 4
	call	BuiltIn_CallEvalPred_DoClose
.LN101:
	.stabn  68,0,572,.LN101-BuiltIn_CallEvalPred_DoConsult		# line 572, column 15
.LN102:
	.stabn  68,0,574,.LN102-BuiltIn_CallEvalPred_DoConsult		# line 574, column 4
	call	InOut_WriteLn
.LN103:
	.stabn  68,0,575,.LN103-BuiltIn_CallEvalPred_DoConsult		# line 575, column 4
	.data
.Lab86:
 	.ascii	"file consulted in\000"
	.text
	pushl	$17
	leal	.Lab86,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN104:
	.stabn  68,0,576,.LN104-BuiltIn_CallEvalPred_DoConsult		# line 576, column 4
	pushl	$4
	movl	-52(%ebp),%eax
	movl	$1000,%ebx
	xorl	%edx,%edx
	divl	%ebx
	pushl	%eax
	call	InOut_WriteCard
	addl	$8, %esp
.LN105:
	.stabn  68,0,577,.LN105-BuiltIn_CallEvalPred_DoConsult		# line 577, column 4
	pushl	$46
	call	InOut_Write
	addl	$4, %esp
.LN106:
	.stabn  68,0,578,.LN106-BuiltIn_CallEvalPred_DoConsult		# line 578, column 4
	pushl	$2
	movl	-52(%ebp),%eax
	movl	$1000,%ebx
	xorl	%edx,%edx
	divl	%ebx
	movl	$10,%ebx
 	movl	%edx, %eax
	xorl	%edx,%edx
	divl	%ebx
	pushl	%eax
	call	InOut_WriteCard
	addl	$8, %esp
.LN107:
	.stabn  68,0,579,.LN107-BuiltIn_CallEvalPred_DoConsult		# line 579, column 4
	.data
.Lab87:
 	.ascii	" sec.\000"
	.text
	pushl	$5
	leal	.Lab87,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN108:
	.stabn  68,0,580,.LN108-BuiltIn_CallEvalPred_DoConsult		# line 580, column 4
	call	InOut_WriteLn
.LN109:
	.stabn  68,0,581,.LN109-BuiltIn_CallEvalPred_DoConsult		# line 581, column 0
.LBE9:
	leave
	ret
	.Lab75 = 52
	.stabs "ElapsedTime:4",128,0,4,-52
	.stabs "StartTime:4",128,0,4,-48
	.stabs "d:18",128,0,25,-44
	.stabs "dummyresult:17",128,0,1,-18
	.stabs "dummysuccess:1",128,0,1,-17
	.stabs "e:36",128,0,4,-16
	.stabs "v:22",128,0,4,-12
	.stabs "x:22",128,0,4,-8
	.stabn 192,0,0,.LBB9-BuiltIn_CallEvalPred_DoConsult
	.stabn 224,0,0,.LBE9-BuiltIn_CallEvalPred_DoConsult
	.stabs "BuiltIn_CallEvalPred_DoListing_PrintClause:F16",36,0,0,BuiltIn_CallEvalPred_DoListing_PrintClause
	.align 4
BuiltIn_CallEvalPred_DoListing_PrintClause:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab88, %esp
.LN110:
	.stabn  68,0,516,.LN110-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 516, column 3
.LBB10:
.LN111:
	.stabn  68,0,517,.LN111-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 517, column 5
	call	InOut_WriteLn
.LN112:
	.stabn  68,0,518,.LN112-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 518, column 5
	movl	8(%ebp),%eax
	pushl	(%eax)
	call	BuiltIn_CallEvalPred_DoListing_PrintHead
	addl	$4, %esp
.LN113:
	.stabn  68,0,519,.LN113-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 519, column 5
	movl	8(%ebp),%eax
	cmpl	$0,4(%eax)
	je	.Lab89
.Lab90:
.LN114:
	.stabn  68,0,520,.LN114-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 520, column 7
	.data
.Lab91:
 	.ascii	" :-\000"
	.text
	pushl	$3
	leal	.Lab91,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN115:
	.stabn  68,0,521,.LN115-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 521, column 7
	call	InOut_WriteLn
.LN116:
	.stabn  68,0,522,.LN116-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 522, column 7
	movl	8(%ebp),%eax
	pushl	4(%eax)
	call	BuiltIn_CallEvalPred_DoListing_PrintBody
	addl	$4, %esp
.Lab89:
.LN117:
	.stabn  68,0,524,.LN117-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 524, column 5
	pushl	$46
	call	InOut_Write
	addl	$4, %esp
.LN118:
	.stabn  68,0,525,.LN118-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 525, column 5
	call	InOut_WriteLn
.LN119:
	.stabn  68,0,526,.LN119-BuiltIn_CallEvalPred_DoListing_PrintClause		# line 526, column 0
.LBE10:
	leave
	ret
	.Lab88 = 4
	.stabs "cl:p20",160,0,4,8
	.stabn 192,0,0,.LBB10-BuiltIn_CallEvalPred_DoListing_PrintClause
	.stabn 224,0,0,.LBE10-BuiltIn_CallEvalPred_DoListing_PrintClause
	.stabs "BuiltIn_CallEvalPred_DoListing_PrintBody:F16",36,0,0,BuiltIn_CallEvalPred_DoListing_PrintBody
	.align 4
BuiltIn_CallEvalPred_DoListing_PrintBody:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab92, %esp
.LN120:
	.stabn  68,0,503,.LN120-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 503, column 3
.LBB11:
	jmp	.Lab93
.Lab94:
.LN121:
	.stabn  68,0,505,.LN121-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 505, column 7
	.data
.Lab96:
 	.ascii	"    \000"
	.text
	pushl	$4
	leal	.Lab96,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN122:
	.stabn  68,0,506,.LN122-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 506, column 7
	pushl	8(%ebp)
	call	BuiltIn_CallEvalPred_DoListing_PrintHead
	addl	$4, %esp
.LN123:
	.stabn  68,0,507,.LN123-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 507, column 8
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,8(%ebp) 
.LN124:
	.stabn  68,0,508,.LN124-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 508, column 7
	cmpl	$0,8(%ebp)
	je	.Lab97
.Lab98:
.LN125:
	.stabn  68,0,509,.LN125-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 509, column 10
	pushl	$44
	call	InOut_Write
	addl	$4, %esp
.LN126:
	.stabn  68,0,510,.LN126-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 510, column 10
	call	InOut_WriteLn
.Lab97:
.Lab93:
.LN127:
	.stabn  68,0,504,.LN127-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 504, column 12
	cmpl	$0,8(%ebp)
	jne	.Lab94
.Lab95:
.LN128:
	.stabn  68,0,505,.LN128-BuiltIn_CallEvalPred_DoListing_PrintBody		# line 505, column 0
.LBE11:
	leave
	ret
	.Lab92 = 4
	.stabs "b:p22",160,0,4,8
	.stabn 192,0,0,.LBB11-BuiltIn_CallEvalPred_DoListing_PrintBody
	.stabn 224,0,0,.LBE11-BuiltIn_CallEvalPred_DoListing_PrintBody
	.stabs "BuiltIn_CallEvalPred_DoListing_PrintHead:F16",36,0,0,BuiltIn_CallEvalPred_DoListing_PrintHead
	.align 4
BuiltIn_CallEvalPred_DoListing_PrintHead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab99, %esp
.LN129:
	.stabn  68,0,488,.LN129-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 488, column 3
.LBB12:
.LN130:
	.stabn  68,0,489,.LN130-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 489, column 5
	pushl	$1
	movl	8(%ebp),%eax
	pushl	20(%eax)
	pushl	$0
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN131:
	.stabn  68,0,490,.LN131-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 490, column 5
	movl	8(%ebp),%eax
	cmpl	$0,24(%eax)
	jle	.Lab100
.Lab101:
.LN132:
	.stabn  68,0,491,.LN132-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 491, column 7
	pushl	$40
	call	InOut_Write
	addl	$4, %esp
.LN133:
	.stabn  68,0,492,.LN133-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 492, column 10
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab102
.Lab103:
.LN134:
	.stabn  68,0,494,.LN134-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 494, column 9
	pushl	-8(%ebp)
	call	BuiltIn_CallEvalPred_DoListing_PrintTerm
	addl	$4, %esp
.LN135:
	.stabn  68,0,495,.LN135-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 495, column 12
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN136:
	.stabn  68,0,496,.LN136-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 496, column 9
	cmpl	$0,-8(%ebp)
	je	.Lab105
.Lab106:
.LN137:
	.stabn  68,0,496,.LN137-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 496, column 25
	pushl	$44
	call	InOut_Write
	addl	$4, %esp
.Lab105:
.Lab102:
.LN138:
	.stabn  68,0,493,.LN138-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 493, column 16
	cmpl	$0,-8(%ebp)
	jne	.Lab103
.Lab104:
.LN139:
	.stabn  68,0,498,.LN139-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 498, column 7
	pushl	$41
	call	InOut_Write
	addl	$4, %esp
.Lab100:
.LN140:
	.stabn  68,0,499,.LN140-BuiltIn_CallEvalPred_DoListing_PrintHead		# line 499, column 0
.LBE12:
	leave
	ret
	.Lab99 = 8
	.stabs "arg:22",128,0,4,-8
	.stabs "h:p22",160,0,4,8
	.stabn 192,0,0,.LBB12-BuiltIn_CallEvalPred_DoListing_PrintHead
	.stabn 224,0,0,.LBE12-BuiltIn_CallEvalPred_DoListing_PrintHead
	.stabs "BuiltIn_CallEvalPred_DoListing_PrintTerm:F16",36,0,0,BuiltIn_CallEvalPred_DoListing_PrintTerm
	.align 4
BuiltIn_CallEvalPred_DoListing_PrintTerm:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab107, %esp
.LN141:
	.stabn  68,0,474,.LN141-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 474, column 3
.LBB13:
	movl	$16,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-8(%ebp) 
.LN142:
	.stabn  68,0,476,.LN142-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 476, column 7
	movl	-8(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab115:
	.long	.Lab114
	.long	.Lab113
	.long	.Lab112
	.long	.Lab111
	.long	.Lab110
	.text
	subl	$0,%eax
	jb	.Lab108
	cmpl	$4,%eax
	ja	.Lab108
	jmp	*.Lab115(,%eax,4)
.Lab114:
.LN143:
	.stabn  68,0,477,.LN143-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 477, column 16
	pushl	8(%ebp)
	call	BuiltIn_CallEvalPred_DoListing_PrintHead
	addl	$4, %esp
	jmp	.Lab109
.Lab113:
.LN144:
	.stabn  68,0,478,.LN144-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 478, column 16
	pushl	$1
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	InOut_WriteInt
	addl	$8, %esp
	jmp	.Lab109
.Lab112:
.LN145:
	.stabn  68,0,479,.LN145-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 479, column 16
	pushl	$1
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	pushl	20(%eax)
	pushl	$0
	call	WriteOut_WriteAtom
	addl	$12, %esp
	jmp	.Lab109
.Lab111:
.LN146:
	.stabn  68,0,480,.LN146-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 480, column 16
	pushl	$95
	call	InOut_Write
	addl	$4, %esp
	jmp	.Lab109
.Lab110:
.LN147:
	.stabn  68,0,481,.LN147-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 481, column 16
	pushl	$95
	call	InOut_Write
	addl	$4, %esp
.LN148:
	.stabn  68,0,481,.LN148-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 481, column 28
	pushl	$1
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	InOut_WriteInt
	addl	$8, %esp
	jmp	.Lab109
.Lab108:
	call	CaseErr_
.Lab109:
.LN149:
	.stabn  68,0,482,.LN149-BuiltIn_CallEvalPred_DoListing_PrintTerm		# line 482, column 0
.LBE13:
	leave
	ret
	.Lab107 = 8
	.stabs "t:p22",160,0,4,8
	.stabn 192,0,0,.LBB13-BuiltIn_CallEvalPred_DoListing_PrintTerm
	.stabn 224,0,0,.LBE13-BuiltIn_CallEvalPred_DoListing_PrintTerm
	.stabs "BuiltIn_CallEvalPred_DoListing:F16",36,0,0,BuiltIn_CallEvalPred_DoListing
	.align 4
BuiltIn_CallEvalPred_DoListing:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab116, %esp
.LN150:
	.stabn  68,0,528,.LN150-BuiltIn_CallEvalPred_DoListing		# line 528, column 1
.LBB14:
.LN151:
	.stabn  68,0,529,.LN151-BuiltIn_CallEvalPred_DoListing		# line 529, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$0,16(%eax)
	je	.Lab117
.Lab118:
.LN152:
	.stabn  68,0,529,.LN152-BuiltIn_CallEvalPred_DoListing		# line 529, column 38
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN153:
	.stabn  68,0,529,.LN153-BuiltIn_CallEvalPred_DoListing		# line 529, column 56
	leave
	ret
.Lab117:
.LN154:
	.stabn  68,0,530,.LN154-BuiltIn_CallEvalPred_DoListing		# line 530, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	cmpb	$0,25(%eax)
	je	.Lab121
.Lab120:
.LN155:
	.stabn  68,0,531,.LN155-BuiltIn_CallEvalPred_DoListing		# line 531, column 7
	.data
.Lab122:
 	.ascii	"... sorry built-in predicate.\000"
	.text
	pushl	$29
	leal	.Lab122,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN156:
	.stabn  68,0,531,.LN156-BuiltIn_CallEvalPred_DoListing		# line 531, column 53
	leave
	ret
	jmp	.Lab119
.Lab121:
.LN157:
	.stabn  68,0,533,.LN157-BuiltIn_CallEvalPred_DoListing		# line 533, column 9
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab123
.Lab124:
.LN158:
	.stabn  68,0,535,.LN158-BuiltIn_CallEvalPred_DoListing		# line 535, column 9
	pushl	-8(%ebp)
	call	BuiltIn_CallEvalPred_DoListing_PrintClause
	addl	$4, %esp
.LN159:
	.stabn  68,0,536,.LN159-BuiltIn_CallEvalPred_DoListing		# line 536, column 11
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab123:
.LN160:
	.stabn  68,0,534,.LN160-BuiltIn_CallEvalPred_DoListing		# line 534, column 15
	cmpl	$0,-8(%ebp)
	jne	.Lab124
.Lab125:
.Lab119:
.LN161:
	.stabn  68,0,535,.LN161-BuiltIn_CallEvalPred_DoListing		# line 535, column 0
.LBE14:
	leave
	ret
	.Lab116 = 8
	.stabs "cl:20",128,0,4,-8
	.stabn 192,0,0,.LBB14-BuiltIn_CallEvalPred_DoListing
	.stabn 224,0,0,.LBE14-BuiltIn_CallEvalPred_DoListing
	.stabs "BuiltIn_CallEvalPred_DoInferences:F16",36,0,0,BuiltIn_CallEvalPred_DoInferences
	.align 4
BuiltIn_CallEvalPred_DoInferences:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab126, %esp
.LN162:
	.stabn  68,0,466,.LN162-BuiltIn_CallEvalPred_DoInferences		# line 466, column 1
.LBB15:
.LN163:
	.stabn  68,0,467,.LN163-BuiltIn_CallEvalPred_DoInferences		# line 467, column 11
	movl	DISPLAY_,%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	BuiltIn_IntResult
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.LN164:
	.stabn  68,0,468,.LN164-BuiltIn_CallEvalPred_DoInferences		# line 468, column 0
.LBE15:
	leave
	ret
	.Lab126 = 4
	.stabn 192,0,0,.LBB15-BuiltIn_CallEvalPred_DoInferences
	.stabn 224,0,0,.LBE15-BuiltIn_CallEvalPred_DoInferences
	.stabs "BuiltIn_CallEvalPred_DoTime:F16",36,0,0,BuiltIn_CallEvalPred_DoTime
	.align 4
BuiltIn_CallEvalPred_DoTime:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab127, %esp
.LN165:
	.stabn  68,0,461,.LN165-BuiltIn_CallEvalPred_DoTime		# line 461, column 1
.LBB16:
.LN166:
	.stabn  68,0,462,.LN166-BuiltIn_CallEvalPred_DoTime		# line 462, column 11
	movl	DISPLAY_,%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	BuiltIn_IntResult
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.LN167:
	.stabn  68,0,463,.LN167-BuiltIn_CallEvalPred_DoTime		# line 463, column 0
.LBE16:
	leave
	ret
	.Lab127 = 4
	.stabn 192,0,0,.LBB16-BuiltIn_CallEvalPred_DoTime
	.stabn 224,0,0,.LBE16-BuiltIn_CallEvalPred_DoTime
	.stabs "BuiltIn_CallEvalPred_DoUcode_UserCode:F17",36,0,0,BuiltIn_CallEvalPred_DoUcode_UserCode
	.align 4
BuiltIn_CallEvalPred_DoUcode_UserCode:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab128, %esp
.LN168:
	.stabn  68,0,449,.LN168-BuiltIn_CallEvalPred_DoUcode_UserCode		# line 449, column 3
.LBB17:
.LN169:
	.stabn  68,0,450,.LN169-BuiltIn_CallEvalPred_DoUcode_UserCode		# line 450, column 7
	call	OpSystem_Time
	movl	%eax,-8(%ebp) 
.LN170:
	.stabn  68,0,451,.LN170-BuiltIn_CallEvalPred_DoUcode_UserCode		# line 451, column 6
.LN171:
	.stabn  68,0,452,.LN171-BuiltIn_CallEvalPred_DoUcode_UserCode		# line 452, column 0
	call	ReturnErr_
.LBE17:
	leave
	ret
	.Lab128 = 8
	.stabs "a:4",128,0,4,-8
	.stabs "arg:p32",160,0,8,8
	.stabn 192,0,0,.LBB17-BuiltIn_CallEvalPred_DoUcode_UserCode
	.stabn 224,0,0,.LBE17-BuiltIn_CallEvalPred_DoUcode_UserCode
	.stabs "BuiltIn_CallEvalPred_DoUcode:F16",36,0,0,BuiltIn_CallEvalPred_DoUcode
	.align 4
BuiltIn_CallEvalPred_DoUcode:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab129, %esp
.LN172:
	.stabn  68,0,454,.LN172-BuiltIn_CallEvalPred_DoUcode		# line 454, column 1
.LBB18:
.LN173:
	.stabn  68,0,455,.LN173-BuiltIn_CallEvalPred_DoUcode		# line 455, column 4
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	Terms_IsAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab130
.Lab131:
.LN174:
	.stabn  68,0,455,.LN174-BuiltIn_CallEvalPred_DoUcode		# line 455, column 34
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN175:
	.stabn  68,0,455,.LN175-BuiltIn_CallEvalPred_DoUcode		# line 455, column 52
	leave
	ret
.Lab130:
.LN176:
	.stabn  68,0,456,.LN176-BuiltIn_CallEvalPred_DoUcode		# line 456, column 11
	movl	DISPLAY_,%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	$0,%esi
 	addl	20(%eax),%esi 
	subl	$8,%esp
	movl	%esp,%edi
	movl	$2,%ecx
	cld
	repz
	movsl
	call	BuiltIn_CallEvalPred_DoUcode_UserCode
	addl	$8, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.LN177:
	.stabn  68,0,457,.LN177-BuiltIn_CallEvalPred_DoUcode		# line 457, column 0
.LBE18:
	leave
	ret
	.Lab129 = 4
	.stabn 192,0,0,.LBB18-BuiltIn_CallEvalPred_DoUcode
	.stabn 224,0,0,.LBE18-BuiltIn_CallEvalPred_DoUcode
	.stabs "BuiltIn_CallEvalPred_DoClose:F16",36,0,0,BuiltIn_CallEvalPred_DoClose
	.align 4
BuiltIn_CallEvalPred_DoClose:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab132, %esp
.LN178:
	.stabn  68,0,438,.LN178-BuiltIn_CallEvalPred_DoClose		# line 438, column 1
.LBB19:
.LN179:
	.stabn  68,0,439,.LN179-BuiltIn_CallEvalPred_DoClose		# line 439, column 4
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	Terms_IsAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab133
.Lab134:
.LN180:
	.stabn  68,0,439,.LN180-BuiltIn_CallEvalPred_DoClose		# line 439, column 34
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN181:
	.stabn  68,0,439,.LN181-BuiltIn_CallEvalPred_DoClose		# line 439, column 52
	leave
	ret
.Lab133:
.LN182:
	.stabn  68,0,440,.LN182-BuiltIn_CallEvalPred_DoClose		# line 440, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	pushl	20(%eax)
	call	PFiles_DropFile
	addl	$4, %esp
.LN183:
	.stabn  68,0,441,.LN183-BuiltIn_CallEvalPred_DoClose		# line 441, column 0
.LBE19:
	leave
	ret
	.Lab132 = 4
	.stabn 192,0,0,.LBB19-BuiltIn_CallEvalPred_DoClose
	.stabn 224,0,0,.LBE19-BuiltIn_CallEvalPred_DoClose
	.stabs "BuiltIn_CallEvalPred_DoSelect:F16",36,0,0,BuiltIn_CallEvalPred_DoSelect
	.align 4
BuiltIn_CallEvalPred_DoSelect:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab135, %esp
.LN184:
	.stabn  68,0,428,.LN184-BuiltIn_CallEvalPred_DoSelect		# line 428, column 1
.LBB20:
.LN185:
	.stabn  68,0,429,.LN185-BuiltIn_CallEvalPred_DoSelect		# line 429, column 4
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	Terms_IsAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab136
.Lab137:
.LN186:
	.stabn  68,0,429,.LN186-BuiltIn_CallEvalPred_DoSelect		# line 429, column 34
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN187:
	.stabn  68,0,429,.LN187-BuiltIn_CallEvalPred_DoSelect		# line 429, column 52
	leave
	ret
.Lab136:
.LN188:
	.stabn  68,0,430,.LN188-BuiltIn_CallEvalPred_DoSelect		# line 430, column 4
	leal	-5(%ebp),%eax
	pushl	%eax
	movzbl	8(%ebp),%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	pushl	20(%eax)
	call	PFiles_SelectFile
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab138
.Lab139:
.LN189:
	.stabn  68,0,431,.LN189-BuiltIn_CallEvalPred_DoSelect		# line 431, column 7
	movzbl	-5(%ebp),%eax
	pushl	%eax
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN190:
	.stabn  68,0,432,.LN190-BuiltIn_CallEvalPred_DoSelect		# line 432, column 7
	leave
	ret
.Lab138:
.LN191:
	.stabn  68,0,433,.LN191-BuiltIn_CallEvalPred_DoSelect		# line 433, column 0
.LBE20:
	leave
	ret
	.Lab135 = 8
	.stabs "error:t37=evarexpE:28,nofileE:27,filespaceE:26,iodirE:25,nvarsE:24,weirdchE:23,sysprocE:22,readstackE:21,precE:20,needrandE:19,needquoteE:18,needopE:17,localspaceE:16,framespaceE:15,eofE:14,divideE:13,depthE:12,commentE:11,badvbarE:10,badketE:9,badexpE:8,baddotE:7,badcommaE:6,badcharE:5,badcddE:4,atomspaceE:3,assertE:2,argsE:1,arityE:0,;",128,0,0,0
	.stabs "e:37",128,0,1,-5
	.stabs "inout:t38=eoutZ:1,inZ:0,;",128,0,0,0
	.stabs "dir:p38",160,0,1,8
	.stabn 192,0,0,.LBB20-BuiltIn_CallEvalPred_DoSelect
	.stabn 224,0,0,.LBE20-BuiltIn_CallEvalPred_DoSelect
	.stabs "BuiltIn_CallEvalPred_DoZap:F16",36,0,0,BuiltIn_CallEvalPred_DoZap
	.align 4
BuiltIn_CallEvalPred_DoZap:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab140, %esp
.LN192:
	.stabn  68,0,416,.LN192-BuiltIn_CallEvalPred_DoZap		# line 416, column 1
.LBB21:
.LN193:
	.stabn  68,0,417,.LN193-BuiltIn_CallEvalPred_DoZap		# line 417, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab141
.Lab142:
.LN194:
	.stabn  68,0,417,.LN194-BuiltIn_CallEvalPred_DoZap		# line 417, column 40
	pushl	$5
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN195:
	.stabn  68,0,417,.LN195-BuiltIn_CallEvalPred_DoZap		# line 417, column 58
	leave
	ret
.Lab141:
.LN196:
	.stabn  68,0,418,.LN196-BuiltIn_CallEvalPred_DoZap		# line 418, column 7
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	.data
	.align 4
.Lab143:
	.long	0,1000
	.text
	boundl	%eax,.Lab143
	movl	%eax,-8(%ebp) 
.LN197:
	.stabn  68,0,419,.LN197-BuiltIn_CallEvalPred_DoZap		# line 419, column 7
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab145
	jmp	.Lab144
.Lab145:
   	call	BoundErr_		
.Lab144:
	imull	$28,%eax 
	movl	Stacks_s + 7992(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN198:
	.stabn  68,0,420,.LN198-BuiltIn_CallEvalPred_DoZap		# line 420, column 4
	cmpl	$0,-12(%ebp)
	jne	.Lab146
.Lab147:
.LN199:
	.stabn  68,0,420,.LN199-BuiltIn_CallEvalPred_DoZap		# line 420, column 21
	pushl	$6
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN200:
	.stabn  68,0,420,.LN200-BuiltIn_CallEvalPred_DoZap		# line 420, column 39
	leave
	ret
.Lab146:
.LN201:
	.stabn  68,0,421,.LN201-BuiltIn_CallEvalPred_DoZap		# line 421, column 15
	movl	-12(%ebp),%eax
	movb	$1,12(%eax) 
.LN202:
	.stabn  68,0,422,.LN202-BuiltIn_CallEvalPred_DoZap		# line 422, column 0
.LBE21:
	leave
	ret
	.Lab140 = 12
	.stabs "cl:20",128,0,4,-12
	.stabs "e1:36",128,0,4,-8
	.stabn 192,0,0,.LBB21-BuiltIn_CallEvalPred_DoZap
	.stabn 224,0,0,.LBE21-BuiltIn_CallEvalPred_DoZap
	.stabs "BuiltIn_CallEvalPred_DoAdvCl:F16",36,0,0,BuiltIn_CallEvalPred_DoAdvCl
	.align 4
BuiltIn_CallEvalPred_DoAdvCl:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab148, %esp
.LN203:
	.stabn  68,0,403,.LN203-BuiltIn_CallEvalPred_DoAdvCl		# line 403, column 1
.LBB22:
.LN204:
	.stabn  68,0,404,.LN204-BuiltIn_CallEvalPred_DoAdvCl		# line 404, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab149
.Lab150:
.LN205:
	.stabn  68,0,404,.LN205-BuiltIn_CallEvalPred_DoAdvCl		# line 404, column 40
	pushl	$3
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN206:
	.stabn  68,0,404,.LN206-BuiltIn_CallEvalPred_DoAdvCl		# line 404, column 58
	leave
	ret
.Lab149:
.LN207:
	.stabn  68,0,405,.LN207-BuiltIn_CallEvalPred_DoAdvCl		# line 405, column 7
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	.data
	.align 4
.Lab151:
	.long	0,1000
	.text
	boundl	%eax,.Lab151
	movl	%eax,-8(%ebp) 
.LN208:
	.stabn  68,0,406,.LN208-BuiltIn_CallEvalPred_DoAdvCl		# line 406, column 7
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab153
	jmp	.Lab152
.Lab153:
   	call	BoundErr_		
.Lab152:
	imull	$28,%eax 
	movl	Stacks_s + 7992(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN209:
	.stabn  68,0,407,.LN209-BuiltIn_CallEvalPred_DoAdvCl		# line 407, column 4
	cmpl	$0,-12(%ebp)
	jne	.Lab154
.Lab155:
.LN210:
	.stabn  68,0,407,.LN210-BuiltIn_CallEvalPred_DoAdvCl		# line 407, column 21
	pushl	$4
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN211:
	.stabn  68,0,407,.LN211-BuiltIn_CallEvalPred_DoAdvCl		# line 407, column 39
	leave
	ret
.Lab154:
.LN212:
	.stabn  68,0,408,.LN212-BuiltIn_CallEvalPred_DoAdvCl		# line 408, column 4
	movl	-12(%ebp),%eax
	pushl	24(%eax)
	pushl	-8(%ebp)
	call	Stacks_ChangeClause
	addl	$8, %esp
.LN213:
	.stabn  68,0,409,.LN213-BuiltIn_CallEvalPred_DoAdvCl		# line 409, column 0
.LBE22:
	leave
	ret
	.Lab148 = 12
	.stabs "cl:20",128,0,4,-12
	.stabs "e1:36",128,0,4,-8
	.stabn 192,0,0,.LBB22-BuiltIn_CallEvalPred_DoAdvCl
	.stabn 224,0,0,.LBE22-BuiltIn_CallEvalPred_DoAdvCl
	.stabs "BuiltIn_CallEvalPred_DoGetCl:F16",36,0,0,BuiltIn_CallEvalPred_DoGetCl
	.align 4
BuiltIn_CallEvalPred_DoGetCl:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab156, %esp
.LN214:
	.stabn  68,0,373,.LN214-BuiltIn_CallEvalPred_DoGetCl		# line 373, column 1
.LBB23:
.LN215:
	.stabn  68,0,374,.LN215-BuiltIn_CallEvalPred_DoGetCl		# line 374, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$0,16(%eax)
	jne	.Lab158
.Lab161:
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpb	$1,16(%eax)
	jne	.Lab158
.Lab160:
	movl	DISPLAY_,%eax
	movl	-16(%eax),%eax
	cmpb	$2,16(%eax)
	jne	.Lab158
.Lab159:
	movl	DISPLAY_,%eax
	movl	-12(%eax),%eax
	cmpb	$2,16(%eax)
	je	.Lab157
.Lab158:
.LN216:
	.stabn  68,0,377,.LN216-BuiltIn_CallEvalPred_DoGetCl		# line 377, column 42
	pushl	$2
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN217:
	.stabn  68,0,377,.LN217-BuiltIn_CallEvalPred_DoGetCl		# line 377, column 60
	leave
	ret
.Lab157:
.LN218:
	.stabn  68,0,379,.LN218-BuiltIn_CallEvalPred_DoGetCl		# line 379, column 7
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	movl	20(%eax),%eax
	.data
	.align 4
.Lab162:
	.long	0,1000
	.text
	boundl	%eax,.Lab162
	movl	%eax,-8(%ebp) 
.LN219:
	.stabn  68,0,380,.LN219-BuiltIn_CallEvalPred_DoGetCl		# line 380, column 7
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab164
	jmp	.Lab163
.Lab164:
   	call	BoundErr_		
.Lab163:
	imull	$28,%eax 
	movl	Stacks_s + 7992(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN220:
	.stabn  68,0,381,.LN220-BuiltIn_CallEvalPred_DoGetCl		# line 381, column 4
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	leal	-16(%ebp),%eax
	pushl	%eax
	call	Database_FindClause
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab167
.Lab166:
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp) 
.LN221:
	.stabn  68,0,383,.LN221-BuiltIn_CallEvalPred_DoGetCl		# line 383, column 10
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	.data
	.align 4
.Lab168:
	.long	0,2147483647
	.text
	boundl	%eax,.Lab168
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	$0
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Stacks_NewEnv
	addl	$20, %esp
.LN222:
	.stabn  68,0,384,.LN222-BuiltIn_CallEvalPred_DoGetCl		# line 384, column 10
	pushl	$0
	pushl	-12(%ebp)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	-20(%ebp),%eax
	pushl	(%eax)
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	call	Terms_Bind
	addl	$20, %esp
.LN223:
	.stabn  68,0,385,.LN223-BuiltIn_CallEvalPred_DoGetCl		# line 385, column 10
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	call	Stacks_TrailVar
	addl	$4, %esp
.LN224:
	.stabn  68,0,386,.LN224-BuiltIn_CallEvalPred_DoGetCl		# line 386, column 10
	pushl	-12(%ebp)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	-20(%ebp),%eax
	pushl	4(%eax)
	movl	DISPLAY_,%eax
	pushl	-12(%eax)
	call	Terms_GetBody
	addl	$16, %esp
.LN225:
	.stabn  68,0,387,.LN225-BuiltIn_CallEvalPred_DoGetCl		# line 387, column 10
	movl	DISPLAY_,%eax
	pushl	-12(%eax)
	call	Stacks_TrailVar
	addl	$4, %esp
.LN226:
	.stabn  68,0,388,.LN226-BuiltIn_CallEvalPred_DoGetCl		# line 388, column 10
	call	Stacks_DisposeEnv
.LN227:
	.stabn  68,0,390,.LN227-BuiltIn_CallEvalPred_DoGetCl		# line 390, column 7
	pushl	-16(%ebp)
	pushl	-8(%ebp)
	call	Stacks_ChangeClause
	addl	$8, %esp
.LN228:
	.stabn  68,0,391,.LN228-BuiltIn_CallEvalPred_DoGetCl		# line 391, column 14
	jmp	.Lab165
.Lab167:
.LN229:
	.stabn  68,0,394,.LN229-BuiltIn_CallEvalPred_DoGetCl		# line 394, column 14
.Lab165:
.LN230:
	.stabn  68,0,395,.LN230-BuiltIn_CallEvalPred_DoGetCl		# line 395, column 0
.LBE23:
	leave
	ret
	.Lab156 = 20
	.stabs "cl:20",128,0,4,-16
	.stabs "e2:36",128,0,4,-12
	.stabs "e1:36",128,0,4,-8
	.stabn 192,0,0,.LBB23-BuiltIn_CallEvalPred_DoGetCl
	.stabn 224,0,0,.LBE23-BuiltIn_CallEvalPred_DoGetCl
	.stabs "BuiltIn_CallEvalPred_DoClEnv:F16",36,0,0,BuiltIn_CallEvalPred_DoClEnv
	.align 4
BuiltIn_CallEvalPred_DoClEnv:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab169, %esp
.LN231:
	.stabn  68,0,357,.LN231-BuiltIn_CallEvalPred_DoClEnv		# line 357, column 1
.LBB24:
.LN232:
	.stabn  68,0,358,.LN232-BuiltIn_CallEvalPred_DoClEnv		# line 358, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$0,16(%eax)
	je	.Lab170
.Lab171:
.LN233:
	.stabn  68,0,358,.LN233-BuiltIn_CallEvalPred_DoClEnv		# line 358, column 41
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN234:
	.stabn  68,0,358,.LN234-BuiltIn_CallEvalPred_DoClEnv		# line 358, column 59
	leave
	ret
.Lab170:
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN235:
	.stabn  68,0,360,.LN235-BuiltIn_CallEvalPred_DoClEnv		# line 360, column 7
	cmpl	$0,OpSystem_s + 12
	jne	.Lab174
.Lab175:
	movl	-12(%ebp),%eax
	cmpb	$1,24(%eax)
	je	.Lab173
.Lab174:
	movl	-12(%ebp),%eax
	cmpb	$1,25(%eax)
	jne	.Lab172
.Lab173:
.LN236:
	.stabn  68,0,361,.LN236-BuiltIn_CallEvalPred_DoClEnv		# line 361, column 10
	pushl	$22
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN237:
	.stabn  68,0,361,.LN237-BuiltIn_CallEvalPred_DoClEnv		# line 361, column 31
	leave
	ret
.Lab172:
.LN238:
	.stabn  68,0,362,.LN238-BuiltIn_CallEvalPred_DoClEnv		# line 362, column 7
	pushl	$0
	movl	-12(%ebp),%eax
	pushl	28(%eax)
	pushl	$0
	pushl	$0
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Stacks_NewEnv
	addl	$20, %esp
.LN239:
	.stabn  68,0,364,.LN239-BuiltIn_CallEvalPred_DoClEnv		# line 364, column 11
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	-8(%ebp)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	BuiltIn_IntResult
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.LN240:
	.stabn  68,0,365,.LN240-BuiltIn_CallEvalPred_DoClEnv		# line 365, column 0
.LBE24:
	leave
	ret
	.Lab169 = 12
	.stabs "e1:36",128,0,4,-8
	.stabn 192,0,0,.LBB24-BuiltIn_CallEvalPred_DoClEnv
	.stabn 224,0,0,.LBE24-BuiltIn_CallEvalPred_DoClEnv
	.stabs "BuiltIn_CallEvalPred_DoArg:F16",36,0,0,BuiltIn_CallEvalPred_DoArg
	.align 4
BuiltIn_CallEvalPred_DoArg:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab176, %esp
.LN241:
	.stabn  68,0,336,.LN241-BuiltIn_CallEvalPred_DoArg		# line 336, column 1
.LBB25:
.LN242:
	.stabn  68,0,337,.LN242-BuiltIn_CallEvalPred_DoArg		# line 337, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$1,16(%eax)
	jne	.Lab178
.Lab180:
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpb	$0,16(%eax)
	je	.Lab179
.Lab178:
.LN243:
	.stabn  68,0,338,.LN243-BuiltIn_CallEvalPred_DoArg		# line 338, column 14
	jmp	.Lab177
.Lab179:
.LN244:
	.stabn  68,0,340,.LN244-BuiltIn_CallEvalPred_DoArg		# line 340, column 9
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN245:
	.stabn  68,0,341,.LN245-BuiltIn_CallEvalPred_DoArg		# line 341, column 7
	cmpl	$1,-16(%ebp)
	jl	.Lab182
.Lab184:
	movl	-16(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpl	24(%eax),%ebx
	jle	.Lab183
.Lab182:
.LN246:
	.stabn  68,0,342,.LN246-BuiltIn_CallEvalPred_DoArg		# line 342, column 17
	jmp	.Lab181
.Lab183:
.LN247:
	.stabn  68,0,344,.LN247-BuiltIn_CallEvalPred_DoArg		# line 344, column 12
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	movl	28(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN248:
	.stabn  68,0,345,.LN248-BuiltIn_CallEvalPred_DoArg		# line 345, column 10
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp) 
	cmpl	$2,-20(%ebp)
	jl	.Lab185
	movl	$2,-12(%ebp) 
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp) 
.Lab186:
.LN249:
	.stabn  68,0,345,.LN249-BuiltIn_CallEvalPred_DoArg		# line 345, column 31
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN250:
	.stabn  68,0,345,.LN250-BuiltIn_CallEvalPred_DoArg		# line 345, column 10
	movl	-12(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jge	.Lab185
	incl	-12(%ebp) 
	jmp	.Lab186
.Lab185:
.LN251:
	.stabn  68,0,346,.LN251-BuiltIn_CallEvalPred_DoArg		# line 346, column 17
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	-8(%ebp)
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	call	Unify_Unify
	addl	$20, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.Lab181:
.Lab177:
.LN252:
	.stabn  68,0,347,.LN252-BuiltIn_CallEvalPred_DoArg		# line 347, column 0
.LBE25:
	leave
	ret
	.Lab176 = 24
	.stabs "n:7",128,0,4,-16
	.stabs "i:7",128,0,4,-12
	.stabs "x:22",128,0,4,-8
	.stabn 192,0,0,.LBB25-BuiltIn_CallEvalPred_DoArg
	.stabn 224,0,0,.LBE25-BuiltIn_CallEvalPred_DoArg
	.stabs "BuiltIn_CallEvalPred_DoFunctor:F16",36,0,0,BuiltIn_CallEvalPred_DoFunctor
	.align 4
BuiltIn_CallEvalPred_DoFunctor:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab187, %esp
.LN253:
	.stabn  68,0,297,.LN253-BuiltIn_CallEvalPred_DoFunctor		# line 297, column 2
.LBB26:
.LN254:
	.stabn  68,0,298,.LN254-BuiltIn_CallEvalPred_DoFunctor		# line 298, column 5
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab193:
	.long	.Lab192
	.long	.Lab191
	.long	.Lab190
	.long	.Lab190
	.text
	subl	$0,%eax
	jb	.Lab188
	cmpl	$3,%eax
	ja	.Lab188
	jmp	*.Lab193(,%eax,4)
.Lab192:
.LN255:
	.stabn  68,0,300,.LN255-BuiltIn_CallEvalPred_DoFunctor		# line 300, column 11
.Lab195:
.LN256:
	.stabn  68,0,301,.LN256-BuiltIn_CallEvalPred_DoFunctor		# line 301, column 21
	jmp	.Lab194
.Lab196:
.LN257:
	.stabn  68,0,303,.LN257-BuiltIn_CallEvalPred_DoFunctor		# line 303, column 21
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	$0
	pushl	$0
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	pushl	20(%eax)
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	Unify_Unify
	addl	$20, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.Lab194:
	jmp	.Lab189
.Lab191:
.LN258:
	.stabn  68,0,307,.LN258-BuiltIn_CallEvalPred_DoFunctor		# line 307, column 11
.Lab198:
.LN259:
	.stabn  68,0,308,.LN259-BuiltIn_CallEvalPred_DoFunctor		# line 308, column 21
	jmp	.Lab197
.Lab199:
.LN260:
	.stabn  68,0,310,.LN260-BuiltIn_CallEvalPred_DoFunctor		# line 310, column 21
	movl	DISPLAY_,%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	pushl	20(%eax)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	BuiltIn_IntResult
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.Lab197:
	jmp	.Lab189
.Lab190:
.LN261:
	.stabn  68,0,313,.LN261-BuiltIn_CallEvalPred_DoFunctor		# line 313, column 13
	movl	DISPLAY_,%eax
	movl	-16(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab200
.Lab201:
.LN262:
	.stabn  68,0,313,.LN262-BuiltIn_CallEvalPred_DoFunctor		# line 313, column 49
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN263:
	.stabn  68,0,313,.LN263-BuiltIn_CallEvalPred_DoFunctor		# line 313, column 67
	leave
	ret
.Lab200:
.LN264:
	.stabn  68,0,314,.LN264-BuiltIn_CallEvalPred_DoFunctor		# line 314, column 15
	movl	DISPLAY_,%eax
	movl	-16(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN265:
	.stabn  68,0,315,.LN265-BuiltIn_CallEvalPred_DoFunctor		# line 315, column 13
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	Terms_IsAtom
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab204
.Lab205:
	cmpl	$0,-16(%ebp)
	jl	.Lab204
.Lab203:
.LN266:
	.stabn  68,0,316,.LN266-BuiltIn_CallEvalPred_DoFunctor		# line 316, column 19
	movl	$0,-8(%ebp) 
.LN267:
	.stabn  68,0,317,.LN267-BuiltIn_CallEvalPred_DoFunctor		# line 317, column 17
	movl	-16(%ebp),%eax
	movl	%eax,-20(%ebp) 
	cmpl	$1,-20(%ebp)
	jl	.Lab206
	movl	-20(%ebp),%eax
	movl	%eax,-12(%ebp) 
.Lab207:
.LN268:
	.stabn  68,0,318,.LN268-BuiltIn_CallEvalPred_DoFunctor		# line 318, column 21
	pushl	-8(%ebp)
	pushl	$0
	call	Terms_MakeVar
	addl	$4, %esp
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN269:
	.stabn  68,0,317,.LN269-BuiltIn_CallEvalPred_DoFunctor		# line 317, column 17
	cmpl	$1,-12(%ebp)
	jle	.Lab206
	decl	-12(%ebp) 
	jmp	.Lab207
.Lab206:
.LN270:
	.stabn  68,0,320,.LN270-BuiltIn_CallEvalPred_DoFunctor		# line 320, column 24
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	-8(%ebp)
	pushl	-16(%ebp)
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	pushl	20(%eax)
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	Unify_Unify
	addl	$20, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
	jmp	.Lab202
.Lab204:
.LN271:
	.stabn  68,0,323,.LN271-BuiltIn_CallEvalPred_DoFunctor		# line 323, column 13
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpb	$1,16(%eax)
	jne	.Lab210
.Lab211:
	cmpl	$0,-16(%ebp)
	jne	.Lab210
.Lab209:
.LN272:
	.stabn  68,0,324,.LN272-BuiltIn_CallEvalPred_DoFunctor		# line 324, column 23
	movl	DISPLAY_,%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	pushl	20(%eax)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	BuiltIn_IntResult
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
	jmp	.Lab208
.Lab210:
.LN273:
	.stabn  68,0,326,.LN273-BuiltIn_CallEvalPred_DoFunctor		# line 326, column 16
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN274:
	.stabn  68,0,326,.LN274-BuiltIn_CallEvalPred_DoFunctor		# line 326, column 34
	leave
	ret
.Lab208:
.Lab202:
	jmp	.Lab189
.Lab188:
	call	CaseErr_
.Lab189:
.LN275:
	.stabn  68,0,327,.LN275-BuiltIn_CallEvalPred_DoFunctor		# line 327, column 0
.LBE26:
	leave
	ret
	.Lab187 = 20
	.stabs "m:7",128,0,4,-16
	.stabs "i:7",128,0,4,-12
	.stabs "x:22",128,0,4,-8
	.stabn 192,0,0,.LBB26-BuiltIn_CallEvalPred_DoFunctor
	.stabn 224,0,0,.LBE26-BuiltIn_CallEvalPred_DoFunctor
	.stabs "BuiltIn_CallEvalPred_DoAddcl:F16",36,0,0,BuiltIn_CallEvalPred_DoAddcl
	.align 4
BuiltIn_CallEvalPred_DoAddcl:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab212, %esp
.LN276:
	.stabn  68,0,283,.LN276-BuiltIn_CallEvalPred_DoAddcl		# line 283, column 2
.LBB27:
.LN277:
	.stabn  68,0,284,.LN277-BuiltIn_CallEvalPred_DoAddcl		# line 284, column 5
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab213
.Lab214:
.LN278:
	.stabn  68,0,284,.LN278-BuiltIn_CallEvalPred_DoAddcl		# line 284, column 41
	pushl	$13
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN279:
	.stabn  68,0,284,.LN279-BuiltIn_CallEvalPred_DoAddcl		# line 284, column 60
	leave
	ret
.Lab213:
.LN280:
	.stabn  68,0,285,.LN280-BuiltIn_CallEvalPred_DoAddcl		# line 285, column 5
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpl	$1,20(%eax)
	sete	%al
	movzbl	%al,%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	Database_AddClause
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab215
.Lab216:
.LN281:
	.stabn  68,0,287,.LN281-BuiltIn_CallEvalPred_DoAddcl		# line 287, column 8
	call	BuiltIn_CallEvalPred_ShowContext
.LN282:
	.stabn  68,0,288,.LN282-BuiltIn_CallEvalPred_DoAddcl		# line 288, column 8
	call	ErrorHandler_Abort
.Lab215:
.LN283:
	.stabn  68,0,289,.LN283-BuiltIn_CallEvalPred_DoAddcl		# line 289, column 0
.LBE27:
	leave
	ret
	.Lab212 = 4
	.stabn 192,0,0,.LBB27-BuiltIn_CallEvalPred_DoAddcl
	.stabn 224,0,0,.LBE27-BuiltIn_CallEvalPred_DoAddcl
	.stabs "BuiltIn_CallEvalPred_DoName:F16",36,0,0,BuiltIn_CallEvalPred_DoName
	.align 4
BuiltIn_CallEvalPred_DoName:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab217, %esp
.LN284:
	.stabn  68,0,257,.LN284-BuiltIn_CallEvalPred_DoName		# line 257, column 1
.LBB28:
.LN285:
	.stabn  68,0,258,.LN285-BuiltIn_CallEvalPred_DoName		# line 258, column 5
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	Terms_IsAtom
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab220
.Lab219:
.LN286:
	.stabn  68,0,259,.LN286-BuiltIn_CallEvalPred_DoName		# line 259, column 15
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	$0,%esi
 	addl	20(%eax),%esi 
	subl	$8,%esp
	movl	%esp,%edi
	movl	$2,%ecx
	cld
	repz
	movsl
	call	Terms_ListRep
	addl	$8, %esp
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	Unify_Unify
	addl	$20, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
	jmp	.Lab218
.Lab220:
.LN287:
	.stabn  68,0,261,.LN287-BuiltIn_CallEvalPred_DoName		# line 261, column 5
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movzbl	16(%eax),%ebx
	movl	$12,%eax
	btl	%ebx,%eax
	jnc	.Lab223
.Lab222:
.LN288:
	.stabn  68,0,262,.LN288-BuiltIn_CallEvalPred_DoName		# line 262, column 8
	call	AtomTable_StartAtom
.LN289:
	.stabn  68,0,263,.LN289-BuiltIn_CallEvalPred_DoName		# line 263, column 10
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab224
.Lab225:
.LN290:
	.stabn  68,0,265,.LN290-BuiltIn_CallEvalPred_DoName		# line 265, column 13
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
.LN291:
	.stabn  68,0,266,.LN291-BuiltIn_CallEvalPred_DoName		# line 266, column 11
	movl	-12(%ebp),%eax
	cmpb	$1,16(%eax)
	je	.Lab227
.Lab228:
.LN292:
	.stabn  68,0,266,.LN292-BuiltIn_CallEvalPred_DoName		# line 266, column 39
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN293:
	.stabn  68,0,266,.LN293-BuiltIn_CallEvalPred_DoName		# line 266, column 57
	leave
	ret
.Lab227:
.LN294:
	.stabn  68,0,267,.LN294-BuiltIn_CallEvalPred_DoName		# line 267, column 14
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN295:
	.stabn  68,0,268,.LN295-BuiltIn_CallEvalPred_DoName		# line 268, column 11
	cmpl	$0,-16(%ebp)
	jl	.Lab230
.Lab231:
	cmpl	$127,-16(%ebp)
	jle	.Lab229
.Lab230:
.LN296:
	.stabn  68,0,269,.LN296-BuiltIn_CallEvalPred_DoName		# line 269, column 14
	pushl	$5
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN297:
	.stabn  68,0,269,.LN297-BuiltIn_CallEvalPred_DoName		# line 269, column 35
	leave
	ret
.Lab229:
.LN298:
	.stabn  68,0,270,.LN298-BuiltIn_CallEvalPred_DoName		# line 270, column 11
	movl	-16(%ebp),%eax
	.data
	.align 4
.Lab232:
	.long	0,255
	.text
	boundl	%eax,.Lab232
	movzbl	%al,%eax
	pushl	%eax
	call	AtomTable_AtomChar
	addl	$4, %esp
.LN299:
	.stabn  68,0,271,.LN299-BuiltIn_CallEvalPred_DoName		# line 271, column 13
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	pushl	(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.Lab224:
.LN300:
	.stabn  68,0,264,.LN300-BuiltIn_CallEvalPred_DoName		# line 264, column 14
	pushl	$2
	pushl	AtomTable_s + 5016
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab225
.Lab226:
.LN301:
	.stabn  68,0,273,.LN301-BuiltIn_CallEvalPred_DoName		# line 273, column 8
	pushl	$0
	pushl	AtomTable_s + 5012
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab233
.Lab234:
.LN302:
	.stabn  68,0,273,.LN302-BuiltIn_CallEvalPred_DoName		# line 273, column 39
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN303:
	.stabn  68,0,273,.LN303-BuiltIn_CallEvalPred_DoName		# line 273, column 57
	leave
	ret
.Lab233:
.LN304:
	.stabn  68,0,274,.LN304-BuiltIn_CallEvalPred_DoName		# line 274, column 15
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	$0
	pushl	$0
	call	AtomTable_LookUp
	pushl	%eax
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	Unify_Unify
	addl	$20, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
	jmp	.Lab221
.Lab223:
.LN305:
	.stabn  68,0,277,.LN305-BuiltIn_CallEvalPred_DoName		# line 277, column 8
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN306:
	.stabn  68,0,277,.LN306-BuiltIn_CallEvalPred_DoName		# line 277, column 26
	leave
	ret
.Lab221:
.Lab218:
.LN307:
	.stabn  68,0,278,.LN307-BuiltIn_CallEvalPred_DoName		# line 278, column 0
.LBE28:
	leave
	ret
	.Lab217 = 16
	.stabs "ch:7",128,0,4,-16
	.stabs "y:22",128,0,4,-12
	.stabs "x:22",128,0,4,-8
	.stabn 192,0,0,.LBB28-BuiltIn_CallEvalPred_DoName
	.stabn 224,0,0,.LBE28-BuiltIn_CallEvalPred_DoName
	.stabs "BuiltIn_CallEvalPred_DoOp:F16",36,0,0,BuiltIn_CallEvalPred_DoOp
	.align 4
BuiltIn_CallEvalPred_DoOp:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab235, %esp
.LN308:
	.stabn  68,0,230,.LN308-BuiltIn_CallEvalPred_DoOp		# line 230, column 1
.LBB29:
.LN309:
	.stabn  68,0,231,.LN309-BuiltIn_CallEvalPred_DoOp		# line 231, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$1,16(%eax)
	jne	.Lab237
.Lab239:
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	Terms_IsAtom
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab237
.Lab238:
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	call	Terms_IsAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab236
.Lab237:
.LN310:
	.stabn  68,0,232,.LN310-BuiltIn_CallEvalPred_DoOp		# line 232, column 34
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN311:
	.stabn  68,0,232,.LN311-BuiltIn_CallEvalPred_DoOp		# line 232, column 52
	leave
	ret
.Lab236:
.LN312:
	.stabn  68,0,233,.LN312-BuiltIn_CallEvalPred_DoOp		# line 233, column 6
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN313:
	.stabn  68,0,234,.LN313-BuiltIn_CallEvalPred_DoOp		# line 234, column 6
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN314:
	.stabn  68,0,235,.LN314-BuiltIn_CallEvalPred_DoOp		# line 235, column 4
	cmpl	$1,-8(%ebp)
	jl	.Lab241
.Lab242:
	cmpl	$1200,-8(%ebp)
	jle	.Lab240
.Lab241:
.LN315:
	.stabn  68,0,235,.LN315-BuiltIn_CallEvalPred_DoOp		# line 235, column 37
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN316:
	.stabn  68,0,235,.LN316-BuiltIn_CallEvalPred_DoOp		# line 235, column 55
	leave
	ret
.Lab240:
.LN317:
	.stabn  68,0,236,.LN317-BuiltIn_CallEvalPred_DoOp		# line 236, column 4
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5036,%eax
	jne	.Lab245
.Lab244:
.LN318:
	.stabn  68,0,236,.LN318-BuiltIn_CallEvalPred_DoOp		# line 236, column 26
	movb	$0,-13(%ebp) 
	jmp	.Lab243
.Lab245:
.LN319:
	.stabn  68,0,237,.LN319-BuiltIn_CallEvalPred_DoOp		# line 237, column 4
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5040,%eax
	jne	.Lab248
.Lab247:
.LN320:
	.stabn  68,0,237,.LN320-BuiltIn_CallEvalPred_DoOp		# line 237, column 26
	movb	$1,-13(%ebp) 
	jmp	.Lab246
.Lab248:
.LN321:
	.stabn  68,0,238,.LN321-BuiltIn_CallEvalPred_DoOp		# line 238, column 4
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5044,%eax
	jne	.Lab251
.Lab250:
.LN322:
	.stabn  68,0,238,.LN322-BuiltIn_CallEvalPred_DoOp		# line 238, column 26
	movb	$2,-13(%ebp) 
	jmp	.Lab249
.Lab251:
.LN323:
	.stabn  68,0,239,.LN323-BuiltIn_CallEvalPred_DoOp		# line 239, column 4
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5048,%eax
	jne	.Lab254
.Lab253:
.LN324:
	.stabn  68,0,239,.LN324-BuiltIn_CallEvalPred_DoOp		# line 239, column 26
	movb	$3,-13(%ebp) 
	jmp	.Lab252
.Lab254:
.LN325:
	.stabn  68,0,240,.LN325-BuiltIn_CallEvalPred_DoOp		# line 240, column 4
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5052,%eax
	jne	.Lab257
.Lab256:
.LN326:
	.stabn  68,0,240,.LN326-BuiltIn_CallEvalPred_DoOp		# line 240, column 26
	movb	$4,-13(%ebp) 
	jmp	.Lab255
.Lab257:
.LN327:
	.stabn  68,0,241,.LN327-BuiltIn_CallEvalPred_DoOp		# line 241, column 4
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5056,%eax
	jne	.Lab260
.Lab259:
.LN328:
	.stabn  68,0,241,.LN328-BuiltIn_CallEvalPred_DoOp		# line 241, column 26
	movb	$5,-13(%ebp) 
	jmp	.Lab258
.Lab260:
.LN329:
	.stabn  68,0,242,.LN329-BuiltIn_CallEvalPred_DoOp		# line 242, column 4
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5060,%eax
	jne	.Lab263
.Lab262:
.LN330:
	.stabn  68,0,242,.LN330-BuiltIn_CallEvalPred_DoOp		# line 242, column 26
	movb	$6,-13(%ebp) 
	jmp	.Lab261
.Lab263:
.LN331:
	.stabn  68,0,243,.LN331-BuiltIn_CallEvalPred_DoOp		# line 243, column 9
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN332:
	.stabn  68,0,243,.LN332-BuiltIn_CallEvalPred_DoOp		# line 243, column 27
	leave
	ret
.Lab261:
.Lab258:
.Lab255:
.Lab252:
.Lab249:
.Lab246:
.Lab243:
	movl	DISPLAY_,%eax
	movl	-16(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp) 
.LN333:
	.stabn  68,0,246,.LN333-BuiltIn_CallEvalPred_DoOp		# line 246, column 14
	movl	-20(%ebp),%ebx
	movb	-13(%ebp),%al
	movb	%al,16(%ebx) 
.LN334:
	.stabn  68,0,247,.LN334-BuiltIn_CallEvalPred_DoOp		# line 247, column 13
	movl	-20(%ebp),%ebx
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab264:
	.long	0,1200
	.text
	boundl	%eax,.Lab264
	movl	%eax,20(%ebx) 
.LN335:
	.stabn  68,0,248,.LN335-BuiltIn_CallEvalPred_DoOp		# line 248, column 0
.LBE29:
	leave
	ret
	.Lab235 = 20
	.stabs "f:31",128,0,1,-13
	.stabs "a:25",128,0,4,-12
	.stabs "p:7",128,0,4,-8
	.stabn 192,0,0,.LBB29-BuiltIn_CallEvalPred_DoOp
	.stabn 224,0,0,.LBE29-BuiltIn_CallEvalPred_DoOp
	.stabs "BuiltIn_CallEvalPred_DoPut:F16",36,0,0,BuiltIn_CallEvalPred_DoPut
	.align 4
BuiltIn_CallEvalPred_DoPut:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab265, %esp
.LN336:
	.stabn  68,0,218,.LN336-BuiltIn_CallEvalPred_DoPut		# line 218, column 1
.LBB30:
.LN337:
	.stabn  68,0,219,.LN337-BuiltIn_CallEvalPred_DoPut		# line 219, column 7
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN338:
	.stabn  68,0,220,.LN338-BuiltIn_CallEvalPred_DoPut		# line 220, column 4
	cmpl	$0,-8(%ebp)
	jl	.Lab267
.Lab268:
	cmpl	$127,-8(%ebp)
	jle	.Lab266
.Lab267:
.LN339:
	.stabn  68,0,220,.LN339-BuiltIn_CallEvalPred_DoPut		# line 220, column 51
	pushl	$5
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN340:
	.stabn  68,0,220,.LN340-BuiltIn_CallEvalPred_DoPut		# line 220, column 72
	leave
	ret
.Lab266:
.LN341:
	.stabn  68,0,221,.LN341-BuiltIn_CallEvalPred_DoPut		# line 221, column 4
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab269:
	.long	0,255
	.text
	boundl	%eax,.Lab269
	movzbl	%al,%eax
	pushl	%eax
	pushl	PFiles_s + 12
	call	PFiles_PutChar
	addl	$8, %esp
.LN342:
	.stabn  68,0,222,.LN342-BuiltIn_CallEvalPred_DoPut		# line 222, column 0
.LBE30:
	leave
	ret
	.Lab265 = 8
	.stabs "ch:7",128,0,4,-8
	.stabn 192,0,0,.LBB30-BuiltIn_CallEvalPred_DoPut
	.stabn 224,0,0,.LBE30-BuiltIn_CallEvalPred_DoPut
	.stabs "BuiltIn_CallEvalPred_DoGet0:F16",36,0,0,BuiltIn_CallEvalPred_DoGet0
	.align 4
BuiltIn_CallEvalPred_DoGet0:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab270, %esp
.LN343:
	.stabn  68,0,210,.LN343-BuiltIn_CallEvalPred_DoGet0		# line 210, column 1
.LBB31:
.LN344:
	.stabn  68,0,211,.LN344-BuiltIn_CallEvalPred_DoGet0		# line 211, column 4
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN345:
	.stabn  68,0,212,.LN345-BuiltIn_CallEvalPred_DoGet0		# line 212, column 11
	movl	DISPLAY_,%eax
	pushl	%eax
	movzbl	-5(%ebp),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab271
.Lab272:
   	call	BoundErr_		
.Lab271:
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	call	BuiltIn_IntResult
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.LN346:
	.stabn  68,0,213,.LN346-BuiltIn_CallEvalPred_DoGet0		# line 213, column 0
.LBE31:
	leave
	ret
	.Lab270 = 8
	.stabs "ch:2",128,0,1,-5
	.stabn 192,0,0,.LBB31-BuiltIn_CallEvalPred_DoGet0
	.stabn 224,0,0,.LBE31-BuiltIn_CallEvalPred_DoGet0
	.stabs "BuiltIn_CallEvalPred_DoWrite:F16",36,0,0,BuiltIn_CallEvalPred_DoWrite
	.align 4
BuiltIn_CallEvalPred_DoWrite:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab273, %esp
.LN347:
	.stabn  68,0,202,.LN347-BuiltIn_CallEvalPred_DoWrite		# line 202, column 1
.LBB32:
.LN348:
	.stabn  68,0,203,.LN348-BuiltIn_CallEvalPred_DoWrite		# line 203, column 4
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	cmpb	$1,16(%eax)
	je	.Lab274
.Lab275:
.LN349:
	.stabn  68,0,203,.LN349-BuiltIn_CallEvalPred_DoWrite		# line 203, column 40
	pushl	$11
	call	ErrorHandler_InternalError
	addl	$4, %esp
.LN350:
	.stabn  68,0,203,.LN350-BuiltIn_CallEvalPred_DoWrite		# line 203, column 59
	leave
	ret
.Lab274:
.LN351:
	.stabn  68,0,204,.LN351-BuiltIn_CallEvalPred_DoWrite		# line 204, column 4
	movl	DISPLAY_,%eax
	movl	-20(%eax),%eax
	pushl	20(%eax)
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	pushl	PFiles_s + 12
	call	WriteOut_WriteOut
	addl	$16, %esp
.LN352:
	.stabn  68,0,205,.LN352-BuiltIn_CallEvalPred_DoWrite		# line 205, column 0
.LBE32:
	leave
	ret
	.Lab273 = 4
	.stabn 192,0,0,.LBB32-BuiltIn_CallEvalPred_DoWrite
	.stabn 224,0,0,.LBE32-BuiltIn_CallEvalPred_DoWrite
	.stabs "BuiltIn_CallEvalPred_DoRead:F16",36,0,0,BuiltIn_CallEvalPred_DoRead
	.align 4
BuiltIn_CallEvalPred_DoRead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab276, %esp
.LN353:
	.stabn  68,0,190,.LN353-BuiltIn_CallEvalPred_DoRead		# line 190, column 1
.LBB33:
.LN354:
	.stabn  68,0,191,.LN354-BuiltIn_CallEvalPred_DoRead		# line 191, column 4
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Parser_ReadIn
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab279
.Lab278:
.LN355:
	.stabn  68,0,192,.LN355-BuiltIn_CallEvalPred_DoRead		# line 192, column 14
	jmp	.Lab277
.Lab279:
.LN356:
	.stabn  68,0,193,.LN356-BuiltIn_CallEvalPred_DoRead		# line 193, column 4
.Lab281:
.LN357:
	.stabn  68,0,194,.LN357-BuiltIn_CallEvalPred_DoRead		# line 194, column 14
	jmp	.Lab280
.Lab282:
.LN358:
	.stabn  68,0,196,.LN358-BuiltIn_CallEvalPred_DoRead		# line 196, column 14
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	-12(%ebp)
	movl	DISPLAY_,%eax
	pushl	-20(%eax)
	call	Unify_Unify
	addl	$20, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.Lab280:
.Lab277:
.LN359:
	.stabn  68,0,197,.LN359-BuiltIn_CallEvalPred_DoRead		# line 197, column 0
.LBE33:
	leave
	ret
	.Lab276 = 12
	.stabs "v:22",128,0,4,-12
	.stabs "x:22",128,0,4,-8
	.stabn 192,0,0,.LBB33-BuiltIn_CallEvalPred_DoRead
	.stabn 224,0,0,.LBE33-BuiltIn_CallEvalPred_DoRead
	.stabs "BuiltIn_CallEvalPred_DoCall:F16",36,0,0,BuiltIn_CallEvalPred_DoCall
	.align 4
BuiltIn_CallEvalPred_DoCall:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab283, %esp
.LN360:
	.stabn  68,0,178,.LN360-BuiltIn_CallEvalPred_DoCall		# line 178, column 1
.LBB34:
.LN361:
	.stabn  68,0,179,.LN361-BuiltIn_CallEvalPred_DoCall		# line 179, column 4
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpb	$0,16(%eax)
	je	.Lab284
.Lab285:
.LN362:
	.stabn  68,0,179,.LN362-BuiltIn_CallEvalPred_DoCall		# line 179, column 41
	pushl	$1
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN363:
	.stabn  68,0,179,.LN363-BuiltIn_CallEvalPred_DoCall		# line 179, column 59
	leave
	ret
.Lab284:
.LN364:
	.stabn  68,0,180,.LN364-BuiltIn_CallEvalPred_DoCall		# line 180, column 4
	pushl	$1
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Stacks_NewEnv
	addl	$20, %esp
.LN365:
	.stabn  68,0,181,.LN365-BuiltIn_CallEvalPred_DoCall		# line 181, column 6
	pushl	-12(%ebp)
	pushl	$1
	call	Stacks_EnvRef
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN366:
	.stabn  68,0,182,.LN366-BuiltIn_CallEvalPred_DoCall		# line 182, column 4
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	-12(%ebp)
	movl	DISPLAY_,%eax
	pushl	-24(%eax)
	pushl	-8(%ebp)
	call	Terms_Bind
	addl	$20, %esp
.LN367:
	.stabn  68,0,183,.LN367-BuiltIn_CallEvalPred_DoCall		# line 183, column 11
	movl	DISPLAY_,%eax
	pushl	%eax
	leal	-40(%ebp),%eax
	pushl	%eax
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	BuiltIn_StartExecution
	addl	$12, %esp
	popl	%ebx
	movb	%al,-5(%ebx) 
.LN368:
	.stabn  68,0,184,.LN368-BuiltIn_CallEvalPred_DoCall		# line 184, column 4
	movl	-12(%ebp),%eax
	cmpl	Stacks_s + 4,%eax
	jbe	.Lab286
.Lab287:
.LN369:
	.stabn  68,0,184,.LN369-BuiltIn_CallEvalPred_DoCall		# line 184, column 29
	call	Stacks_DisposeEnv
.Lab286:
.LN370:
	.stabn  68,0,185,.LN370-BuiltIn_CallEvalPred_DoCall		# line 185, column 0
.LBE34:
	leave
	ret
	.Lab283 = 40
	.stabs "d:18",128,0,25,-40
	.stabs "e1:36",128,0,4,-12
	.stabs "x:22",128,0,4,-8
	.stabn 192,0,0,.LBB34-BuiltIn_CallEvalPred_DoCall
	.stabn 224,0,0,.LBE34-BuiltIn_CallEvalPred_DoCall
	.stabs "BuiltIn_CallEvalPred_Evaluate:F7",36,0,0,BuiltIn_CallEvalPred_Evaluate
	.align 4
BuiltIn_CallEvalPred_Evaluate:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab288, %esp
.LN371:
	.stabn  68,0,131,.LN371-BuiltIn_CallEvalPred_Evaluate		# line 131, column 4
.LBB35:
.LN372:
	.stabn  68,0,132,.LN372-BuiltIn_CallEvalPred_Evaluate		# line 132, column 7
	cmpl	$200,12(%ebp)
	jle	.Lab289
.Lab290:
.LN373:
	.stabn  68,0,132,.LN373-BuiltIn_CallEvalPred_Evaluate		# line 132, column 32
	pushl	$12
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN374:
	.stabn  68,0,132,.LN374-BuiltIn_CallEvalPred_Evaluate		# line 132, column 51
	movl	$0,%eax
	leave
	ret
.Lab289:
.LN375:
	.stabn  68,0,133,.LN375-BuiltIn_CallEvalPred_Evaluate		# line 133, column 9
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
	movl	$16,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-20(%ebp) 
.LN376:
	.stabn  68,0,135,.LN376-BuiltIn_CallEvalPred_Evaluate		# line 135, column 10
	movl	-20(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab296:
	.long	.Lab295
	.long	.Lab294
	.long	.Lab293
	.long	.Lab293
	.text
	subl	$0,%eax
	jb	.Lab291
	cmpl	$3,%eax
	ja	.Lab291
	jmp	*.Lab296(,%eax,4)
.Lab295:
.LN377:
	.stabn  68,0,137,.LN377-BuiltIn_CallEvalPred_Evaluate		# line 137, column 11
	movl	-20(%ebp),%eax
	cmpl	$2,8(%eax)
	jne	.Lab299
.Lab298:
.LN378:
	.stabn  68,0,138,.LN378-BuiltIn_CallEvalPred_Evaluate		# line 138, column 14
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5016,%eax
	jne	.Lab302
.Lab301:
.LN379:
	.stabn  68,0,139,.LN379-BuiltIn_CallEvalPred_Evaluate		# line 139, column 17
	movl	$1,%eax
 	addl	12(%ebp),%eax 
	pushl	%eax
	movl	-20(%ebp),%eax
	pushl	12(%eax)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	leave
	ret
	jmp	.Lab300
.Lab302:
.LN380:
	.stabn  68,0,141,.LN380-BuiltIn_CallEvalPred_Evaluate		# line 141, column 19
	movl	$1,%eax
 	addl	12(%ebp),%eax 
	pushl	%eax
	movl	-20(%ebp),%eax
	pushl	12(%eax)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
.LN381:
	.stabn  68,0,142,.LN381-BuiltIn_CallEvalPred_Evaluate		# line 142, column 19
	movl	$1,%eax
 	addl	12(%ebp),%eax 
	pushl	%eax
	movl	-20(%ebp),%eax
	movl	12(%eax),%eax
	pushl	(%eax)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	movl	%eax,-16(%ebp) 
.LN382:
	.stabn  68,0,143,.LN382-BuiltIn_CallEvalPred_Evaluate		# line 143, column 19
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5076,%eax
	jne	.Lab305
.Lab304:
.LN383:
	.stabn  68,0,143,.LN383-BuiltIn_CallEvalPred_Evaluate		# line 143, column 44
	movl	-16(%ebp),%eax
 	addl	-12(%ebp),%eax 
	leave
	ret
	jmp	.Lab303
.Lab305:
.LN384:
	.stabn  68,0,144,.LN384-BuiltIn_CallEvalPred_Evaluate		# line 144, column 19
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5080,%eax
	jne	.Lab308
.Lab307:
.LN385:
	.stabn  68,0,144,.LN385-BuiltIn_CallEvalPred_Evaluate		# line 144, column 44
	movl	-12(%ebp),%eax
 	subl	-16(%ebp),%eax 
	leave
	ret
	jmp	.Lab306
.Lab308:
.LN386:
	.stabn  68,0,145,.LN386-BuiltIn_CallEvalPred_Evaluate		# line 145, column 19
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5084,%eax
	jne	.Lab311
.Lab310:
.LN387:
	.stabn  68,0,145,.LN387-BuiltIn_CallEvalPred_Evaluate		# line 145, column 44
	movl	-16(%ebp),%eax
	imull	-12(%ebp),%eax 
	leave
	ret
	jmp	.Lab309
.Lab311:
.LN388:
	.stabn  68,0,146,.LN388-BuiltIn_CallEvalPred_Evaluate		# line 146, column 19
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5088,%eax
	jne	.Lab314
.Lab313:
.LN389:
	.stabn  68,0,147,.LN389-BuiltIn_CallEvalPred_Evaluate		# line 147, column 22
	cmpl	$0,-16(%ebp)
	jne	.Lab315
.Lab316:
.LN390:
	.stabn  68,0,147,.LN390-BuiltIn_CallEvalPred_Evaluate		# line 147, column 36
	pushl	$13
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN391:
	.stabn  68,0,147,.LN391-BuiltIn_CallEvalPred_Evaluate		# line 147, column 56
	movl	$0,%eax
	leave
	ret
.Lab315:
.LN392:
	.stabn  68,0,148,.LN392-BuiltIn_CallEvalPred_Evaluate		# line 148, column 22
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	cdq
	idivl	%ebx
	leave
	ret
	jmp	.Lab312
.Lab314:
.LN393:
	.stabn  68,0,150,.LN393-BuiltIn_CallEvalPred_Evaluate		# line 150, column 19
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5092,%eax
	jne	.Lab319
.Lab318:
.LN394:
	.stabn  68,0,151,.LN394-BuiltIn_CallEvalPred_Evaluate		# line 151, column 22
	cmpl	$0,-16(%ebp)
	jne	.Lab320
.Lab321:
.LN395:
	.stabn  68,0,151,.LN395-BuiltIn_CallEvalPred_Evaluate		# line 151, column 36
	pushl	$13
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN396:
	.stabn  68,0,151,.LN396-BuiltIn_CallEvalPred_Evaluate		# line 151, column 56
	movl	$0,%eax
	leave
	ret
.Lab320:
.LN397:
	.stabn  68,0,152,.LN397-BuiltIn_CallEvalPred_Evaluate		# line 152, column 22
	movl	-12(%ebp),%eax
	movl	-16(%ebp),%ebx
	cdq
	idivl	%ebx
 	movl	%edx, %eax
	leave
	ret
	jmp	.Lab317
.Lab319:
.LN398:
	.stabn  68,0,155,.LN398-BuiltIn_CallEvalPred_Evaluate		# line 155, column 22
	pushl	$8
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN399:
	.stabn  68,0,156,.LN399-BuiltIn_CallEvalPred_Evaluate		# line 156, column 22
	movl	$0,%eax
	leave
	ret
.Lab317:
.Lab312:
.Lab309:
.Lab306:
.Lab303:
.Lab300:
	jmp	.Lab297
.Lab299:
.LN400:
	.stabn  68,0,159,.LN400-BuiltIn_CallEvalPred_Evaluate		# line 159, column 13
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5096,%eax
	jne	.Lab324
.Lab325:
	movl	-20(%ebp),%eax
	cmpl	$1,8(%eax)
	jne	.Lab324
.Lab323:
.LN401:
	.stabn  68,0,160,.LN401-BuiltIn_CallEvalPred_Evaluate		# line 160, column 16
	movl	$1,%eax
 	addl	12(%ebp),%eax 
	pushl	%eax
	movl	-20(%ebp),%eax
	pushl	12(%eax)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	negl	%eax
	leave
	ret
	jmp	.Lab322
.Lab324:
.LN402:
	.stabn  68,0,162,.LN402-BuiltIn_CallEvalPred_Evaluate		# line 162, column 16
	pushl	$8
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN403:
	.stabn  68,0,162,.LN403-BuiltIn_CallEvalPred_Evaluate		# line 162, column 36
	movl	$0,%eax
	leave
	ret
.Lab322:
.Lab297:
	jmp	.Lab292
.Lab294:
.LN404:
	.stabn  68,0,165,.LN404-BuiltIn_CallEvalPred_Evaluate		# line 165, column 13
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
	leave
	ret
	jmp	.Lab292
.Lab293:
.LN405:
	.stabn  68,0,167,.LN405-BuiltIn_CallEvalPred_Evaluate		# line 167, column 14
	pushl	$28
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN406:
	.stabn  68,0,167,.LN406-BuiltIn_CallEvalPred_Evaluate		# line 167, column 34
	movl	$0,%eax
	leave
	ret
	jmp	.Lab292
.Lab291:
	call	CaseErr_
.Lab292:
.LN407:
	.stabn  68,0,168,.LN407-BuiltIn_CallEvalPred_Evaluate		# line 168, column 0
	call	ReturnErr_
.LBE35:
	leave
	ret
	.Lab288 = 20
	.stabs "b:7",128,0,4,-16
	.stabs "a:7",128,0,4,-12
	.stabs "y:22",128,0,4,-8
	.stabs "depth:p7",160,0,4,12
	.stabs "x:p22",160,0,4,8
	.stabn 192,0,0,.LBB35-BuiltIn_CallEvalPred_Evaluate
	.stabn 224,0,0,.LBE35-BuiltIn_CallEvalPred_Evaluate
	.stabs "BuiltIn_CallEvalPred_GetArgs:F17",36,0,0,BuiltIn_CallEvalPred_GetArgs
	.align 4
BuiltIn_CallEvalPred_GetArgs:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab326, %esp
.LN408:
	.stabn  68,0,115,.LN408-BuiltIn_CallEvalPred_GetArgs		# line 115, column 4
.LBB36:
.LN409:
	.stabn  68,0,116,.LN409-BuiltIn_CallEvalPred_GetArgs		# line 116, column 9
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
.LN410:
	.stabn  68,0,117,.LN410-BuiltIn_CallEvalPred_GetArgs		# line 117, column 7
	movl	DISPLAY_,%eax
	movl	20(%eax),%ebx
	movl	-12(%ebp),%eax
	cmpl	24(%eax),%ebx
	je	.Lab327
.Lab328:
.LN411:
	.stabn  68,0,117,.LN411-BuiltIn_CallEvalPred_GetArgs		# line 117, column 38
	pushl	$0
	call	BuiltIn_CallEvalPred_PredError
	addl	$4, %esp
.LN412:
	.stabn  68,0,117,.LN412-BuiltIn_CallEvalPred_GetArgs		# line 117, column 57
.Lab327:
.LN413:
	.stabn  68,0,118,.LN413-BuiltIn_CallEvalPred_GetArgs		# line 118, column 9
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN414:
	.stabn  68,0,119,.LN414-BuiltIn_CallEvalPred_GetArgs		# line 119, column 7
	movl	DISPLAY_,%eax
	movl	20(%eax),%eax
	movl	%eax,-20(%ebp) 
	cmpl	$1,-20(%ebp)
	jl	.Lab329
	movl	$1,-8(%ebp) 
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp) 
.Lab330:
.LN415:
	.stabn  68,0,120,.LN415-BuiltIn_CallEvalPred_GetArgs		# line 120, column 20
	movl	DISPLAY_,%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab331:
	.long	1,4
	.text
	boundl	%eax,.Lab331
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	-16(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	popl	%ebx
	popl	%ecx
	movl	%eax,-28(%ecx,%ebx,4) 
.LN416:
	.stabn  68,0,121,.LN416-BuiltIn_CallEvalPred_GetArgs		# line 121, column 12
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN417:
	.stabn  68,0,119,.LN417-BuiltIn_CallEvalPred_GetArgs		# line 119, column 7
	movl	-8(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jge	.Lab329
	incl	-8(%ebp) 
	jmp	.Lab330
.Lab329:
.LN418:
	.stabn  68,0,123,.LN418-BuiltIn_CallEvalPred_GetArgs		# line 123, column 7
.LN419:
	.stabn  68,0,124,.LN419-BuiltIn_CallEvalPred_GetArgs		# line 124, column 0
	call	ReturnErr_
.LBE36:
	leave
	ret
	.Lab326 = 24
	.stabs "a:22",128,0,4,-16
	.stabs "x:22",128,0,4,-12
	.stabs "i:7",128,0,4,-8
	.stabn 192,0,0,.LBB36-BuiltIn_CallEvalPred_GetArgs
	.stabn 224,0,0,.LBE36-BuiltIn_CallEvalPred_GetArgs
	.stabs "BuiltIn_CallEvalPred_PredError:F16",36,0,0,BuiltIn_CallEvalPred_PredError
	.align 4
BuiltIn_CallEvalPred_PredError:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab332, %esp
.LN420:
	.stabn  68,0,104,.LN420-BuiltIn_CallEvalPred_PredError		# line 104, column 4
.LBB37:
.LN421:
	.stabn  68,0,105,.LN421-BuiltIn_CallEvalPred_PredError		# line 105, column 7
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	ErrorHandler_Report
	addl	$4, %esp
.LN422:
	.stabn  68,0,106,.LN422-BuiltIn_CallEvalPred_PredError		# line 106, column 7
	call	BuiltIn_CallEvalPred_ShowContext
.LN423:
	.stabn  68,0,107,.LN423-BuiltIn_CallEvalPred_PredError		# line 107, column 13
.LN424:
	.stabn  68,0,108,.LN424-BuiltIn_CallEvalPred_PredError		# line 108, column 0
.LBE37:
	leave
	ret
	.Lab332 = 4
	.stabs "e:p37",160,0,1,8
	.stabn 192,0,0,.LBB37-BuiltIn_CallEvalPred_PredError
	.stabn 224,0,0,.LBE37-BuiltIn_CallEvalPred_PredError
	.stabs "BuiltIn_CallEvalPred_ShowContext:F16",36,0,0,BuiltIn_CallEvalPred_ShowContext
	.align 4
BuiltIn_CallEvalPred_ShowContext:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab333, %esp
.LN425:
	.stabn  68,0,77,.LN425-BuiltIn_CallEvalPred_ShowContext		# line 77, column 1
.LBB38:
.LN426:
	.stabn  68,0,78,.LN426-BuiltIn_CallEvalPred_ShowContext		# line 78, column 4
	movl	DISPLAY_,%eax
	cmpl	$0,12(%eax)
	jne	.Lab334
.Lab335:
.LN427:
	.stabn  68,0,78,.LN427-BuiltIn_CallEvalPred_ShowContext		# line 78, column 22
	leave
	ret
.Lab334:
.LN428:
	.stabn  68,0,79,.LN428-BuiltIn_CallEvalPred_ShowContext		# line 79, column 9
	movl	DISPLAY_,%eax
	movl	8(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN429:
	.stabn  68,0,79,.LN429-BuiltIn_CallEvalPred_ShowContext		# line 79, column 26
	movl	DISPLAY_,%eax
	movl	12(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN430:
	.stabn  68,0,80,.LN430-BuiltIn_CallEvalPred_ShowContext		# line 80, column 4
	leal	-24(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	call	Stacks_GetEnv
	addl	$16, %esp
	jmp	.Lab336
.Lab337:
.LN431:
	.stabn  68,0,83,.LN431-BuiltIn_CallEvalPred_ShowContext		# line 83, column 12
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp) 
.LN432:
	.stabn  68,0,83,.LN432-BuiltIn_CallEvalPred_ShowContext		# line 83, column 31
	movl	-20(%ebp),%eax
	movl	%eax,-16(%ebp) 
.LN433:
	.stabn  68,0,84,.LN433-BuiltIn_CallEvalPred_ShowContext		# line 84, column 7
	leal	-24(%ebp),%eax
	pushl	%eax
	leal	-20(%ebp),%eax
	pushl	%eax
	leal	-12(%ebp),%eax
	pushl	%eax
	pushl	-16(%ebp)
	call	Stacks_GetEnv
	addl	$16, %esp
.Lab336:
.LN434:
	.stabn  68,0,81,.LN434-BuiltIn_CallEvalPred_ShowContext		# line 81, column 53
	cmpl	$0,-20(%ebp)
	jbe	.Lab338
.Lab340:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpb	$0,24(%eax)
	je	.Lab338
.Lab339:
	pushl	$1
	pushl	AtomTable_s + 5068
	pushl	-12(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab337
.Lab338:
.LN435:
	.stabn  68,0,86,.LN435-BuiltIn_CallEvalPred_ShowContext		# line 86, column 4
	cmpl	$0,-20(%ebp)
	jbe	.Lab341
.Lab342:
.LN436:
	.stabn  68,0,87,.LN436-BuiltIn_CallEvalPred_ShowContext		# line 87, column 7
	.data
.Lab343:
 	.ascii	"- in call: \000"
	.text
	pushl	$11
	leal	.Lab343,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN437:
	.stabn  68,0,88,.LN437-BuiltIn_CallEvalPred_ShowContext		# line 88, column 7
	pushl	$2
	pushl	-16(%ebp)
	pushl	-8(%ebp)
	pushl	$0
	call	WriteOut_WriteOut
	addl	$16, %esp
.LN438:
	.stabn  68,0,89,.LN438-BuiltIn_CallEvalPred_ShowContext		# line 89, column 7
	.data
.Lab344:
 	.ascii	".\000"
	.text
	pushl	$1
	leal	.Lab344,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN439:
	.stabn  68,0,90,.LN439-BuiltIn_CallEvalPred_ShowContext		# line 90, column 7
	call	InOut_WriteLn
.LN440:
	.stabn  68,0,91,.LN440-BuiltIn_CallEvalPred_ShowContext		# line 91, column 7
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpb	$1,24(%eax)
	je	.Lab345
.Lab346:
.LN441:
	.stabn  68,0,92,.LN441-BuiltIn_CallEvalPred_ShowContext		# line 92, column 10
	.data
.Lab347:
 	.ascii	"- called from \000"
	.text
	pushl	$14
	leal	.Lab347,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN442:
	.stabn  68,0,93,.LN442-BuiltIn_CallEvalPred_ShowContext		# line 93, column 10
	pushl	$0
	movl	-12(%ebp),%eax
	pushl	20(%eax)
	pushl	$0
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN443:
	.stabn  68,0,94,.LN443-BuiltIn_CallEvalPred_ShowContext		# line 94, column 10
	.data
.Lab348:
 	.ascii	"(\000"
	.text
	pushl	$1
	leal	.Lab348,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN444:
	.stabn  68,0,95,.LN444-BuiltIn_CallEvalPred_ShowContext		# line 95, column 10
	pushl	$1
	movl	-12(%ebp),%eax
	pushl	24(%eax)
	call	InOut_WriteInt
	addl	$8, %esp
.LN445:
	.stabn  68,0,96,.LN445-BuiltIn_CallEvalPred_ShowContext		# line 96, column 10
	.data
.Lab349:
 	.ascii	").\000"
	.text
	pushl	$2
	leal	.Lab349,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN446:
	.stabn  68,0,97,.LN446-BuiltIn_CallEvalPred_ShowContext		# line 97, column 10
	call	InOut_WriteLn
.Lab345:
.Lab341:
.LN447:
	.stabn  68,0,98,.LN447-BuiltIn_CallEvalPred_ShowContext		# line 98, column 0
.LBE38:
	leave
	ret
	.Lab333 = 24
	.stabs "cl:20",128,0,4,-24
	.stabs "parentenv:36",128,0,4,-20
	.stabs "goalenv:36",128,0,4,-16
	.stabs "parent:22",128,0,4,-12
	.stabs "goal:22",128,0,4,-8
	.stabn 192,0,0,.LBB38-BuiltIn_CallEvalPred_ShowContext
	.stabn 224,0,0,.LBE38-BuiltIn_CallEvalPred_ShowContext
	.stabs "BuiltIn_CallEvalPred:F17",36,0,0,BuiltIn_CallEvalPred
	.align 4
BuiltIn_CallEvalPred:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab350, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN448:
	.stabn  68,0,634,.LN448-BuiltIn_CallEvalPred		# line 634, column 1
.LBB39:
.LN449:
	.stabn  68,0,635,.LN449-BuiltIn_CallEvalPred		# line 635, column 11
	call	BuiltIn_CallEvalPred_GetArgs
	movb	%al,-5(%ebp) 
.LN450:
	.stabn  68,0,636,.LN450-BuiltIn_CallEvalPred		# line 636, column 4
.Lab352:
.LN451:
	.stabn  68,0,636,.LN451-BuiltIn_CallEvalPred		# line 636, column 22
	movb	-5(%ebp),%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab351:
.LN452:
	.stabn  68,0,637,.LN452-BuiltIn_CallEvalPred		# line 637, column 4
	movzbl	16(%ebp),%eax
	.data
	.align 4
.Lab397:
	.long	.Lab395
	.long	.Lab396
	.long	.Lab394
	.long	.Lab393
	.long	.Lab392
	.long	.Lab391
	.long	.Lab390
	.long	.Lab389
	.long	.Lab388
	.long	.Lab379
	.long	.Lab387
	.long	.Lab386
	.long	.Lab385
	.long	.Lab382
	.long	.Lab381
	.long	.Lab380
	.long	.Lab384
	.long	.Lab383
	.long	.Lab378
	.long	.Lab377
	.long	.Lab376
	.long	.Lab373
	.long	.Lab372
	.long	.Lab371
	.long	.Lab370
	.long	.Lab355
	.long	.Lab375
	.long	.Lab374
	.long	.Lab369
	.long	.Lab368
	.long	.Lab367
	.long	.Lab366
	.long	.Lab365
	.long	.Lab364
	.long	.Lab363
	.long	.Lab362
	.long	.Lab360
	.long	.Lab361
	.long	.Lab359
	.long	.Lab358
	.long	.Lab357
	.long	.Lab356
	.text
	subl	$0,%eax
	jb	.Lab353
	cmpl	$41,%eax
	ja	.Lab353
	jmp	*.Lab397(,%eax,4)
.Lab396:
.LN453:
	.stabn  68,0,638,.LN453-BuiltIn_CallEvalPred		# line 638, column 17
	pushl	12(%ebp)
	call	Stacks_Cut
	addl	$4, %esp
	jmp	.Lab354
.Lab395:
.LN454:
	.stabn  68,0,639,.LN454-BuiltIn_CallEvalPred		# line 639, column 17
	call	BuiltIn_CallEvalPred_DoCall
	jmp	.Lab354
.Lab394:
.LN455:
	.stabn  68,0,640,.LN455-BuiltIn_CallEvalPred		# line 640, column 17
	call	BuiltIn_CallEvalPred_DoRead
	jmp	.Lab354
.Lab393:
.LN456:
	.stabn  68,0,641,.LN456-BuiltIn_CallEvalPred		# line 641, column 17
	call	BuiltIn_CallEvalPred_DoWrite
	jmp	.Lab354
.Lab392:
.LN457:
	.stabn  68,0,642,.LN457-BuiltIn_CallEvalPred		# line 642, column 17
	call	BuiltIn_CallEvalPred_DoGet0
	jmp	.Lab354
.Lab391:
.LN458:
	.stabn  68,0,643,.LN458-BuiltIn_CallEvalPred		# line 643, column 17
	call	BuiltIn_CallEvalPred_DoPut
	jmp	.Lab354
.Lab390:
.LN459:
	.stabn  68,0,644,.LN459-BuiltIn_CallEvalPred		# line 644, column 17
	pushl	PFiles_s + 12
	call	PFiles_PutLn
	addl	$4, %esp
	jmp	.Lab354
.Lab389:
.LN460:
	.stabn  68,0,645,.LN460-BuiltIn_CallEvalPred		# line 645, column 24
	call	PFiles_LineEnded
	movzbl	%al,%eax
	pushl	%eax
	call	BuiltIn_CallEvalPred_BoolToResult
	addl	$4, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab388:
.LN461:
	.stabn  68,0,646,.LN461-BuiltIn_CallEvalPred		# line 646, column 24
	call	PFiles_FileEnded
	movzbl	%al,%eax
	pushl	%eax
	call	BuiltIn_CallEvalPred_BoolToResult
	addl	$4, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab387:
.LN462:
	.stabn  68,0,647,.LN462-BuiltIn_CallEvalPred		# line 647, column 17
	call	BuiltIn_CallEvalPred_DoOp
	jmp	.Lab354
.Lab386:
.LN463:
	.stabn  68,0,648,.LN463-BuiltIn_CallEvalPred		# line 648, column 17
	call	ErrorHandler_Abort
	jmp	.Lab354
.Lab385:
.LN464:
	.stabn  68,0,649,.LN464-BuiltIn_CallEvalPred		# line 649, column 17
	call	ErrorHandler_Crash
	jmp	.Lab354
.Lab384:
.LN465:
	.stabn  68,0,650,.LN465-BuiltIn_CallEvalPred		# line 650, column 17
	call	BuiltIn_CallEvalPred_DoFlag
	jmp	.Lab354
.Lab383:
.LN466:
	.stabn  68,0,651,.LN466-BuiltIn_CallEvalPred		# line 651, column 17
	call	BuiltIn_CallEvalPred_DoSetflg
	jmp	.Lab354
.Lab382:
.LN467:
	.stabn  68,0,652,.LN467-BuiltIn_CallEvalPred		# line 652, column 24
	pushl	-24(%ebp)
	call	Terms_IsAtom
	addl	$4, %esp
	movzbl	%al,%eax
	pushl	%eax
	call	BuiltIn_CallEvalPred_BoolToResult
	addl	$4, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab381:
.LN468:
	.stabn  68,0,653,.LN468-BuiltIn_CallEvalPred		# line 653, column 24
	movl	-24(%ebp),%eax
	cmpb	$1,16(%eax)
	sete	%al
	movzbl	%al,%eax
	pushl	%eax
	call	BuiltIn_CallEvalPred_BoolToResult
	addl	$4, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab380:
.LN469:
	.stabn  68,0,654,.LN469-BuiltIn_CallEvalPred		# line 654, column 24
	movl	-24(%ebp),%eax
	movzbl	16(%eax),%ebx
	movl	$12,%eax
	btl	%ebx,%eax
	setb	%al
	movzbl	%al,%eax
	pushl	%eax
	call	BuiltIn_CallEvalPred_BoolToResult
	addl	$4, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab379:
.LN470:
	.stabn  68,0,655,.LN470-BuiltIn_CallEvalPred		# line 655, column 17
	call	BuiltIn_CallEvalPred_DoName
	jmp	.Lab354
.Lab378:
.LN471:
	.stabn  68,0,656,.LN471-BuiltIn_CallEvalPred		# line 656, column 24
	pushl	$0
	pushl	-20(%ebp)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	pushl	%eax
	pushl	12(%ebp)
	pushl	-24(%ebp)
	call	BuiltIn_IntResult
	addl	$12, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab377:
.LN472:
	.stabn  68,0,658,.LN472-BuiltIn_CallEvalPred		# line 658, column 24
	pushl	$0
	pushl	-24(%ebp)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	pushl	%eax
	pushl	$0
	pushl	-20(%ebp)
	call	BuiltIn_CallEvalPred_Evaluate
	addl	$8, %esp
	popl	%ebx
	cmpl	%eax,%ebx
	setl	%al
	movzbl	%al,%eax
	pushl	%eax
	call	BuiltIn_CallEvalPred_BoolToResult
	addl	$4, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab376:
.LN473:
	.stabn  68,0,660,.LN473-BuiltIn_CallEvalPred		# line 660, column 17
	call	BuiltIn_CallEvalPred_DoAddcl
	jmp	.Lab354
.Lab375:
.LN474:
	.stabn  68,0,661,.LN474-BuiltIn_CallEvalPred		# line 661, column 17
	call	BuiltIn_CallEvalPred_DoFunctor
	jmp	.Lab354
.Lab374:
.LN475:
	.stabn  68,0,662,.LN475-BuiltIn_CallEvalPred		# line 662, column 17
	call	BuiltIn_CallEvalPred_DoArg
	jmp	.Lab354
.Lab373:
.LN476:
	.stabn  68,0,663,.LN476-BuiltIn_CallEvalPred		# line 663, column 17
	call	BuiltIn_CallEvalPred_DoClEnv
	jmp	.Lab354
.Lab372:
.LN477:
	.stabn  68,0,664,.LN477-BuiltIn_CallEvalPred		# line 664, column 17
	call	BuiltIn_CallEvalPred_DoGetCl
	jmp	.Lab354
.Lab371:
.LN478:
	.stabn  68,0,665,.LN478-BuiltIn_CallEvalPred		# line 665, column 17
	call	BuiltIn_CallEvalPred_DoAdvCl
	jmp	.Lab354
.Lab370:
.LN479:
	.stabn  68,0,666,.LN479-BuiltIn_CallEvalPred		# line 666, column 17
	call	BuiltIn_CallEvalPred_DoZap
	jmp	.Lab354
.Lab369:
.LN480:
	.stabn  68,0,667,.LN480-BuiltIn_CallEvalPred		# line 667, column 17
	pushl	$0
	call	BuiltIn_CallEvalPred_DoSelect
	addl	$4, %esp
	jmp	.Lab354
.Lab368:
.LN481:
	.stabn  68,0,668,.LN481-BuiltIn_CallEvalPred		# line 668, column 24
	pushl	$0
	pushl	12(%ebp)
	pushl	$0
	pushl	-24(%ebp)
	pushl	$0
	pushl	$0
	pushl	$0
	call	PFiles_CurrFile
	addl	$4, %esp
	pushl	%eax
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Unify_Unify
	addl	$20, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab367:
.LN482:
	.stabn  68,0,671,.LN482-BuiltIn_CallEvalPred		# line 671, column 17
	pushl	$1
	call	BuiltIn_CallEvalPred_DoSelect
	addl	$4, %esp
	jmp	.Lab354
.Lab366:
.LN483:
	.stabn  68,0,672,.LN483-BuiltIn_CallEvalPred		# line 672, column 24
	pushl	$0
	pushl	12(%ebp)
	pushl	$0
	pushl	-24(%ebp)
	pushl	$0
	pushl	$0
	pushl	$1
	call	PFiles_CurrFile
	addl	$4, %esp
	pushl	%eax
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Unify_Unify
	addl	$20, %esp
	movb	%al,-5(%ebp) 
	jmp	.Lab354
.Lab365:
.LN484:
	.stabn  68,0,675,.LN484-BuiltIn_CallEvalPred		# line 675, column 17
	call	BuiltIn_CallEvalPred_DoClose
	jmp	.Lab354
.Lab364:
.LN485:
	.stabn  68,0,676,.LN485-BuiltIn_CallEvalPred		# line 676, column 17
	call	BuiltIn_CallEvalPred_DoUcode
	jmp	.Lab354
.Lab363:
.LN486:
	.stabn  68,0,678,.LN486-BuiltIn_CallEvalPred		# line 678, column 21
	call	BuiltIn_CallEvalPred_DoTime
	jmp	.Lab354
.Lab362:
.LN487:
	.stabn  68,0,680,.LN487-BuiltIn_CallEvalPred		# line 680, column 21
	call	BuiltIn_CallEvalPred_DoInferences
	jmp	.Lab354
.Lab361:
.LN488:
	.stabn  68,0,681,.LN488-BuiltIn_CallEvalPred		# line 681, column 29
	movb	$0,OpSystem_s + 40 
	jmp	.Lab354
.Lab360:
.LN489:
	.stabn  68,0,682,.LN489-BuiltIn_CallEvalPred		# line 682, column 29
	movb	$1,OpSystem_s + 40 
	jmp	.Lab354
.Lab359:
.LN490:
	.stabn  68,0,683,.LN490-BuiltIn_CallEvalPred		# line 683, column 21
	call	BuiltIn_CallEvalPred_DoListing
	jmp	.Lab354
.Lab358:
.LN491:
	.stabn  68,0,684,.LN491-BuiltIn_CallEvalPred		# line 684, column 21
	call	BuiltIn_CallEvalPred_DoConsult
	jmp	.Lab354
.Lab357:
.LN492:
	.stabn  68,0,685,.LN492-BuiltIn_CallEvalPred		# line 685, column 21
	call	BuiltIn_CallEvalPred_DoReconsult
	jmp	.Lab354
.Lab356:
.LN493:
	.stabn  68,0,686,.LN493-BuiltIn_CallEvalPred		# line 686, column 21
	call	BuiltIn_CallEvalPred_DoCCompile
	jmp	.Lab354
.Lab355:
.LN494:
	.stabn  68,0,687,.LN494-BuiltIn_CallEvalPred		# line 687, column 21
	call	BuiltIn_CallEvalPred_DoNonsp
	jmp	.Lab354
.Lab353:
	call	CaseErr_
.Lab354:
.LN495:
	.stabn  68,0,689,.LN495-BuiltIn_CallEvalPred		# line 689, column 4
	movb	-5(%ebp),%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.LN496:
	.stabn  68,0,690,.LN496-BuiltIn_CallEvalPred		# line 690, column 0
	call	ReturnErr_
.LBE39:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab350 = 24
	.stabs "argval:39=ar4;1;4;22",128,0,16,-24
	.stabs "result:17",128,0,1,-5
	.stabs "arity:p7",160,0,4,20
	.stabs "routine:p28",160,0,1,16
	.stabs "callenv:p36",160,0,4,12
	.stabs "call:p22",160,0,4,8
	.stabn 192,0,0,.LBB39-BuiltIn_CallEvalPred
	.stabn 224,0,0,.LBE39-BuiltIn_CallEvalPred
	.stabs "BuiltIn_IntResult:F17",36,0,0,BuiltIn_IntResult
	.align 4
BuiltIn_IntResult:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab398, %esp
.LN497:
	.stabn  68,0,41,.LN497-BuiltIn_IntResult		# line 41, column 1
.LBB40:
.LN498:
	.stabn  68,0,42,.LN498-BuiltIn_IntResult		# line 42, column 5
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
	movl	$16,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN499:
	.stabn  68,0,44,.LN499-BuiltIn_IntResult		# line 44, column 6
	movl	-12(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab405:
	.long	.Lab404
	.long	.Lab403
	.long	.Lab402
	.long	.Lab401
	.text
	subl	$0,%eax
	jb	.Lab399
	cmpl	$3,%eax
	ja	.Lab399
	jmp	*.Lab405(,%eax,4)
.Lab404:
.LN500:
	.stabn  68,0,45,.LN500-BuiltIn_IntResult		# line 45, column 18
	jmp	.Lab400
.Lab403:
.LN501:
	.stabn  68,0,47,.LN501-BuiltIn_IntResult		# line 47, column 18
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	16(%ebp),%eax
	jne	.Lab408
.Lab407:
.LN502:
	.stabn  68,0,48,.LN502-BuiltIn_IntResult		# line 48, column 21
	jmp	.Lab406
.Lab408:
.LN503:
	.stabn  68,0,50,.LN503-BuiltIn_IntResult		# line 50, column 21
.Lab406:
	jmp	.Lab400
.Lab402:
.LN504:
	.stabn  68,0,53,.LN504-BuiltIn_IntResult		# line 53, column 22
	movl	-12(%ebp),%eax
	movb	$1,(%eax) 
.LN505:
	.stabn  68,0,54,.LN505-BuiltIn_IntResult		# line 54, column 23
	movl	-12(%ebp),%ebx
	movl	16(%ebp),%eax
	movl	%eax,4(%ebx) 
.LN506:
	.stabn  68,0,55,.LN506-BuiltIn_IntResult		# line 55, column 18
	pushl	-8(%ebp)
	call	Stacks_TrailVar
	addl	$4, %esp
.LN507:
	.stabn  68,0,56,.LN507-BuiltIn_IntResult		# line 56, column 18
	jmp	.Lab400
.Lab401:
.LN508:
	.stabn  68,0,58,.LN508-BuiltIn_IntResult		# line 58, column 18
	jmp	.Lab400
.Lab399:
	call	CaseErr_
.Lab400:
.LN509:
	.stabn  68,0,59,.LN509-BuiltIn_IntResult		# line 59, column 0
	call	ReturnErr_
.LBE40:
	leave
	ret
	.Lab398 = 12
	.stabs "y:22",128,0,4,-8
	.stabs "i:p7",160,0,4,16
	.stabs "e:p36",160,0,4,12
	.stabs "x:p22",160,0,4,8
	.stabn 192,0,0,.LBB40-BuiltIn_IntResult
	.stabn 224,0,0,.LBE40-BuiltIn_IntResult
	.stabs "BuiltIn:F16",36,0,0,BuiltIn
	.align 4
BuiltIn:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab409, %esp
.LN510:
	.stabn  68,0,801,.LN510-BuiltIn		# line 801, column 1
.LBB41:
.LN511:
	.stabn  68,0,802,.LN511-BuiltIn		# line 802, column 13
	movl	$0,BuiltIn_s 
.LN512:
	.stabn  68,0,803,.LN512-BuiltIn		# line 803, column 0
.LBE41:
	leave
	ret
	.Lab409 = 4
	.stabs "tagset:t40=4",128,0,0,0
	.stabs "failQ:c=i4",128,0,0,0
	.stabs "returnQ:c=i3",128,0,0,0
	.stabs "bodyQ:c=i2",128,0,0,0
	.stabs "procQ:c=i1",128,0,0,0
	.stabs "callQ:c=i0",128,0,0,0
	.stabn 192,0,0,.LBB41-BuiltIn
	.stabn 224,0,0,.LBE41-BuiltIn
	.stabs "BuiltIn_s:Gs4inferences:4,0,32;;",32,0,0,0
