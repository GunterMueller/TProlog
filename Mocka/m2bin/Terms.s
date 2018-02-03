	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Terms.mod",100,0,0,.LBB0
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
	.globl	ErrorHandler_InternalError
	.globl	ErrorHandler_ExecError
	.globl	ErrorHandler_Report
	.globl	ErrorHandler_Abort
	.globl	ErrorHandler_Crash
	.globl	AtomTable_LookUp
	.globl	AtomTable_AtomChar
	.globl	AtomTable_StartAtom
	.globl	Stacks_ChangeClause
	.globl	Stacks_EnvRef
	.globl	Stacks_KillStacks
	.globl	Stacks_DisposeEnv
	.globl	Stacks_Cut
	.globl	Stacks_GetEnv
	.globl	Stacks_NewEnv
	.globl	Stacks_NewGlobal
	.globl	Stacks_TrailVar
	.globl	OpSystem_ReadOneTerminalLine
	.globl	OpSystem_Time
	.globl	Terms
	.globl	Terms_GetBody
	.globl	Terms_Bind
	.globl	Terms_Bind_CopyArgs
	.globl	Terms_Bind_Copy
	.globl	Terms_BindVars
	.globl	Terms_Deref
	.globl	Terms_ListRep
	.globl	Terms_IsAtom
	.globl	Terms_IsFunc
	.globl	Terms_MakeBros
	.globl	Terms_MakeVar
	.globl	Terms_MakeInt
	.globl	Terms_MakeFunc
	.stabs "Terms_GetBody:F16",36,0,0,Terms_GetBody
	.align 4
Terms_GetBody:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,222,.LN1-Terms_GetBody		# line 222, column 1
.LBB1:
.LN2:
	.stabn  68,0,223,.LN2-Terms_GetBody		# line 223, column 4
	cmpl	$0,12(%ebp)
	jne	.Lab4
.Lab3:
.LN3:
	.stabn  68,0,224,.LN3-Terms_GetBody		# line 224, column 7
	pushl	$0
	pushl	$0
	pushl	16(%ebp)
	pushl	$0
	pushl	$0
	pushl	AtomTable_s + 5100
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	pushl	8(%ebp)
	call	Terms_Bind
	addl	$20, %esp
	jmp	.Lab2
.Lab4:
.LN4:
	.stabn  68,0,225,.LN4-Terms_GetBody		# line 225, column 4
	movl	12(%ebp),%eax
	cmpl	$0,(%eax)
	jne	.Lab7
.Lab6:
.LN5:
	.stabn  68,0,226,.LN5-Terms_GetBody		# line 226, column 7
	pushl	$0
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Terms_Bind
	addl	$20, %esp
	jmp	.Lab5
.Lab7:
.LN6:
	.stabn  68,0,228,.LN6-Terms_GetBody		# line 228, column 7
	pushl	$0
	pushl	20(%ebp)
	pushl	$0
	pushl	$0
	call	Terms_MakeVar
	addl	$4, %esp
	pushl	%eax
	pushl	$0
	call	Terms_MakeVar
	addl	$4, %esp
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	pushl	%eax
	pushl	$2
	pushl	AtomTable_s + 5008
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	pushl	8(%ebp)
	call	Terms_Bind
	addl	$20, %esp
.LN7:
	.stabn  68,0,230,.LN7-Terms_GetBody		# line 230, column 7
	pushl	$0
	pushl	20(%ebp)
	pushl	$0
	pushl	12(%ebp)
	movl	8(%ebp),%eax
	pushl	28(%eax)
	call	Terms_Bind
	addl	$20, %esp
.LN8:
	.stabn  68,0,231,.LN8-Terms_GetBody		# line 231, column 7
	pushl	20(%ebp)
	pushl	$0
	movl	12(%ebp),%eax
	pushl	(%eax)
	movl	8(%ebp),%eax
	movl	28(%eax),%eax
	pushl	(%eax)
	call	Terms_GetBody
	addl	$16, %esp
