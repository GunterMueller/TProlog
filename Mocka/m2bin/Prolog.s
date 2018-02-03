	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Prolog.mod",100,0,0,.LBB0
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
	.globl	WriteOut_Trace
	.globl	WriteOut_WriteOut
	.globl	WriteOut_WriteAtom
	.globl	Database_DeleteClause
	.globl	Database_AddClause
	.globl	Database_FindClause
	.globl	Unify_Unify
	.globl	BuiltIn_Execute
	.globl	BuiltIn_StartExecution
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
	.globl	Parser_ReadIn
	.globl	Parser_Rprec
	.globl	Parser_Lprec
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
	.globl	OpSystem_ReadOneTerminalLine
	.globl	OpSystem_Time
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
	.globl	Prolog
	.globl	Prolog_TopLevel
	.globl	Prolog_TopLevel_ShowResult
	.globl	Prolog_Initialise
	.globl	Prolog_ReadLib
	.stabs "Prolog_TopLevel_ShowResult:F16",36,0,0,Prolog_TopLevel_ShowResult
	.align 4
Prolog_TopLevel_ShowResult:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,104,.LN1-Prolog_TopLevel_ShowResult		# line 104, column 4
.LBB1:
.LN2:
	.stabn  68,0,106,.LN2-Prolog_TopLevel_ShowResult		# line 106, column 7
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	movl	DISPLAY_,%eax
	pushl	-12(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN3:
	.stabn  68,0,107,.LN3-Prolog_TopLevel_ShowResult		# line 107, column 6
	call	InOut_WriteLn
.LN4:
	.stabn  68,0,109,.LN4-Prolog_TopLevel_ShowResult		# line 109, column 6
	pushl	$0
	pushl	AtomTable_s + 5012
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab2
.Lab3:
.LN5:
	.stabn  68,0,111,.LN5-Prolog_TopLevel_ShowResult		# line 111, column 8
	cmpb	$0,OpSystem_s + 40
	je	.Lab6
.Lab5:
.LN6:
	.stabn  68,0,112,.LN6-Prolog_TopLevel_ShowResult		# line 112, column 12
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	movl	DISPLAY_,%eax
	pushl	-8(%eax)
	pushl	$0
	call	WriteOut_WriteOut
	addl	$16, %esp
	jmp	.Lab4
.Lab6:
	jmp	.Lab7
.Lab8:
.LN7:
	.stabn  68,0,115,.LN7-Prolog_TopLevel_ShowResult		# line 115, column 15
	call	InOut_WriteLn
.LN8:
	.stabn  68,0,116,.LN8-Prolog_TopLevel_ShowResult		# line 116, column 15
	pushl	$1
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	pushl	20(%eax)
	pushl	$0
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN9:
	.stabn  68,0,117,.LN9-Prolog_TopLevel_ShowResult		# line 117, column 15
	.data
.Lab10:
 	.ascii	" = \000"
	.text
	pushl	$3
	leal	.Lab10,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN10:
	.stabn  68,0,118,.LN10-Prolog_TopLevel_ShowResult		# line 118, column 15
	pushl	$0
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	pushl	28(%eax)
	pushl	$0
	call	WriteOut_WriteOut
	addl	$16, %esp
.LN11:
	.stabn  68,0,119,.LN11-Prolog_TopLevel_ShowResult		# line 119, column 17
	movl	DISPLAY_,%eax
	pushl	-16(%eax)
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	pushl	(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.Lab7:
.LN12:
	.stabn  68,0,114,.LN12-Prolog_TopLevel_ShowResult		# line 114, column 18
	pushl	$2
	pushl	AtomTable_s + 5016
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab8
.Lab9:
.Lab4:
.Lab2:
.LN13:
	.stabn  68,0,115,.LN13-Prolog_TopLevel_ShowResult		# line 115, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
	.stabs "evalarity:t22=4",128,0,0,0
	.stabs "evalpred:t23=eccompileR:41,reconsultR:40,consultR:39,listingR:38,showvarR:37,showtermR:36,inferencesR:35,timeR:34,ucodeR:33,closeR:32,tellingR:31,tellR:30,seeingR:29,seeR:28,argR:27,functorR:26,nonspR:25,zapR:24,advclR:23,getclR:22,clenvR:21,addclR:20,ltR:19,isR:18,setflgR:17,flagR:16,varR:15,integerR:14,atomR:13,haltR:12,abortR:11,opR:10,nameR:9,eofR:8,eolnR:7,nlR:6,putR:5,get0R:4,writeR:3,readR:2,cutR:1,callR:0,;",128,0,0,0
	.stabs "clause:t25=s36heapchain:17,256,32;backchain:24,224,32;chain:24,192,32;keyval:7,160,32;refcount:7,128,32;denied:1,96,8;nvars:7,64,32;body:17,32,32;head:17,0,32;;",128,0,0,0
	.stabs "clptr:t24=*25",128,0,0,0
	.stabs "predtype:t26=eevalP:1,normP:0,;",128,0,0,0
	.stabs "prec:t27=4",128,0,0,0
	.stabs "optype:t28=enonO:7,yfxO:6,xfyO:5,xfxO:4,yfO:3,xfO:2,fyO:1,fxO:0,;",128,0,0,0
	.stabs "strindex:t30=4",128,0,0,0
	.stabs "astring:t29=s8length:4,32,32;index:30,0,32;;",128,0,0,0
	.stabs "atomentry:t21=s32arity:22,224,32;routine:23,208,8;proc:24,224,32;pclass:26,200,8;sys:1,192,8;oprec:27,160,32;oclass:28,128,8;chain:20,96,32;atomno:7,64,32;ident:29,0,64;;",128,0,0,0
	.stabs "atom:t20=*21",128,0,0,0
	.stabs "nodetag:t31=eskelT:4,anonT:3,varT:2,intT:1,funcT:0,;",128,0,0,0
	.stabs "nodeinfo:t19=s16offset:7,32,32;dummych:2,8,8;val:17,32,32;ival:7,32,32;son:17,96,32;arity:7,64,32;name:20,32,32;tag:31,0,8;;",128,0,0,0
	.stabs "fieldtype:t32=eheapF:2,localF:1,globalF:0,;",128,0,0,0
	.stabs "node:t18=s32info:19,128,128;scope:7,96,32;field:32,64,8;chain:17,32,32;brother:17,0,32;;",128,0,0,0
	.stabs "term:t17=*18",128,0,0,0
	.stabs "z:17",128,0,4,-8
	.stabn 192,0,0,.LBB1-Prolog_TopLevel_ShowResult
	.stabn 224,0,0,.LBE1-Prolog_TopLevel_ShowResult
	.stabs "Prolog_TopLevel:F16",36,0,0,Prolog_TopLevel
	.align 4
Prolog_TopLevel:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab11, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN14:
	.stabn  68,0,126,.LN14-Prolog_TopLevel		# line 126, column 1
.LBB2:
.LN15:
	.stabn  68,0,127,.LN15-Prolog_TopLevel		# line 127, column 18
	movl	$0,OpSystem_s 
.LN16:
	.stabn  68,0,128,.LN16-Prolog_TopLevel		# line 128, column 21
	movl	$0,OpSystem_s + 4 
.Lab12:
.LN17:
	.stabn  68,0,132,.LN17-Prolog_TopLevel		# line 132, column 6
	call	InOut_WriteLn
.LN18:
	.stabn  68,0,133,.LN18-Prolog_TopLevel		# line 133, column 6
	.data
.Lab14:
 	.ascii	"?- \000"
	.text
	pushl	$3
	leal	.Lab14,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN19:
	.stabn  68,0,135,.LN19-Prolog_TopLevel		# line 135, column 6
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Parser_ReadIn
	addl	$8, %esp
	cmpb	$0,%al
	je	.Lab15
.Lab16:
.LN20:
	.stabn  68,0,137,.LN20-Prolog_TopLevel		# line 137, column 8
	call	InOut_WriteLn
.LN21:
	.stabn  68,0,138,.LN21-Prolog_TopLevel		# line 138, column 20
	movl	$0,Stacks_s + 4 
.LN22:
	.stabn  68,0,139,.LN22-Prolog_TopLevel		# line 139, column 8
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	leal	-16(%ebp),%eax
	pushl	%eax
	call	Stacks_NewEnv
	addl	$20, %esp
.LN23:
	.stabn  68,0,141,.LN23-Prolog_TopLevel		# line 141, column 8
	leal	-44(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	-8(%ebp)
	call	BuiltIn_StartExecution
	addl	$12, %esp
	movzbl	%al,%eax
	.data
	.align 4
.Lab19:
	.long	.Lab17
	.long	.Lab17
	.text
	subl	$2147483647,%eax
	jb	.Lab17
	cmpl	$1,%eax
	ja	.Lab17
	jmp	*.Lab19(,%eax,4)
.LN24:
	.stabn  68,0,143,.LN24-Prolog_TopLevel		# line 143, column 15
	call	Prolog_TopLevel_ShowResult
.LN25:
	.stabn  68,0,145,.LN25-Prolog_TopLevel		# line 145, column 15
	cmpl	$0,Stacks_s + 4
	jbe	.Lab20
.Lab21:
.LN26:
	.stabn  68,0,147,.LN26-Prolog_TopLevel		# line 147, column 18
	leal	-46(%ebp),%eax
	pushl	%eax
	call	InOut_Read
	addl	$4, %esp
.LN27:
	.stabn  68,0,148,.LN27-Prolog_TopLevel		# line 148, column 25
	jmp	.Lab22
.Lab23:
.LN28:
	.stabn  68,0,151,.LN28-Prolog_TopLevel		# line 151, column 29
	movb	$4,-20(%ebp) 
.LN29:
	.stabn  68,0,152,.LN29-Prolog_TopLevel		# line 152, column 29
	leal	-44(%ebp),%eax
	pushl	%eax
	call	BuiltIn_Execute
	addl	$4, %esp
	movb	%al,-45(%ebp) 
.LN30:
	.stabn  68,0,154,.LN30-Prolog_TopLevel		# line 154, column 22
	movzbl	-45(%ebp),%eax
	.data
	.align 4
.Lab27:
	.long	.Lab25
	.long	.Lab25
	.text
	subl	$2147483647,%eax
	jb	.Lab25
	cmpl	$1,%eax
	ja	.Lab25
	jmp	*.Lab27(,%eax,4)
.LN31:
	.stabn  68,0,156,.LN31-Prolog_TopLevel		# line 156, column 29
	call	Prolog_TopLevel_ShowResult
.LN32:
	.stabn  68,0,157,.LN32-Prolog_TopLevel		# line 157, column 29
	leal	-46(%ebp),%eax
	pushl	%eax
	call	InOut_Read
	addl	$4, %esp
.LN33:
	.stabn  68,0,161,.LN33-Prolog_TopLevel		# line 161, column 31
	.data
.Lab28:
 	.ascii	"[execution aborted]\000"
	.text
	pushl	$19
	leal	.Lab28,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.Lab25:
	call	CaseErr_
.Lab26:
.Lab22:
.LN34:
	.stabn  68,0,149,.LN34-Prolog_TopLevel		# line 149, column 50
	cmpb	$59,-46(%ebp)
	jne	.Lab24
.Lab30:
.Lab29:
	cmpl	$0,Stacks_s + 4
	ja	.Lab23
.Lab24:
.LN35:
	.stabn  68,0,167,.LN35-Prolog_TopLevel		# line 167, column 18
	cmpb	$59,-46(%ebp)
	jne	.Lab31
.Lab32:
.LN36:
	.stabn  68,0,168,.LN36-Prolog_TopLevel		# line 168, column 20
	call	InOut_WriteLn
.LN37:
	.stabn  68,0,169,.LN37-Prolog_TopLevel		# line 169, column 20
	.data
.Lab33:
 	.ascii	"no more solutions\000"
	.text
	pushl	$17
	leal	.Lab33,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN38:
	.stabn  68,0,170,.LN38-Prolog_TopLevel		# line 170, column 20
	call	InOut_WriteLn
.Lab31:
.Lab20:
.LN39:
	.stabn  68,0,175,.LN39-Prolog_TopLevel		# line 175, column 16
	.data
.Lab34:
 	.ascii	"yes\000"
	.text
	pushl	$3
	leal	.Lab34,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN40:
	.stabn  68,0,177,.LN40-Prolog_TopLevel		# line 177, column 16
	.data
.Lab35:
 	.ascii	"no\000"
	.text
	pushl	$2
	leal	.Lab35,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN41:
	.stabn  68,0,179,.LN41-Prolog_TopLevel		# line 179, column 17
	.data
.Lab36:
 	.ascii	"[execution aborted]\000"
	.text
	pushl	$19
	leal	.Lab36,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.Lab17:
	call	CaseErr_
.Lab18:
.LN42:
	.stabn  68,0,183,.LN42-Prolog_TopLevel		# line 183, column 8
	call	InOut_WriteLn
.LN43:
	.stabn  68,0,184,.LN43-Prolog_TopLevel		# line 184, column 8
	pushl	$0
	call	Stacks_KillStacks
	addl	$4, %esp
.Lab15:
.LN44:
	.stabn  68,0,188,.LN44-Prolog_TopLevel		# line 188, column 10
	jmp	.Lab12
.Lab13:
.LN45:
	.stabn  68,0,189,.LN45-Prolog_TopLevel		# line 189, column 0
.LBE2:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab11 = 48
	.stabs "ch:2",128,0,1,-46
	.stabs "UnifyResult:t33=eNoMatch:1,Match:0,;",128,0,0,0
	.stabs "success:33",128,0,1,-45
	.stabs "InterpreterState:t35=efailQ:4,returnQ:3,bodyQ:2,procQ:1,callQ:0,;",128,0,0,0
	.stabs "env:t36=4",128,0,0,0
	.stabs "ProcessDescriptor:t34=s25state:35,192,8;clausep:24,160,32;startenv:36,128,32;baseenv:36,96,32;callenv:36,64,32;envp:36,32,32;callp:17,0,32;;",128,0,0,0
	.stabs "d:34",128,0,25,-44
	.stabs "e:36",128,0,4,-16
	.stabs "v:17",128,0,4,-12
	.stabs "x:17",128,0,4,-8
	.stabn 192,0,0,.LBB2-Prolog_TopLevel
	.stabn 224,0,0,.LBE2-Prolog_TopLevel
	.stabs "Prolog_Initialise:F16",36,0,0,Prolog_Initialise
	.align 4
Prolog_Initialise:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab37, %esp
.LN46:
	.stabn  68,0,81,.LN46-Prolog_Initialise		# line 81, column 1
.LBB3:
.LN47:
	.stabn  68,0,82,.LN47-Prolog_Initialise		# line 82, column 4
	call	Prolog_ReadLib
.LN48:
	.stabn  68,0,83,.LN48-Prolog_Initialise		# line 83, column 15
	movl	AtomTable_s + 5104,%eax
	movb	$1,24(%eax) 
.LN49:
	.stabn  68,0,84,.LN49-Prolog_Initialise		# line 84, column 25
	movl	AtomTable_s + 5108,%eax
	movl	28(%eax),%ebx
	movl	AtomTable_s + 5108,%eax
	movl	28(%eax),%eax
	movl	%eax,24(%ebx) 
.LN50:
	.stabn  68,0,85,.LN50-Prolog_Initialise		# line 85, column 9
	movl	AtomTable_s + 5008,%eax
	movl	28(%eax),%eax
	movl	%eax,AtomTable_s + 5124 
.LN51:
	.stabn  68,0,86,.LN51-Prolog_Initialise		# line 86, column 9
	movl	AtomTable_s + 5024,%eax
	movl	28(%eax),%eax
	movl	24(%eax),%eax
	movl	24(%eax),%eax
	movl	%eax,AtomTable_s + 5128 
.LN52:
	.stabn  68,0,87,.LN52-Prolog_Initialise		# line 87, column 9
	movl	AtomTable_s + 5128,%eax
	movl	24(%eax),%eax
	movl	%eax,AtomTable_s + 5132 
.LN53:
	.stabn  68,0,88,.LN53-Prolog_Initialise		# line 88, column 0
.LBE3:
	leave
	ret
	.Lab37 = 4
	.stabn 192,0,0,.LBB3-Prolog_Initialise
	.stabn 224,0,0,.LBE3-Prolog_Initialise
	.stabs "Prolog_ReadLib:F16",36,0,0,Prolog_ReadLib
	.align 4
Prolog_ReadLib:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab38, %esp
.LN54:
	.stabn  68,0,49,.LN54-Prolog_ReadLib		# line 49, column 1
.LBB4:
.LN55:
	.stabn  68,0,51,.LN55-Prolog_ReadLib		# line 51, column 13
	call	OpSystem_Time
	movl	%eax,-48(%ebp) 
.LN56:
	.stabn  68,0,52,.LN56-Prolog_ReadLib		# line 52, column 4
	call	PFiles_SelectLib
	jmp	.Lab39
.Lab40:
.LN57:
	.stabn  68,0,54,.LN57-Prolog_ReadLib		# line 54, column 19
	movl	$0,Stacks_s + 4 
.LN58:
	.stabn  68,0,55,.LN58-Prolog_ReadLib		# line 55, column 7
	pushl	$0
	pushl	$0
	pushl	$0
	pushl	$0
	leal	-16(%ebp),%eax
	pushl	%eax
	call	Stacks_NewEnv
	addl	$20, %esp
.LN59:
	.stabn  68,0,56,.LN59-Prolog_ReadLib		# line 56, column 7
	leal	-12(%ebp),%eax
	pushl	%eax
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Parser_ReadIn
	addl	$8, %esp
	cmpb	$0,%al
	je	.Lab42
.Lab43:
.LN60:
	.stabn  68,0,57,.LN60-Prolog_ReadLib		# line 57, column 10
	pushl	$1
	pushl	AtomTable_s + 5028
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab46
.Lab45:
.LN61:
	.stabn  68,0,58,.LN61-Prolog_ReadLib		# line 58, column 25
	leal	-44(%ebp),%eax
	pushl	%eax
	pushl	$0
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	BuiltIn_StartExecution
	addl	$12, %esp
	movb	%al,-18(%ebp) 
	jmp	.Lab44
.Lab46:
.LN62:
	.stabn  68,0,60,.LN62-Prolog_ReadLib		# line 60, column 26
	pushl	$0
	pushl	$0
	pushl	-8(%ebp)
	call	Database_AddClause
	addl	$12, %esp
	movb	%al,-17(%ebp) 
.Lab44:
.Lab42:
.LN63:
	.stabn  68,0,63,.LN63-Prolog_ReadLib		# line 63, column 7
	pushl	$0
	call	Stacks_KillStacks
	addl	$4, %esp
.Lab39:
.LN64:
	.stabn  68,0,53,.LN64-Prolog_ReadLib		# line 53, column 10
	call	PFiles_FileEnded
	cmpb	$0,%al
	je	.Lab40
.Lab41:
.LN65:
	.stabn  68,0,65,.LN65-Prolog_ReadLib		# line 65, column 4
	call	PFiles_DropLib
.LN66:
	.stabn  68,0,67,.LN66-Prolog_ReadLib		# line 67, column 15
.LN67:
	.stabn  68,0,69,.LN67-Prolog_ReadLib		# line 69, column 4
	call	InOut_WriteLn
.LN68:
	.stabn  68,0,70,.LN68-Prolog_ReadLib		# line 70, column 4
	.data
.Lab47:
 	.ascii	"Startup file read in\000"
	.text
	pushl	$20
	leal	.Lab47,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN69:
	.stabn  68,0,71,.LN69-Prolog_ReadLib		# line 71, column 4
	pushl	$4
	movl	-52(%ebp),%eax
	movl	$1000,%ebx
	xorl	%edx,%edx
	divl	%ebx
	pushl	%eax
	call	InOut_WriteCard
	addl	$8, %esp
.LN70:
	.stabn  68,0,72,.LN70-Prolog_ReadLib		# line 72, column 4
	pushl	$46
	call	InOut_Write
	addl	$4, %esp
.LN71:
	.stabn  68,0,73,.LN71-Prolog_ReadLib		# line 73, column 4
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
.LN72:
	.stabn  68,0,74,.LN72-Prolog_ReadLib		# line 74, column 4
	.data
.Lab48:
 	.ascii	" sec.\000"
	.text
	pushl	$5
	leal	.Lab48,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN73:
	.stabn  68,0,75,.LN73-Prolog_ReadLib		# line 75, column 4
	call	InOut_WriteLn
.LN74:
	.stabn  68,0,76,.LN74-Prolog_ReadLib		# line 76, column 0
.LBE4:
	leave
	ret
	.Lab38 = 52
	.stabs "ElapsedTime:4",128,0,4,-52
	.stabs "StartTime:4",128,0,4,-48
	.stabs "d:34",128,0,25,-44
	.stabs "dummyresult:33",128,0,1,-18
	.stabs "dummysuccess:1",128,0,1,-17
	.stabs "e:36",128,0,4,-16
	.stabs "v:17",128,0,4,-12
	.stabs "x:17",128,0,4,-8
	.stabn 192,0,0,.LBB4-Prolog_ReadLib
	.stabn 224,0,0,.LBE4-Prolog_ReadLib
	.stabs "Prolog:F16",36,0,0,Prolog
	.align 4
Prolog:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab49, %esp
.LN75:
	.stabn  68,0,193,.LN75-Prolog		# line 193, column 1
.LBB5:
.LN76:
	.stabn  68,0,195,.LN76-Prolog		# line 195, column 4
	call	InOut_WriteLn
.LN77:
	.stabn  68,0,196,.LN77-Prolog		# line 196, column 4
	.data
.Lab50:
 	.ascii	"Portable Prolog Release 2.1. (MODULA-2 Version)\000"
	.text
	pushl	$47
	leal	.Lab50,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN78:
	.stabn  68,0,197,.LN78-Prolog		# line 197, column 4
	call	InOut_WriteLn
.LN79:
	.stabn  68,0,198,.LN79-Prolog		# line 198, column 4
	call	Prolog_Initialise
.LN80:
	.stabn  68,0,199,.LN80-Prolog		# line 199, column 12
	movb	$0,OpSystem_s + 40 
.LN81:
	.stabn  68,0,201,.LN81-Prolog		# line 201, column 4
	call	Prolog_TopLevel
.LN82:
	.stabn  68,0,203,.LN82-Prolog		# line 203, column 4
	call	PFiles_ReleaseFiles
.LN83:
	.stabn  68,0,204,.LN83-Prolog		# line 204, column 4
	call	InOut_WriteLn
.LN84:
	.stabn  68,0,205,.LN84-Prolog		# line 205, column 4
	.data
.Lab51:
 	.ascii	"[Leaving Prolog]\000"
	.text
	pushl	$16
	leal	.Lab51,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN85:
	.stabn  68,0,206,.LN85-Prolog		# line 206, column 4
	call	InOut_WriteLn
.LN86:
	.stabn  68,0,207,.LN86-Prolog		# line 207, column 0
.LBE5:
	leave
	ret
	.Lab49 = 4
	.stabn 192,0,0,.LBB5-Prolog
	.stabn 224,0,0,.LBE5-Prolog
