	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "WriteOut.mod",100,0,0,.LBB0
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
	.globl	OpSystem_ReadOneTerminalLine
	.globl	OpSystem_Time
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
	.globl	WriteOut
	.globl	WriteOut_Trace
	.globl	WriteOut_SysPred
	.globl	WriteOut_WriteOut
	.globl	WriteOut_WriteOut_WriteTerm
	.globl	WriteOut_WriteOut_WriteTerm_WriteFunc
	.globl	WriteOut_WriteOut_WriteTerm_WriteList
	.globl	WriteOut_WriteOut_WriteTerm_WriteSolo
	.globl	WriteOut_WriteOut_WriteTerm_WriteOp
	.globl	WriteOut_WriteOut_WriteTerm_WriteStand
	.globl	WriteOut_WriteOut_WriteVar
	.globl	WriteOut_WriteAtom
	.stabs "WriteOut_Trace:F16",36,0,0,WriteOut_Trace
	.align 4
WriteOut_Trace:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,252,.LN1-WriteOut_Trace		# line 252, column 1
.LBB1:
.LN2:
	.stabn  68,0,253,.LN2-WriteOut_Trace		# line 253, column 6
	pushl	16(%ebp)
	pushl	12(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN3:
	.stabn  68,0,255,.LN3-WriteOut_Trace		# line 255, column 4
	cmpl	$1,OpSystem_s + 12
	je	.Lab3
.Lab4:
	movl	-8(%ebp),%eax
	pushl	20(%eax)
	call	WriteOut_SysPred
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab2
.Lab3:
.LN4:
	.stabn  68,0,256,.LN4-WriteOut_Trace		# line 256, column 7
	movzbl	8(%ebp),%eax
	.data
	.align 4
.Lab9:
	.long	.Lab8
	.long	.Lab7
	.text
	subl	$0,%eax
	jb	.Lab5
	cmpl	$1,%eax
	ja	.Lab5
	jmp	*.Lab9(,%eax,4)
.Lab8:
.LN5:
	.stabn  68,0,257,.LN5-WriteOut_Trace		# line 257, column 19
	.data
.Lab10:
 	.ascii	"GOAL:   \000"
	.text
	pushl	$8
	leal	.Lab10,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
	jmp	.Lab6
.Lab7:
.LN6:
	.stabn  68,0,258,.LN6-WriteOut_Trace		# line 258, column 19
	.data
.Lab11:
 	.ascii	"PROVED: \000"
	.text
	pushl	$8
	leal	.Lab11,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
	jmp	.Lab6
.Lab5:
	call	CaseErr_
.Lab6:
.LN7:
	.stabn  68,0,260,.LN7-WriteOut_Trace		# line 260, column 7
	pushl	$2
	pushl	16(%ebp)
	pushl	-8(%ebp)
	pushl	$0
	call	WriteOut_WriteOut
	addl	$16, %esp
.LN8:
	.stabn  68,0,261,.LN8-WriteOut_Trace		# line 261, column 7
	call	InOut_WriteLn
.Lab2:
.LN9:
	.stabn  68,0,262,.LN9-WriteOut_Trace		# line 262, column 0
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
	.stabs "y:17",128,0,4,-8
	.stabs "env:t33=4",128,0,0,0
	.stabs "e:p33",160,0,4,16
	.stabs "x:p17",160,0,4,12
	.stabs "tracemessage:t34=eprovedD:1,goalD:0,;",128,0,0,0
	.stabs "m:p34",160,0,1,8
	.stabn 192,0,0,.LBB1-WriteOut_Trace
	.stabn 224,0,0,.LBE1-WriteOut_Trace
	.stabs "WriteOut_SysPred:F1",36,0,0,WriteOut_SysPred
	.align 4
WriteOut_SysPred:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab12, %esp
.LN10:
	.stabn  68,0,238,.LN10-WriteOut_SysPred		# line 238, column 1
.LBB2:
.LN11:
	.stabn  68,0,239,.LN11-WriteOut_SysPred		# line 239, column 4
	movl	8(%ebp),%eax
	cmpb	$0,24(%eax)
	je	.Lab15
.Lab14:
.LN12:
	.stabn  68,0,240,.LN12-WriteOut_SysPred		# line 240, column 7
	movb	$1,%al
	leave
	ret
	jmp	.Lab13
.Lab15:
.LN13:
	.stabn  68,0,241,.LN13-WriteOut_SysPred		# line 241, column 4
	movl	8(%ebp),%eax
	cmpl	$0,4(%eax)
	jbe	.Lab18
.Lab17:
.LN14:
	.stabn  68,0,242,.LN14-WriteOut_SysPred		# line 242, column 7
	movl	8(%ebp),%ebx
	movl	$1,%eax
 	addl	(%ebx),%eax 
	cmpl	$1,%eax
	jb	.Lab20
	cmpl	$5000,%eax
	jbe	.Lab19
.Lab20:
   	call	BoundErr_		
.Lab19:
	cmpb	$36,AtomTable_s + 7(%eax)
	sete	%al
	leave
	ret
	jmp	.Lab16
.Lab18:
.LN15:
	.stabn  68,0,244,.LN15-WriteOut_SysPred		# line 244, column 7
	movb	$0,%al
	leave
	ret
.Lab16:
.Lab13:
.LN16:
	.stabn  68,0,245,.LN16-WriteOut_SysPred		# line 245, column 0
	call	ReturnErr_
.LBE2:
	leave
	ret
	.Lab12 = 4
	.stabs "a:p20",160,0,4,8
	.stabn 192,0,0,.LBB2-WriteOut_SysPred
	.stabn 224,0,0,.LBE2-WriteOut_SysPred
	.stabs "WriteOut_WriteOut_WriteTerm_WriteFunc:F16",36,0,0,WriteOut_WriteOut_WriteTerm_WriteFunc
	.align 4
WriteOut_WriteOut_WriteTerm_WriteFunc:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab21, %esp
.LN17:
	.stabn  68,0,178,.LN17-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 178, column 7
.LBB3:
	movl	DISPLAY_ + 4,%ebx
	movl	$16,%eax
 	addl	-8(%ebx),%eax 
	movl	%eax,-12(%ebp) 
.LN18:
	.stabn  68,0,180,.LN18-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 180, column 13
	movl	-12(%ebp),%eax
	cmpl	$0,8(%eax)
	jne	.Lab24
.Lab23:
.LN19:
	.stabn  68,0,180,.LN19-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 180, column 31
	call	WriteOut_WriteOut_WriteTerm_WriteSolo
	jmp	.Lab22
.Lab24:
.LN20:
	.stabn  68,0,181,.LN20-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 181, column 13
	movl	DISPLAY_,%eax
	cmpl	$3,20(%eax)
	jne	.Lab27
.Lab26:
.LN21:
	.stabn  68,0,181,.LN21-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 181, column 34
	call	WriteOut_WriteOut_WriteTerm_WriteStand
	jmp	.Lab25
.Lab27:
.LN22:
	.stabn  68,0,182,.LN22-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 182, column 13
	movl	-12(%ebp),%eax
	cmpl	$1,8(%eax)
	jne	.Lab30
.Lab31:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5064,%eax
	jne	.Lab30
.Lab29:
.LN23:
	.stabn  68,0,183,.LN23-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 183, column 16
	pushl	$123
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN24:
	.stabn  68,0,183,.LN24-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 183, column 34
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN25:
	.stabn  68,0,184,.LN25-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 184, column 16
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	pushl	$1200
	movl	-12(%ebp),%eax
	pushl	12(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN26:
	.stabn  68,0,185,.LN26-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 185, column 16
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN27:
	.stabn  68,0,185,.LN27-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 185, column 34
	pushl	$125
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
	jmp	.Lab28
.Lab30:
.LN28:
	.stabn  68,0,187,.LN28-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 187, column 13
	movl	-12(%ebp),%eax
	cmpl	$2,8(%eax)
	jne	.Lab34
.Lab35:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5016,%eax
	jne	.Lab34
.Lab33:
.LN29:
	.stabn  68,0,187,.LN29-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 187, column 55
	call	WriteOut_WriteOut_WriteTerm_WriteList
	jmp	.Lab32
.Lab34:
.LN30:
	.stabn  68,0,188,.LN30-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 188, column 13
	movl	-12(%ebp),%eax
	cmpl	$1,8(%eax)
	jne	.Lab39
.Lab40:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	16(%eax),%ebx
	movl	$15,%eax
	btl	%ebx,%eax
	jc	.Lab37
.Lab39:
	movl	-12(%ebp),%eax
	cmpl	$2,8(%eax)
	jne	.Lab38
.Lab41:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	16(%eax),%ebx
	movl	$112,%eax
	btl	%ebx,%eax
	jnc	.Lab38
.Lab37:
.LN31:
	.stabn  68,0,192,.LN31-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 192, column 24
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movl	20(%eax),%ebx
	movl	DISPLAY_ + 4,%eax
	cmpl	12(%eax),%ebx
	seta	%al
	movb	%al,-5(%ebp) 
.LN32:
	.stabn  68,0,193,.LN32-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 193, column 16
	cmpb	$0,-5(%ebp)
	je	.Lab42
.Lab43:
.LN33:
	.stabn  68,0,193,.LN33-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 193, column 32
	pushl	$40
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab42:
.LN34:
	.stabn  68,0,194,.LN34-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 194, column 16
	call	WriteOut_WriteOut_WriteTerm_WriteOp
.LN35:
	.stabn  68,0,195,.LN35-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 195, column 16
	cmpb	$0,-5(%ebp)
	je	.Lab44
.Lab45:
.LN36:
	.stabn  68,0,195,.LN36-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 195, column 32
	pushl	$41
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab44:
	jmp	.Lab36
.Lab38:
.LN37:
	.stabn  68,0,198,.LN37-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 198, column 16
	call	WriteOut_WriteOut_WriteTerm_WriteStand
.Lab36:
.Lab32:
.Lab28:
.Lab25:
.Lab22:
.LN38:
	.stabn  68,0,199,.LN38-WriteOut_WriteOut_WriteTerm_WriteFunc		# line 199, column 0
.LBE3:
	leave
	ret
	.Lab21 = 12
	.stabs "bracket:1",128,0,1,-5
	.stabn 192,0,0,.LBB3-WriteOut_WriteOut_WriteTerm_WriteFunc
	.stabn 224,0,0,.LBE3-WriteOut_WriteOut_WriteTerm_WriteFunc
	.stabs "WriteOut_WriteOut_WriteTerm_WriteList:F16",36,0,0,WriteOut_WriteOut_WriteTerm_WriteList
	.align 4
WriteOut_WriteOut_WriteTerm_WriteList:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab46, %esp
.LN39:
	.stabn  68,0,151,.LN39-WriteOut_WriteOut_WriteTerm_WriteList		# line 151, column 7
.LBB4:
.LN40:
	.stabn  68,0,152,.LN40-WriteOut_WriteOut_WriteTerm_WriteList		# line 152, column 10
	pushl	$91
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN41:
	.stabn  68,0,153,.LN41-WriteOut_WriteOut_WriteTerm_WriteList		# line 153, column 10
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	pushl	$999
	movl	DISPLAY_ + 4,%eax
	movl	-8(%eax),%eax
	pushl	28(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN42:
	.stabn  68,0,154,.LN42-WriteOut_WriteOut_WriteTerm_WriteList		# line 154, column 12
	movl	$1,-8(%ebp) 
.LN43:
	.stabn  68,0,155,.LN43-WriteOut_WriteOut_WriteTerm_WriteList		# line 155, column 12
	movl	DISPLAY_,%eax
	pushl	16(%eax)
	movl	DISPLAY_ + 4,%eax
	movl	-8(%eax),%eax
	movl	28(%eax),%eax
	pushl	(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
	jmp	.Lab47
.Lab48:
.LN44:
	.stabn  68,0,157,.LN44-WriteOut_WriteOut_WriteTerm_WriteList		# line 157, column 13
	pushl	$44
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN45:
	.stabn  68,0,158,.LN45-WriteOut_WriteOut_WriteTerm_WriteList		# line 158, column 13
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	pushl	$999
	movl	-12(%ebp),%eax
	pushl	28(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN46:
	.stabn  68,0,159,.LN46-WriteOut_WriteOut_WriteTerm_WriteList		# line 159, column 15
	movl	DISPLAY_,%eax
	pushl	16(%eax)
	movl	-12(%ebp),%eax
	movl	28(%eax),%eax
	pushl	(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
.LN47:
	.stabn  68,0,160,.LN47-WriteOut_WriteOut_WriteTerm_WriteList		# line 160, column 15
	incl	-8(%ebp)
.Lab47:
.LN48:
	.stabn  68,0,156,.LN48-WriteOut_WriteOut_WriteTerm_WriteList		# line 156, column 34
	cmpl	$100,-8(%ebp)
	jge	.Lab49
.Lab50:
	pushl	$2
	pushl	AtomTable_s + 5016
	pushl	-12(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab48
.Lab49:
.LN49:
	.stabn  68,0,162,.LN49-WriteOut_WriteOut_WriteTerm_WriteList		# line 162, column 10
	pushl	$0
	pushl	AtomTable_s + 5012
	pushl	-12(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab51
.Lab52:
.LN50:
	.stabn  68,0,163,.LN50-WriteOut_WriteOut_WriteTerm_WriteList		# line 163, column 13
	cmpl	$100,-8(%ebp)
	jge	.Lab55
.Lab54:
.LN51:
	.stabn  68,0,164,.LN51-WriteOut_WriteOut_WriteTerm_WriteList		# line 164, column 16
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN52:
	.stabn  68,0,164,.LN52-WriteOut_WriteOut_WriteTerm_WriteList		# line 164, column 34
	pushl	$124
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN53:
	.stabn  68,0,164,.LN53-WriteOut_WriteOut_WriteTerm_WriteList		# line 164, column 52
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN54:
	.stabn  68,0,165,.LN54-WriteOut_WriteOut_WriteTerm_WriteList		# line 165, column 16
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	pushl	$999
	pushl	-12(%ebp)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
	jmp	.Lab53
.Lab55:
.LN55:
	.stabn  68,0,168,.LN55-WriteOut_WriteOut_WriteTerm_WriteList		# line 168, column 16
	pushl	$44
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN56:
	.stabn  68,0,168,.LN56-WriteOut_WriteOut_WriteTerm_WriteList		# line 168, column 34
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN57:
	.stabn  68,0,169,.LN57-WriteOut_WriteOut_WriteTerm_WriteList		# line 169, column 16
	pushl	$46
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN58:
	.stabn  68,0,169,.LN58-WriteOut_WriteOut_WriteTerm_WriteList		# line 169, column 34
	pushl	$46
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN59:
	.stabn  68,0,169,.LN59-WriteOut_WriteOut_WriteTerm_WriteList		# line 169, column 52
	pushl	$46
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab53:
.Lab51:
.LN60:
	.stabn  68,0,172,.LN60-WriteOut_WriteOut_WriteTerm_WriteList		# line 172, column 10
	pushl	$93
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN61:
	.stabn  68,0,173,.LN61-WriteOut_WriteOut_WriteTerm_WriteList		# line 173, column 0
.LBE4:
	leave
	ret
	.Lab46 = 12
	.stabs "z:17",128,0,4,-12
	.stabs "n:7",128,0,4,-8
	.stabn 192,0,0,.LBB4-WriteOut_WriteOut_WriteTerm_WriteList
	.stabn 224,0,0,.LBE4-WriteOut_WriteOut_WriteTerm_WriteList
	.stabs "WriteOut_WriteOut_WriteTerm_WriteSolo:F16",36,0,0,WriteOut_WriteOut_WriteTerm_WriteSolo
	.align 4
WriteOut_WriteOut_WriteTerm_WriteSolo:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab56, %esp
.LN62:
	.stabn  68,0,137,.LN62-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 137, column 7
.LBB5:
	movl	DISPLAY_ + 4,%ebx
	movl	$16,%eax
 	addl	-8(%ebx),%eax 
	movl	%eax,-12(%ebp) 
.LN63:
	.stabn  68,0,139,.LN63-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 139, column 21
	movl	DISPLAY_ + 4,%eax
	cmpl	$0,16(%eax)
	jle	.Lab59
.Lab57:
	movl	-12(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	16(%eax),%ebx
	movl	$3,%eax
	btl	%ebx,%eax
	jnc	.Lab59
.Lab58:
	movb	$1,-16(%ebp) 
	jmp	.Lab60
.Lab59:
	movb	$0,-16(%ebp) 
.Lab60:
	movb	-16(%ebp),%al
	movb	%al,-5(%ebp) 
.LN64:
	.stabn  68,0,140,.LN64-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 140, column 13
	cmpb	$0,-5(%ebp)
	je	.Lab61
.Lab62:
.LN65:
	.stabn  68,0,140,.LN65-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 140, column 29
	pushl	$40
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab61:
.LN66:
	.stabn  68,0,141,.LN66-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 141, column 13
	movl	DISPLAY_,%eax
	cmpl	$1,20(%eax)
	sete	%al
	movzbl	%al,%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	pushl	4(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN67:
	.stabn  68,0,142,.LN67-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 142, column 13
	cmpb	$0,-5(%ebp)
	je	.Lab63
.Lab64:
.LN68:
	.stabn  68,0,142,.LN68-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 142, column 29
	pushl	$41
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab63:
.LN69:
	.stabn  68,0,143,.LN69-WriteOut_WriteOut_WriteTerm_WriteSolo		# line 143, column 0
.LBE5:
	leave
	ret
	.Lab56 = 16
	.stabs "bracket:1",128,0,1,-5
	.stabn 192,0,0,.LBB5-WriteOut_WriteOut_WriteTerm_WriteSolo
	.stabn 224,0,0,.LBE5-WriteOut_WriteOut_WriteTerm_WriteSolo
	.stabs "WriteOut_WriteOut_WriteTerm_WriteOp:F16",36,0,0,WriteOut_WriteOut_WriteTerm_WriteOp
	.align 4
WriteOut_WriteOut_WriteTerm_WriteOp:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab65, %esp
.LN70:
	.stabn  68,0,108,.LN70-WriteOut_WriteOut_WriteTerm_WriteOp		# line 108, column 7
.LBB6:
	movl	DISPLAY_ + 4,%ebx
	movl	$16,%eax
 	addl	-8(%ebx),%eax 
	movl	%eax,-8(%ebp) 
.LN71:
	.stabn  68,0,110,.LN71-WriteOut_WriteOut_WriteTerm_WriteOp		# line 110, column 13
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab71:
	.long	.Lab70
	.long	.Lab70
	.long	.Lab69
	.long	.Lab69
	.long	.Lab68
	.long	.Lab68
	.long	.Lab68
	.text
	subl	$0,%eax
	jb	.Lab66
	cmpl	$6,%eax
	ja	.Lab66
	jmp	*.Lab71(,%eax,4)
.Lab70:
.LN72:
	.stabn  68,0,112,.LN72-WriteOut_WriteOut_WriteTerm_WriteOp		# line 112, column 22
	movl	DISPLAY_,%eax
	cmpl	$1,20(%eax)
	sete	%al
	movzbl	%al,%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN73:
	.stabn  68,0,113,.LN73-WriteOut_WriteOut_WriteTerm_WriteOp		# line 113, column 22
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN74:
	.stabn  68,0,114,.LN74-WriteOut_WriteOut_WriteTerm_WriteOp		# line 114, column 22
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	Parser_Rprec
	addl	$4, %esp
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	12(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
	jmp	.Lab67
.Lab69:
.LN75:
	.stabn  68,0,117,.LN75-WriteOut_WriteOut_WriteTerm_WriteOp		# line 117, column 22
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	Parser_Lprec
	addl	$4, %esp
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	12(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN76:
	.stabn  68,0,118,.LN76-WriteOut_WriteOut_WriteTerm_WriteOp		# line 118, column 22
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN77:
	.stabn  68,0,119,.LN77-WriteOut_WriteOut_WriteTerm_WriteOp		# line 119, column 22
	movl	DISPLAY_,%eax
	cmpl	$1,20(%eax)
	sete	%al
	movzbl	%al,%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	WriteOut_WriteAtom
	addl	$12, %esp
	jmp	.Lab67
.Lab68:
.LN78:
	.stabn  68,0,122,.LN78-WriteOut_WriteOut_WriteTerm_WriteOp		# line 122, column 22
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	Parser_Lprec
	addl	$4, %esp
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	12(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN79:
	.stabn  68,0,123,.LN79-WriteOut_WriteOut_WriteTerm_WriteOp		# line 123, column 22
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5008,%eax
	je	.Lab72
.Lab74:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5024,%eax
	je	.Lab72
.Lab73:
.LN80:
	.stabn  68,0,124,.LN80-WriteOut_WriteOut_WriteTerm_WriteOp		# line 124, column 25
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab72:
.LN81:
	.stabn  68,0,125,.LN81-WriteOut_WriteOut_WriteTerm_WriteOp		# line 125, column 22
	movl	DISPLAY_,%eax
	cmpl	$1,20(%eax)
	je	.Lab76
.Lab75:
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	AtomTable_s + 5008,%eax
	jne	.Lab77
.Lab76:
	movb	$1,-12(%ebp) 
	jmp	.Lab78
.Lab77:
	movb	$0,-12(%ebp) 
.Lab78:
	movzbl	-12(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN82:
	.stabn  68,0,126,.LN82-WriteOut_WriteOut_WriteTerm_WriteOp		# line 126, column 22
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN83:
	.stabn  68,0,127,.LN83-WriteOut_WriteOut_WriteTerm_WriteOp		# line 127, column 22
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	4(%eax)
	call	Parser_Rprec
	addl	$4, %esp
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	pushl	(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
	jmp	.Lab67
.Lab66:
	call	CaseErr_
.Lab67:
.LN84:
	.stabn  68,0,128,.LN84-WriteOut_WriteOut_WriteTerm_WriteOp		# line 128, column 0
.LBE6:
	leave
	ret
	.Lab65 = 12
	.stabn 192,0,0,.LBB6-WriteOut_WriteOut_WriteTerm_WriteOp
	.stabn 224,0,0,.LBE6-WriteOut_WriteOut_WriteTerm_WriteOp
	.stabs "WriteOut_WriteOut_WriteTerm_WriteStand:F16",36,0,0,WriteOut_WriteOut_WriteTerm_WriteStand
	.align 4
WriteOut_WriteOut_WriteTerm_WriteStand:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab79, %esp
.LN85:
	.stabn  68,0,91,.LN85-WriteOut_WriteOut_WriteTerm_WriteStand		# line 91, column 7
.LBB7:
	movl	DISPLAY_ + 4,%ebx
	movl	$16,%eax
 	addl	-8(%ebx),%eax 
	movl	%eax,-12(%ebp) 
.LN86:
	.stabn  68,0,93,.LN86-WriteOut_WriteOut_WriteTerm_WriteStand		# line 93, column 13
	movl	DISPLAY_,%eax
	cmpl	$1,20(%eax)
	sete	%al
	movzbl	%al,%eax
	pushl	%eax
	movl	-12(%ebp),%eax
	pushl	4(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	WriteOut_WriteAtom
	addl	$12, %esp
.LN87:
	.stabn  68,0,94,.LN87-WriteOut_WriteOut_WriteTerm_WriteStand		# line 94, column 13
	pushl	$40
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN88:
	.stabn  68,0,95,.LN88-WriteOut_WriteOut_WriteTerm_WriteStand		# line 95, column 13
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	pushl	$999
	movl	-12(%ebp),%eax
	pushl	12(%eax)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN89:
	.stabn  68,0,96,.LN89-WriteOut_WriteOut_WriteTerm_WriteStand		# line 96, column 15
	movl	-12(%ebp),%eax
	movl	12(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab80
.Lab81:
.LN90:
	.stabn  68,0,99,.LN90-WriteOut_WriteOut_WriteTerm_WriteStand		# line 99, column 13
	pushl	$44
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN91:
	.stabn  68,0,99,.LN91-WriteOut_WriteOut_WriteTerm_WriteStand		# line 99, column 31
	pushl	$32
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN92:
	.stabn  68,0,100,.LN92-WriteOut_WriteOut_WriteTerm_WriteStand		# line 100, column 13
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	pushl	%eax
	pushl	$999
	pushl	-8(%ebp)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN93:
	.stabn  68,0,101,.LN93-WriteOut_WriteOut_WriteTerm_WriteStand		# line 101, column 15
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab80:
.LN94:
	.stabn  68,0,98,.LN94-WriteOut_WriteOut_WriteTerm_WriteStand		# line 98, column 18
	cmpl	$0,-8(%ebp)
	jne	.Lab81
.Lab82:
.LN95:
	.stabn  68,0,103,.LN95-WriteOut_WriteOut_WriteTerm_WriteStand		# line 103, column 10
	pushl	$41
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN96:
	.stabn  68,0,104,.LN96-WriteOut_WriteOut_WriteTerm_WriteStand		# line 104, column 0
.LBE7:
	leave
	ret
	.Lab79 = 12
	.stabs "s:17",128,0,4,-8
	.stabn 192,0,0,.LBB7-WriteOut_WriteOut_WriteTerm_WriteStand
	.stabn 224,0,0,.LBE7-WriteOut_WriteOut_WriteTerm_WriteStand
	.stabs "WriteOut_WriteOut_WriteTerm:F16",36,0,0,WriteOut_WriteOut_WriteTerm
	.align 4
WriteOut_WriteOut_WriteTerm:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab83, %esp
	movl	DISPLAY_+4,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+4
.LN97:
	.stabn  68,0,203,.LN97-WriteOut_WriteOut_WriteTerm		# line 203, column 4
.LBB8:
.LN98:
	.stabn  68,0,204,.LN98-WriteOut_WriteOut_WriteTerm		# line 204, column 7
	cmpl	$100,16(%ebp)
	jne	.Lab86
.Lab85:
.LN99:
	.stabn  68,0,205,.LN99-WriteOut_WriteOut_WriteTerm		# line 205, column 10
	pushl	$46
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN100:
	.stabn  68,0,205,.LN100-WriteOut_WriteOut_WriteTerm		# line 205, column 28
	pushl	$46
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN101:
	.stabn  68,0,205,.LN101-WriteOut_WriteOut_WriteTerm		# line 205, column 46
	pushl	$46
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
	jmp	.Lab84
.Lab86:
.LN102:
	.stabn  68,0,208,.LN102-WriteOut_WriteOut_WriteTerm		# line 208, column 12
	movl	DISPLAY_,%eax
	pushl	16(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp) 
	movl	$16,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-16(%ebp) 
.LN103:
	.stabn  68,0,211,.LN103-WriteOut_WriteOut_WriteTerm		# line 211, column 16
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab93:
	.long	.Lab92
	.long	.Lab91
	.long	.Lab90
	.long	.Lab89
	.text
	subl	$0,%eax
	jb	.Lab87
	cmpl	$3,%eax
	ja	.Lab87
	jmp	*.Lab93(,%eax,4)
.Lab92:
.LN104:
	.stabn  68,0,213,.LN104-WriteOut_WriteOut_WriteTerm		# line 213, column 22
	call	WriteOut_WriteOut_WriteTerm_WriteFunc
	jmp	.Lab88
.Lab91:
.LN105:
	.stabn  68,0,215,.LN105-WriteOut_WriteOut_WriteTerm		# line 215, column 22
	movl	-16(%ebp),%eax
	cmpl	$0,4(%eax)
	jl	.Lab96
.Lab95:
.LN106:
	.stabn  68,0,216,.LN106-WriteOut_WriteOut_WriteTerm		# line 216, column 25
	movl	-16(%ebp),%eax
	pushl	4(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutNum
	addl	$8, %esp
	jmp	.Lab94
.Lab96:
.LN107:
	.stabn  68,0,218,.LN107-WriteOut_WriteOut_WriteTerm		# line 218, column 25
	pushl	$126
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN108:
	.stabn  68,0,218,.LN108-WriteOut_WriteOut_WriteTerm		# line 218, column 43
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	negl	%eax
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutNum
	addl	$8, %esp
.Lab94:
	jmp	.Lab88
.Lab90:
.LN109:
	.stabn  68,0,221,.LN109-WriteOut_WriteOut_WriteTerm		# line 221, column 22
	pushl	-8(%ebp)
	call	WriteOut_WriteOut_WriteVar
	addl	$4, %esp
	jmp	.Lab88
.Lab89:
.LN110:
	.stabn  68,0,223,.LN110-WriteOut_WriteOut_WriteTerm		# line 223, column 22
	pushl	$95
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
	jmp	.Lab88
.Lab87:
	call	CaseErr_
.Lab88:
.Lab84:
.LN111:
	.stabn  68,0,224,.LN111-WriteOut_WriteOut_WriteTerm		# line 224, column 0
.LBE8:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
	.Lab83 = 16
	.stabs "y:17",128,0,4,-8
	.stabs "depth:p7",160,0,4,16
	.stabs "p:p27",160,0,4,12
	.stabs "x:p17",160,0,4,8
	.stabn 192,0,0,.LBB8-WriteOut_WriteOut_WriteTerm
	.stabn 224,0,0,.LBE8-WriteOut_WriteOut_WriteTerm
	.stabs "WriteOut_WriteOut_WriteVar:F16",36,0,0,WriteOut_WriteOut_WriteVar
	.align 4
WriteOut_WriteOut_WriteVar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab97, %esp
.LN112:
	.stabn  68,0,77,.LN112-WriteOut_WriteOut_WriteVar		# line 77, column 4
.LBB9:
.LN113:
	.stabn  68,0,78,.LN113-WriteOut_WriteOut_WriteVar		# line 78, column 7
	pushl	$95
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.LN114:
	.stabn  68,0,79,.LN114-WriteOut_WriteOut_WriteVar		# line 79, column 7
	movl	8(%ebp),%eax
	cmpb	$1,8(%eax)
	jne	.Lab98
.Lab99:
.LN115:
	.stabn  68,0,79,.LN115-WriteOut_WriteOut_WriteVar		# line 79, column 33
	pushl	$95
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab98:
.LN116:
	.stabn  68,0,80,.LN116-WriteOut_WriteOut_WriteVar		# line 80, column 7
	movl	8(%ebp),%eax
	pushl	12(%eax)
	movl	DISPLAY_,%eax
	pushl	8(%eax)
	call	PFiles_PutNum
	addl	$8, %esp
.LN117:
	.stabn  68,0,81,.LN117-WriteOut_WriteOut_WriteVar		# line 81, column 0
.LBE9:
	leave
	ret
	.Lab97 = 4
	.stabs "x:p17",160,0,4,8
	.stabn 192,0,0,.LBB9-WriteOut_WriteOut_WriteVar
	.stabn 224,0,0,.LBE9-WriteOut_WriteOut_WriteVar
	.stabs "WriteOut_WriteOut:F16",36,0,0,WriteOut_WriteOut
	.align 4
WriteOut_WriteOut:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab100, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN118:
	.stabn  68,0,230,.LN118-WriteOut_WriteOut		# line 230, column 1
.LBB10:
.LN119:
	.stabn  68,0,231,.LN119-WriteOut_WriteOut		# line 231, column 4
	pushl	$0
	pushl	$1200
	pushl	12(%ebp)
	call	WriteOut_WriteOut_WriteTerm
	addl	$12, %esp
.LN120:
	.stabn  68,0,232,.LN120-WriteOut_WriteOut		# line 232, column 0
.LBE10:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab100 = 4
	.stabs "style:p7",160,0,4,20
	.stabs "e:p33",160,0,4,16
	.stabs "x:p17",160,0,4,12
	.stabs "filedesc:t35=4",128,0,0,0
	.stabs "fd:p35",160,0,4,8
	.stabn 192,0,0,.LBB10-WriteOut_WriteOut
	.stabn 224,0,0,.LBE10-WriteOut_WriteOut
	.stabs "WriteOut_WriteAtom:F16",36,0,0,WriteOut_WriteAtom
	.align 4
WriteOut_WriteAtom:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab101, %esp
.LN121:
	.stabn  68,0,36,.LN121-WriteOut_WriteAtom		# line 36, column 1
.LBB11:
	movl	$0,%eax
 	addl	12(%ebp),%eax 
	movl	%eax,-20(%ebp) 
.LN122:
	.stabn  68,0,38,.LN122-WriteOut_WriteAtom		# line 38, column 7
	cmpb	$1,16(%ebp)
	je	.Lab103
.Lab108:
	movl	12(%ebp),%eax
	cmpl	AtomTable_s + 5024,%eax
	je	.Lab103
.Lab107:
	movl	12(%ebp),%eax
	cmpl	AtomTable_s + 5020,%eax
	je	.Lab103
.Lab106:
	movl	12(%ebp),%eax
	cmpl	AtomTable_s + 5012,%eax
	je	.Lab103
.Lab105:
	movl	12(%ebp),%eax
	cmpl	AtomTable_s + 5064,%eax
	jne	.Lab104
.Lab103:
.LN123:
	.stabn  68,0,40,.LN123-WriteOut_WriteAtom		# line 40, column 16
	movb	$0,-13(%ebp) 
	jmp	.Lab102
.Lab104:
.LN124:
	.stabn  68,0,41,.LN124-WriteOut_WriteAtom		# line 41, column 7
	movl	-20(%ebp),%eax
	cmpl	$0,4(%eax)
	je	.Lab110
.Lab112:
	movl	12(%ebp),%eax
	cmpl	AtomTable_s + 5016,%eax
	jne	.Lab111
.Lab110:
.LN125:
	.stabn  68,0,42,.LN125-WriteOut_WriteAtom		# line 42, column 16
	movb	$1,-13(%ebp) 
	jmp	.Lab109
.Lab111:
.LN126:
	.stabn  68,0,43,.LN126-WriteOut_WriteAtom		# line 43, column 7
	movl	-20(%ebp),%ebx
	movl	$1,%eax
 	addl	(%ebx),%eax 
	cmpl	$1,%eax
	jb	.Lab117
	cmpl	$5000,%eax
	jbe	.Lab116
.Lab117:
   	call	BoundErr_		
.Lab116:
	movzbl	AtomTable_s + 7(%eax),%eax
	cmpl	$255,%eax
	jbe	.Lab118
.Lab119:
   	call	BoundErr_		
.Lab118:
	movzbl	PFiles_s + 16(%eax),%ebx
	movl	$9,%eax
	btl	%ebx,%eax
	jc	.Lab115
.Lab114:
.LN127:
	.stabn  68,0,45,.LN127-WriteOut_WriteAtom		# line 45, column 16
	movb	$1,-13(%ebp) 
	jmp	.Lab113
.Lab115:
.LN128:
	.stabn  68,0,47,.LN128-WriteOut_WriteAtom		# line 47, column 12
	movl	-20(%ebp),%ebx
	movl	$2,%eax
 	addl	(%ebx),%eax 
	movl	%eax,-8(%ebp) 
.LN129:
	.stabn  68,0,47,.LN129-WriteOut_WriteAtom		# line 47, column 32
	movb	$0,-13(%ebp) 
.LN130:
	.stabn  68,0,48,.LN130-WriteOut_WriteAtom		# line 48, column 10
	movl	-20(%ebp),%ebx
	movl	$1,%eax
 	addl	(%ebx),%eax 
	cmpl	$1,%eax
	jb	.Lab125
	cmpl	$5000,%eax
	jbe	.Lab124
.Lab125:
   	call	BoundErr_		
.Lab124:
	movzbl	AtomTable_s + 7(%eax),%eax
	cmpl	$255,%eax
	jbe	.Lab126
.Lab127:
   	call	BoundErr_		
.Lab126:
	movzbl	PFiles_s + 16(%eax),%eax
	.data
	.align 4
.Lab128:
	.long	.Lab123
	.long	.Lab120
	.long	.Lab120
	.long	.Lab122
	.text
	subl	$0,%eax
	jb	.Lab120
	cmpl	$3,%eax
	ja	.Lab120
	jmp	*.Lab128(,%eax,4)
.Lab123:
.LN131:
	.stabn  68,0,49,.LN131-WriteOut_WriteAtom		# line 49, column 30
	movl	$7,-12(%ebp) 
	jmp	.Lab121
.Lab122:
.LN132:
	.stabn  68,0,50,.LN132-WriteOut_WriteAtom		# line 50, column 30
	movl	$8,-12(%ebp) 
	jmp	.Lab121
.Lab120:
	call	CaseErr_
.Lab121:
	jmp	.Lab129
.Lab130:
.LN133:
	.stabn  68,0,53,.LN133-WriteOut_WriteAtom		# line 53, column 13
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab136
	cmpl	$5000,%eax
	jbe	.Lab135
.Lab136:
   	call	BoundErr_		
.Lab135:
	movzbl	AtomTable_s + 7(%eax),%eax
	cmpl	$255,%eax
	jbe	.Lab137
.Lab138:
   	call	BoundErr_		
.Lab137:
	movzbl	PFiles_s + 16(%eax),%eax
	btl	%eax,-12(%ebp)
	jnc	.Lab134
.Lab133:
.LN134:
	.stabn  68,0,54,.LN134-WriteOut_WriteAtom		# line 54, column 18
	incl	-8(%ebp)
	jmp	.Lab132
.Lab134:
.LN135:
	.stabn  68,0,56,.LN135-WriteOut_WriteAtom		# line 56, column 22
	movb	$1,-13(%ebp) 
.Lab132:
.Lab129:
.LN136:
	.stabn  68,0,52,.LN136-WriteOut_WriteAtom		# line 52, column 36
	movl	-20(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
 	addl	(%ebx),%eax 
	cmpl	%eax,-8(%ebp)
	ja	.Lab131
.Lab139:
	cmpb	$0,-13(%ebp)
	je	.Lab130
.Lab131:
.Lab113:
.Lab109:
.Lab102:
.LN137:
	.stabn  68,0,60,.LN137-WriteOut_WriteAtom		# line 60, column 7
	cmpb	$0,-13(%ebp)
	je	.Lab140
.Lab141:
.LN138:
	.stabn  68,0,60,.LN138-WriteOut_WriteAtom		# line 60, column 21
	pushl	$39
	pushl	8(%ebp)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab140:
.LN139:
	.stabn  68,0,61,.LN139-WriteOut_WriteAtom		# line 61, column 7
	movl	-20(%ebp),%ebx
	movl	$1,%eax
 	addl	(%ebx),%eax 
	movl	%eax,-24(%ebp) 
	movl	-20(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	4(%eax),%eax
 	addl	(%ebx),%eax 
	movl	%eax,-28(%ebp) 
	movl	-24(%ebp),%eax
	cmpl	-28(%ebp),%eax
	ja	.Lab142
	movl	-24(%ebp),%eax
	movl	%eax,-8(%ebp) 
	movl	-28(%ebp),%eax
	movl	%eax,-32(%ebp) 
.Lab143:
.LN140:
	.stabn  68,0,62,.LN140-WriteOut_WriteAtom		# line 62, column 10
	cmpb	$0,-13(%ebp)
	je	.Lab146
.Lab147:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab149
	cmpl	$5000,%eax
	jbe	.Lab148
.Lab149:
   	call	BoundErr_		
.Lab148:
	cmpb	$39,AtomTable_s + 7(%eax)
	jne	.Lab146
.Lab145:
.LN141:
	.stabn  68,0,63,.LN141-WriteOut_WriteAtom		# line 63, column 13
	pushl	$39
	pushl	8(%ebp)
	call	PFiles_PutChar
	addl	$8, %esp
.LN142:
	.stabn  68,0,63,.LN142-WriteOut_WriteAtom		# line 63, column 31
	pushl	$39
	pushl	8(%ebp)
	call	PFiles_PutChar
	addl	$8, %esp
	jmp	.Lab144
.Lab146:
.LN143:
	.stabn  68,0,65,.LN143-WriteOut_WriteAtom		# line 65, column 13
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab151
	cmpl	$5000,%eax
	jbe	.Lab150
.Lab151:
   	call	BoundErr_		
.Lab150:
	movzbl	AtomTable_s + 7(%eax),%eax
	pushl	%eax
	pushl	8(%ebp)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab144:
.LN144:
	.stabn  68,0,61,.LN144-WriteOut_WriteAtom		# line 61, column 7
	movl	-8(%ebp),%eax
	cmpl	-32(%ebp),%eax
	jae	.Lab142
	incl	-8(%ebp) 
	jmp	.Lab143
.Lab142:
.LN145:
	.stabn  68,0,68,.LN145-WriteOut_WriteAtom		# line 68, column 7
	cmpb	$0,-13(%ebp)
	je	.Lab152
.Lab153:
.LN146:
	.stabn  68,0,68,.LN146-WriteOut_WriteAtom		# line 68, column 21
	pushl	$39
	pushl	8(%ebp)
	call	PFiles_PutChar
	addl	$8, %esp
.Lab152:
.LN147:
	.stabn  68,0,69,.LN147-WriteOut_WriteAtom		# line 69, column 0
.LBE11:
	leave
	ret
	.Lab101 = 32
	.stabs "quote:1",128,0,1,-13
	.stabs "cset:t36=4",128,0,0,0
	.stabs "fashion:36",128,0,4,-12
	.stabs "n:4",128,0,4,-8
	.stabs "literal:p1",160,0,1,16
	.stabs "a:p20",160,0,4,12
	.stabs "fd:p35",160,0,4,8
	.stabn 192,0,0,.LBB11-WriteOut_WriteAtom
	.stabn 224,0,0,.LBE11-WriteOut_WriteAtom
	.stabs "WriteOut:F16",36,0,0,WriteOut
	.align 4
WriteOut:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab154, %esp
.LN148:
	.stabn  68,0,265,.LN148-WriteOut		# line 265, column 1
.LBB12:
.LN149:
	.stabn  68,0,266,.LN149-WriteOut		# line 266, column 0
.LBE12:
	leave
	ret
	.Lab154 = 4
	.stabs "opset:t37=4",128,0,0,0
	.stabs "WriteLength:c=i100",128,0,0,0
	.stabs "WriteDepth:c=i100",128,0,0,0
	.stabs "provedD:c=i1",128,0,0,0
	.stabs "goalD:c=i0",128,0,0,0
	.stabn 192,0,0,.LBB12-WriteOut
	.stabn 224,0,0,.LBE12-WriteOut