.Lab5:
.Lab2:
.LN9:
	.stabn  68,0,232,.LN9-Terms_GetBody		# line 232, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabs "env:t17=4",128,0,0,0
	.stabs "eb:p17",160,0,4,20
	.stabs "ev:p17",160,0,4,16
	.stabs "evalarity:t23=4",128,0,0,0
	.stabs "evalpred:t24=eccompileR:41,reconsultR:40,consultR:39,listingR:38,showvarR:37,showtermR:36,inferencesR:35,timeR:34,ucodeR:33,closeR:32,tellingR:31,tellR:30,seeingR:29,seeR:28,argR:27,functorR:26,nonspR:25,zapR:24,advclR:23,getclR:22,clenvR:21,addclR:20,ltR:19,isR:18,setflgR:17,flagR:16,varR:15,integerR:14,atomR:13,haltR:12,abortR:11,opR:10,nameR:9,eofR:8,eolnR:7,nlR:6,putR:5,get0R:4,writeR:3,readR:2,cutR:1,callR:0,;",128,0,0,0
	.stabs "clause:t26=s36heapchain:18,256,32;backchain:25,224,32;chain:25,192,32;keyval:7,160,32;refcount:7,128,32;denied:1,96,8;nvars:7,64,32;body:18,32,32;head:18,0,32;;",128,0,0,0
	.stabs "clptr:t25=*26",128,0,0,0
	.stabs "predtype:t27=eevalP:1,normP:0,;",128,0,0,0
	.stabs "prec:t28=4",128,0,0,0
	.stabs "optype:t29=enonO:7,yfxO:6,xfyO:5,xfxO:4,yfO:3,xfO:2,fyO:1,fxO:0,;",128,0,0,0
	.stabs "strindex:t31=4",128,0,0,0
	.stabs "astring:t30=s8length:4,32,32;index:31,0,32;;",128,0,0,0
	.stabs "atomentry:t22=s32arity:23,224,32;routine:24,208,8;proc:25,224,32;pclass:27,200,8;sys:1,192,8;oprec:28,160,32;oclass:29,128,8;chain:21,96,32;atomno:7,64,32;ident:30,0,64;;",128,0,0,0
	.stabs "atom:t21=*22",128,0,0,0
	.stabs "nodetag:t32=eskelT:4,anonT:3,varT:2,intT:1,funcT:0,;",128,0,0,0
	.stabs "nodeinfo:t20=s16offset:7,32,32;dummych:2,8,8;val:18,32,32;ival:7,32,32;son:18,96,32;arity:7,64,32;name:21,32,32;tag:32,0,8;;",128,0,0,0
	.stabs "fieldtype:t33=eheapF:2,localF:1,globalF:0,;",128,0,0,0
	.stabs "node:t19=s32info:20,128,128;scope:7,96,32;field:33,64,8;chain:18,32,32;brother:18,0,32;;",128,0,0,0
	.stabs "term:t18=*19",128,0,0,0
	.stabs "b:p18",160,0,4,12
	.stabs "v:p18",160,0,4,8
	.stabn 192,0,0,.LBB1-Terms_GetBody
	.stabn 224,0,0,.LBE1-Terms_GetBody
	.stabs "Terms_Bind_CopyArgs:F18",36,0,0,Terms_Bind_CopyArgs
	.align 4
Terms_Bind_CopyArgs:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab8, %esp
.LN10:
	.stabn  68,0,187,.LN10-Terms_Bind_CopyArgs		# line 187, column 4
.LBB2:
.LN11:
	.stabn  68,0,188,.LN11-Terms_Bind_CopyArgs		# line 188, column 7
	cmpl	$0,8(%ebp)
	jne	.Lab11
.Lab10:
.LN12:
	.stabn  68,0,189,.LN12-Terms_Bind_CopyArgs		# line 189, column 10
	movl	$0,%eax
	leave
	ret
	jmp	.Lab9
.Lab11:
.LN13:
	.stabn  68,0,191,.LN13-Terms_Bind_CopyArgs		# line 191, column 12
	pushl	8(%ebp)
	call	Terms_Bind_Copy
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
.LN14:
	.stabn  68,0,192,.LN14-Terms_Bind_CopyArgs		# line 192, column 12
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN15:
	.stabn  68,0,192,.LN15-Terms_Bind_CopyArgs		# line 192, column 29
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp) 
	jmp	.Lab12
.Lab13:
.LN16:
	.stabn  68,0,194,.LN16-Terms_Bind_CopyArgs		# line 194, column 24
	movl	-16(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	call	Terms_Bind_Copy
	addl	$4, %esp
	popl	%ebx
	movl	%eax,(%ebx) 
.LN17:
	.stabn  68,0,195,.LN17-Terms_Bind_CopyArgs		# line 195, column 15
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN18:
	.stabn  68,0,195,.LN18-Terms_Bind_CopyArgs		# line 195, column 32
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp) 
.Lab12:
.LN19:
	.stabn  68,0,193,.LN19-Terms_Bind_CopyArgs		# line 193, column 18
	cmpl	$0,-8(%ebp)
	jne	.Lab13
.Lab14:
.LN20:
	.stabn  68,0,197,.LN20-Terms_Bind_CopyArgs		# line 197, column 10
	movl	-12(%ebp),%eax
	leave
	ret
.Lab9:
.LN21:
	.stabn  68,0,198,.LN21-Terms_Bind_CopyArgs		# line 198, column 0
	call	ReturnErr_
.LBE2:
	leave
	ret
	.Lab8 = 16
	.stabs "v:18",128,0,4,-16
	.stabs "u:18",128,0,4,-12
	.stabs "t:18",128,0,4,-8
	.stabs "s:p18",160,0,4,8
	.stabn 192,0,0,.LBB2-Terms_Bind_CopyArgs
	.stabn 224,0,0,.LBE2-Terms_Bind_CopyArgs
	.stabs "Terms_Bind_Copy:F18",36,0,0,Terms_Bind_Copy
	.align 4
Terms_Bind_Copy:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab15, %esp
.LN22:
	.stabn  68,0,170,.LN22-Terms_Bind_Copy		# line 170, column 4
.LBB3:
.LN23:
	.stabn  68,0,171,.LN23-Terms_Bind_Copy		# line 171, column 9
	movl	DISPLAY_,%eax
	pushl	20(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN24:
	.stabn  68,0,172,.LN24-Terms_Bind_Copy		# line 172, column 9
	pushl	$0
	call	Terms_MakeVar
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
.LN25:
	.stabn  68,0,173,.LN25-Terms_Bind_Copy		# line 173, column 7
	movl	-8(%ebp),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab21:
	.long	.Lab20
	.long	.Lab20
	.long	.Lab19
	.long	.Lab18
	.text
	subl	$0,%eax
	jb	.Lab16
	cmpl	$3,%eax
	ja	.Lab16
	jmp	*.Lab21(,%eax,4)
.Lab20:
.LN26:
	.stabn  68,0,175,.LN26-Terms_Bind_Copy		# line 175, column 13
	movl	DISPLAY_,%ebx
	movl	$1,%eax
 	addl	24(%ebx),%eax 
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	20(%eax)
	pushl	$0
	pushl	-8(%ebp)
	pushl	-12(%ebp)
	call	Terms_Bind
	addl	$20, %esp
	jmp	.Lab17
.Lab19:
.LN27:
	.stabn  68,0,177,.LN27-Terms_Bind_Copy		# line 177, column 13
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Terms_BindVars
	addl	$8, %esp
	jmp	.Lab17
.Lab18:
	jmp	.Lab17
.Lab16:
	call	CaseErr_
.Lab17:
.LN28:
	.stabn  68,0,181,.LN28-Terms_Bind_Copy		# line 181, column 7
	movl	-12(%ebp),%eax
	leave
	ret
.LN29:
	.stabn  68,0,182,.LN29-Terms_Bind_Copy		# line 182, column 0
	call	ReturnErr_
.LBE3:
	leave
	ret
	.Lab15 = 12
	.stabs "z:18",128,0,4,-12
	.stabs "y:18",128,0,4,-8
	.stabs "x:p18",160,0,4,8
	.stabn 192,0,0,.LBB3-Terms_Bind_Copy
	.stabn 224,0,0,.LBE3-Terms_Bind_Copy
	.stabs "Terms_Bind:F16",36,0,0,Terms_Bind
	.align 4
Terms_Bind:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab22, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN30:
	.stabn  68,0,202,.LN30-Terms_Bind		# line 202, column 1
.LBB4:
.LN31:
	.stabn  68,0,203,.LN31-Terms_Bind		# line 203, column 4
	cmpl	$200,24(%ebp)
	jle	.Lab23
.Lab24:
.LN32:
	.stabn  68,0,203,.LN32-Terms_Bind		# line 203, column 29
	pushl	$12
	call	ErrorHandler_ExecError
	addl	$4, %esp
.Lab23:
.LN33:
	.stabn  68,0,204,.LN33-Terms_Bind		# line 204, column 6
	pushl	20(%ebp)
	pushl	12(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN34:
	.stabn  68,0,205,.LN34-Terms_Bind		# line 205, column 4
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	jne	.Lab27
.Lab28:
	movl	-8(%ebp),%eax
	cmpb	$2,8(%eax)
	jne	.Lab27
.Lab26:
.LN35:
	.stabn  68,0,206,.LN35-Terms_Bind		# line 206, column 9
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Terms_Bind_CopyArgs
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
	movl	$16,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-16(%ebp) 
.LN36:
	.stabn  68,0,208,.LN36-Terms_Bind		# line 208, column 14
	movl	-16(%ebp),%eax
	movb	$0,(%eax) 
.LN37:
	.stabn  68,0,209,.LN37-Terms_Bind		# line 209, column 15
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%ebx) 
.LN38:
	.stabn  68,0,210,.LN38-Terms_Bind		# line 210, column 16
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,8(%ebx) 
.LN39:
	.stabn  68,0,211,.LN39-Terms_Bind		# line 211, column 14
	movl	-16(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,12(%ebx) 
	jmp	.Lab25
.Lab27:
.LN40:
	.stabn  68,0,215,.LN40-Terms_Bind		# line 215, column 15
	movl	8(%ebp),%ebx
	movl	-8(%ebp),%eax
	leal	16(%eax),%esi
	leal	16(%ebx),%edi
	movl	$4,%ecx
	cld
	repz
	movsl
.Lab25:
.LN41:
	.stabn  68,0,216,.LN41-Terms_Bind		# line 216, column 0
.LBE4:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab22 = 16
	.stabs "z:18",128,0,4,-12
	.stabs "y:18",128,0,4,-8
	.stabs "depth:p7",160,0,4,24
	.stabs "e:p17",160,0,4,20
	.stabs "ev:p17",160,0,4,16
	.stabs "x:p18",160,0,4,12
	.stabs "v:p18",160,0,4,8
	.stabn 192,0,0,.LBB4-Terms_Bind
	.stabn 224,0,0,.LBE4-Terms_Bind
	.stabs "Terms_BindVars:F16",36,0,0,Terms_BindVars
	.align 4
Terms_BindVars:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab29, %esp
.LN42:
	.stabn  68,0,143,.LN42-Terms_BindVars		# line 143, column 1
.LBB5:
.LN43:
	.stabn  68,0,144,.LN43-Terms_BindVars		# line 144, column 4
	movl	8(%ebp),%eax
	cmpl	12(%ebp),%eax
	je	.Lab30
.Lab31:
.LN44:
	.stabn  68,0,145,.LN44-Terms_BindVars		# line 145, column 7
	movl	8(%ebp),%eax
	movb	8(%eax),%bl
	movl	12(%ebp),%eax
	cmpb	8(%eax),%bl
	ja	.Lab33
.Lab35:
	movl	8(%ebp),%eax
	movb	8(%eax),%bl
	movl	12(%ebp),%eax
	cmpb	8(%eax),%bl
	jne	.Lab34
.Lab36:
	movl	8(%ebp),%eax
	movl	12(%eax),%ebx
	movl	12(%ebp),%eax
	cmpl	12(%eax),%ebx
	jle	.Lab34
.Lab33:
.LN45:
	.stabn  68,0,147,.LN45-Terms_BindVars		# line 147, column 23
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,20(%ebx) 
.LN46:
	.stabn  68,0,148,.LN46-Terms_BindVars		# line 148, column 10
	pushl	8(%ebp)
	call	Stacks_TrailVar
	addl	$4, %esp
	jmp	.Lab32
.Lab34:
.LN47:
	.stabn  68,0,151,.LN47-Terms_BindVars		# line 151, column 23
	movl	12(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,20(%ebx) 
.LN48:
	.stabn  68,0,152,.LN48-Terms_BindVars		# line 152, column 10
	pushl	12(%ebp)
	call	Stacks_TrailVar
	addl	$4, %esp
.Lab32:
.Lab30:
.LN49:
	.stabn  68,0,153,.LN49-Terms_BindVars		# line 153, column 0
.LBE5:
	leave
	ret
	.Lab29 = 4
	.stabs "v2:p18",160,0,4,12
	.stabs "v1:p18",160,0,4,8
	.stabn 192,0,0,.LBB5-Terms_BindVars
	.stabn 224,0,0,.LBE5-Terms_BindVars
	.stabs "Terms_Deref:F18",36,0,0,Terms_Deref
	.align 4
Terms_Deref:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab37, %esp
.LN50:
	.stabn  68,0,111,.LN50-Terms_Deref		# line 111, column 1
.LBB6:
.LN51:
	.stabn  68,0,112,.LN51-Terms_Deref		# line 112, column 6
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
.LN52:
	.stabn  68,0,113,.LN52-Terms_Deref		# line 113, column 4
	movl	-8(%ebp),%eax
	cmpb	$4,16(%eax)
	jne	.Lab38
.Lab39:
.LN53:
	.stabn  68,0,114,.LN53-Terms_Deref		# line 114, column 9
	movl	12(%ebp),%ebx
	cmpl	$1,%ebx
	jb	.Lab41
	jmp	.Lab40
.Lab41:
   	call	BoundErr_		
.Lab40:
	imull	$28,%ebx 
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
 	addl	Stacks_s + 8004(%ebx),%eax 
	.data
	.align 4
.Lab42:
	.long	1,2000
	.text
	boundl	%eax,.Lab42
	movl	Stacks_s + 4(,%eax,4),%eax
	movl	%eax,-8(%ebp) 
.Lab38:
	jmp	.Lab43
.Lab44:
.LN54:
	.stabn  68,0,118,.LN54-Terms_Deref		# line 118, column 9
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN55:
	.stabn  68,0,119,.LN55-Terms_Deref		# line 119, column 7
	cmpl	$0,-12(%ebp)
	jne	.Lab46
.Lab47:
.LN56:
	.stabn  68,0,119,.LN56-Terms_Deref		# line 119, column 23
	movl	-8(%ebp),%eax
	leave
	ret
.Lab46:
.LN57:
	.stabn  68,0,120,.LN57-Terms_Deref		# line 120, column 9
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp) 
.Lab43:
.LN58:
	.stabn  68,0,117,.LN58-Terms_Deref		# line 117, column 22
	movl	-8(%ebp),%eax
	cmpb	$2,16(%eax)
	je	.Lab44
.Lab45:
.LN59:
	.stabn  68,0,123,.LN59-Terms_Deref		# line 123, column 4
	movl	-8(%ebp),%eax
	leave
	ret
.LN60:
	.stabn  68,0,124,.LN60-Terms_Deref		# line 124, column 0
	call	ReturnErr_
.LBE6:
	leave
	ret
	.Lab37 = 12
	.stabs "z:18",128,0,4,-12
	.stabs "y:18",128,0,4,-8
	.stabs "e:p17",160,0,4,12
	.stabs "x:p18",160,0,4,8
	.stabn 192,0,0,.LBB6-Terms_Deref
	.stabn 224,0,0,.LBE6-Terms_Deref
	.stabs "Terms_ListRep:F18",36,0,0,Terms_ListRep
	.align 4
Terms_ListRep:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab48, %esp
.LN61:
	.stabn  68,0,88,.LN61-Terms_ListRep		# line 88, column 1
.LBB7:
.LN62:
	.stabn  68,0,89,.LN62-Terms_ListRep		# line 89, column 6
	pushl	$0
	pushl	$0
	pushl	AtomTable_s + 5012
	call	Terms_MakeFunc
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN63:
	.stabn  68,0,90,.LN63-Terms_ListRep		# line 90, column 4
	movl	12(%ebp),%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-16(%ebp) 
	movl	$1,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-20(%ebp) 
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	jb	.Lab49
	movl	-16(%ebp),%eax
	movl	%eax,-12(%ebp) 
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp) 
.Lab50:
.LN64:
	.stabn  68,0,91,.LN64-Terms_ListRep		# line 91, column 9
	pushl	-8(%ebp)
	movl	-12(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab52
	cmpl	$5000,%eax
	jbe	.Lab51
.Lab52:
   	call	BoundErr_		
.Lab51:
	movzbl	AtomTable_s + 7(%eax),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab53
.Lab54:
   	call	BoundErr_		
.Lab53:
	pushl	%eax
	call	Terms_MakeInt
	addl	$4, %esp
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	pushl	%eax
	pushl	$2
	pushl	AtomTable_s + 5016
	call	Terms_MakeFunc
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN65:
	.stabn  68,0,90,.LN65-Terms_ListRep		# line 90, column 4
	movl	-12(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jbe	.Lab49
	decl	-12(%ebp) 
	jmp	.Lab50
.Lab49:
.LN66:
	.stabn  68,0,93,.LN66-Terms_ListRep		# line 93, column 4
	movl	-8(%ebp),%eax
	leave
	ret
.LN67:
	.stabn  68,0,94,.LN67-Terms_ListRep		# line 94, column 0
	call	ReturnErr_
.LBE7:
	leave
	ret
	.Lab48 = 24
	.stabs "n:4",128,0,4,-12
	.stabs "x:18",128,0,4,-8
	.stabs "s:p30",160,0,8,8
	.stabn 192,0,0,.LBB7-Terms_ListRep
	.stabn 224,0,0,.LBE7-Terms_ListRep
	.stabs "Terms_IsAtom:F1",36,0,0,Terms_IsAtom
	.align 4
Terms_IsAtom:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab55, %esp
.LN68:
	.stabn  68,0,73,.LN68-Terms_IsAtom		# line 73, column 1
.LBB8:
	movl	$16,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-8(%ebp) 
.LN69:
	.stabn  68,0,75,.LN69-Terms_IsAtom		# line 75, column 7
	movl	-8(%ebp),%eax
	cmpb	$0,(%eax)
	je	.Lab58
.Lab57:
.LN70:
	.stabn  68,0,76,.LN70-Terms_IsAtom		# line 76, column 10
	movb	$0,%al
	leave
	ret
	jmp	.Lab56
.Lab58:
.LN71:
	.stabn  68,0,78,.LN71-Terms_IsAtom		# line 78, column 10
	movl	-8(%ebp),%eax
	cmpl	$0,8(%eax)
	sete	%al
	leave
	ret
.Lab56:
.LN72:
	.stabn  68,0,79,.LN72-Terms_IsAtom		# line 79, column 0
	call	ReturnErr_
.LBE8:
	leave
	ret
	.Lab55 = 8
	.stabs "x:p18",160,0,4,8
	.stabn 192,0,0,.LBB8-Terms_IsAtom
	.stabn 224,0,0,.LBE8-Terms_IsAtom
	.stabs "Terms_IsFunc:F1",36,0,0,Terms_IsFunc
	.align 4
Terms_IsFunc:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab59, %esp
.LN73:
	.stabn  68,0,60,.LN73-Terms_IsFunc		# line 60, column 1
.LBB9:
	movl	$16,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-8(%ebp) 
.LN74:
	.stabn  68,0,62,.LN74-Terms_IsFunc		# line 62, column 7
	movl	-8(%ebp),%eax
	cmpb	$0,(%eax)
	je	.Lab62
.Lab61:
.LN75:
	.stabn  68,0,63,.LN75-Terms_IsFunc		# line 63, column 10
	movb	$0,%al
	leave
	ret
	jmp	.Lab60
.Lab62:
.LN76:
	.stabn  68,0,65,.LN76-Terms_IsFunc		# line 65, column 10
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	cmpl	12(%ebp),%eax
	jne	.Lab65
.Lab63:
	movl	-8(%ebp),%eax
	movl	8(%eax),%eax
	cmpl	16(%ebp),%eax
	jne	.Lab65
.Lab64:
	movb	$1,-12(%ebp) 
	jmp	.Lab66
.Lab65:
	movb	$0,-12(%ebp) 
.Lab66:
	movb	-12(%ebp),%al
	leave
	ret
.Lab60:
.LN77:
	.stabn  68,0,66,.LN77-Terms_IsFunc		# line 66, column 0
	call	ReturnErr_
.LBE9:
	leave
	ret
	.Lab59 = 12
	.stabs "m:p7",160,0,4,16
	.stabs "a:p21",160,0,4,12
	.stabs "x:p18",160,0,4,8
	.stabn 192,0,0,.LBB9-Terms_IsFunc
	.stabn 224,0,0,.LBE9-Terms_IsFunc
	.stabs "Terms_MakeBros:F18",36,0,0,Terms_MakeBros
	.align 4
Terms_MakeBros:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab67, %esp
.LN78:
	.stabn  68,0,52,.LN78-Terms_MakeBros		# line 52, column 1
.LBB10:
.LN79:
	.stabn  68,0,53,.LN79-Terms_MakeBros		# line 53, column 15
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,(%ebx) 
.LN80:
	.stabn  68,0,54,.LN80-Terms_MakeBros		# line 54, column 4
	movl	8(%ebp),%eax
	leave
	ret
.LN81:
	.stabn  68,0,55,.LN81-Terms_MakeBros		# line 55, column 0
	call	ReturnErr_
.LBE10:
	leave
	ret
	.Lab67 = 4
	.stabs "y:p18",160,0,4,12
	.stabs "x:p18",160,0,4,8
	.stabn 192,0,0,.LBB10-Terms_MakeBros
	.stabn 224,0,0,.LBE10-Terms_MakeBros
	.stabs "Terms_MakeVar:F18",36,0,0,Terms_MakeVar
	.align 4
Terms_MakeVar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab68, %esp
.LN82:
	.stabn  68,0,41,.LN82-Terms_MakeVar		# line 41, column 1
.LBB11:
.LN83:
	.stabn  68,0,42,.LN83-Terms_MakeVar		# line 42, column 4
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Stacks_NewGlobal
	addl	$4, %esp
	movl	$16,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN84:
	.stabn  68,0,44,.LN84-Terms_MakeVar		# line 44, column 11
	movl	-12(%ebp),%eax
	movb	$2,(%eax) 
.LN85:
	.stabn  68,0,45,.LN85-Terms_MakeVar		# line 45, column 11
	movl	-12(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,4(%ebx) 
.LN86:
	.stabn  68,0,47,.LN86-Terms_MakeVar		# line 47, column 4
	movl	-8(%ebp),%eax
	leave
	ret
.LN87:
	.stabn  68,0,48,.LN87-Terms_MakeVar		# line 48, column 0
	call	ReturnErr_
.LBE11:
	leave
	ret
	.Lab68 = 12
	.stabs "x:18",128,0,4,-8
	.stabs "v:p18",160,0,4,8
	.stabn 192,0,0,.LBB11-Terms_MakeVar
	.stabn 224,0,0,.LBE11-Terms_MakeVar
	.stabs "Terms_MakeInt:F18",36,0,0,Terms_MakeInt
	.align 4
Terms_MakeInt:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab69, %esp
.LN88:
	.stabn  68,0,29,.LN88-Terms_MakeInt		# line 29, column 1
.LBB12:
.LN89:
	.stabn  68,0,30,.LN89-Terms_MakeInt		# line 30, column 4
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Stacks_NewGlobal
	addl	$4, %esp
	movl	$16,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN90:
	.stabn  68,0,32,.LN90-Terms_MakeInt		# line 32, column 11
	movl	-12(%ebp),%eax
	movb	$1,(%eax) 
.LN91:
	.stabn  68,0,33,.LN91-Terms_MakeInt		# line 33, column 12
	movl	-12(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,4(%ebx) 
.LN92:
	.stabn  68,0,35,.LN92-Terms_MakeInt		# line 35, column 4
	movl	-8(%ebp),%eax
	leave
	ret
.LN93:
	.stabn  68,0,36,.LN93-Terms_MakeInt		# line 36, column 0
	call	ReturnErr_
.LBE12:
	leave
	ret
	.Lab69 = 12
	.stabs "x:18",128,0,4,-8
	.stabs "i:p7",160,0,4,8
	.stabn 192,0,0,.LBB12-Terms_MakeInt
	.stabn 224,0,0,.LBE12-Terms_MakeInt
	.stabs "Terms_MakeFunc:F18",36,0,0,Terms_MakeFunc
	.align 4
Terms_MakeFunc:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab70, %esp
.LN94:
	.stabn  68,0,15,.LN94-Terms_MakeFunc		# line 15, column 1
.LBB13:
.LN95:
	.stabn  68,0,16,.LN95-Terms_MakeFunc		# line 16, column 4
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Stacks_NewGlobal
	addl	$4, %esp
	movl	$16,%eax
 	addl	-8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN96:
	.stabn  68,0,18,.LN96-Terms_MakeFunc		# line 18, column 11
	movl	-12(%ebp),%eax
	movb	$0,(%eax) 
.LN97:
	.stabn  68,0,19,.LN97-Terms_MakeFunc		# line 19, column 12
	movl	-12(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,4(%ebx) 
.LN98:
	.stabn  68,0,20,.LN98-Terms_MakeFunc		# line 20, column 13
	movl	-12(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,8(%ebx) 
.LN99:
	.stabn  68,0,21,.LN99-Terms_MakeFunc		# line 21, column 11
	movl	-12(%ebp),%ebx
	movl	16(%ebp),%eax
	movl	%eax,12(%ebx) 
.LN100:
	.stabn  68,0,23,.LN100-Terms_MakeFunc		# line 23, column 4
	movl	-8(%ebp),%eax
	leave
	ret
.LN101:
	.stabn  68,0,24,.LN101-Terms_MakeFunc		# line 24, column 0
	call	ReturnErr_
.LBE13:
	leave
	ret
	.Lab70 = 12
	.stabs "x:18",128,0,4,-8
	.stabs "s:p18",160,0,4,16
	.stabs "m:p7",160,0,4,12
	.stabs "a:p21",160,0,4,8
	.stabn 192,0,0,.LBB13-Terms_MakeFunc
	.stabn 224,0,0,.LBE13-Terms_MakeFunc
	.stabs "Terms:F16",36,0,0,Terms
	.align 4
Terms:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab71, %esp
.LN102:
	.stabn  68,0,235,.LN102-Terms		# line 235, column 1
.LBB14:
.LN103:
	.stabn  68,0,236,.LN103-Terms		# line 236, column 0
.LBE14:
	leave
	ret
	.Lab71 = 4
	.stabn 192,0,0,.LBB14-Terms
	.stabn 224,0,0,.LBE14-Terms
