	.comm Unify_s, 16
	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Unify.mod",100,0,0,.LBB0
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
	.globl	OpSystem_ReadOneTerminalLine
	.globl	OpSystem_Time
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
	.globl	ErrorHandler_InternalError
	.globl	ErrorHandler_ExecError
	.globl	ErrorHandler_Report
	.globl	ErrorHandler_Abort
	.globl	ErrorHandler_Crash
	.globl	Unify
	.globl	Unify_InitUnify
	.globl	Unify_Unify
	.globl	Unify_Unify_UnifyArgs
	.stabs "Unify_InitUnify:F16",36,0,0,Unify_InitUnify
	.align 4
Unify_InitUnify:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,83,.LN1-Unify_InitUnify		# line 83, column 1
.LBB1:
.LN2:
	.stabn  68,0,84,.LN2-Unify_InitUnify		# line 84, column 26
	movb	$0,Unify_s 
.LN3:
	.stabn  68,0,85,.LN3-Unify_InitUnify		# line 85, column 26
	movb	$1,Unify_s + 5 
.LN4:
	.stabn  68,0,86,.LN4-Unify_InitUnify		# line 86, column 26
	movb	$2,Unify_s + 8 
.LN5:
	.stabn  68,0,87,.LN5-Unify_InitUnify		# line 87, column 26
	movb	$2,Unify_s + 9 
.LN6:
	.stabn  68,0,88,.LN6-Unify_InitUnify		# line 88, column 26
	movb	$3,Unify_s + 2 
.LN7:
	.stabn  68,0,89,.LN7-Unify_InitUnify		# line 89, column 26
	movb	$3,Unify_s + 6 
.LN8:
	.stabn  68,0,90,.LN8-Unify_InitUnify		# line 90, column 26
	movb	$4,Unify_s + 10 
.LN9:
	.stabn  68,0,91,.LN9-Unify_InitUnify		# line 91, column 26
	movb	$5,Unify_s + 12 
.LN10:
	.stabn  68,0,92,.LN10-Unify_InitUnify		# line 92, column 26
	movb	$5,Unify_s + 13 
.LN11:
	.stabn  68,0,93,.LN11-Unify_InitUnify		# line 93, column 26
	movb	$5,Unify_s + 14 
.LN12:
	.stabn  68,0,94,.LN12-Unify_InitUnify		# line 94, column 26
	movb	$5,Unify_s + 3 
.LN13:
	.stabn  68,0,95,.LN13-Unify_InitUnify		# line 95, column 26
	movb	$5,Unify_s + 7 
.LN14:
	.stabn  68,0,96,.LN14-Unify_InitUnify		# line 96, column 26
	movb	$5,Unify_s + 11 
.LN15:
	.stabn  68,0,97,.LN15-Unify_InitUnify		# line 97, column 26
	movb	$5,Unify_s + 15 
.LN16:
	.stabn  68,0,98,.LN16-Unify_InitUnify		# line 98, column 26
	movb	$6,Unify_s + 1 
.LN17:
	.stabn  68,0,99,.LN17-Unify_InitUnify		# line 99, column 26
	movb	$6,Unify_s + 4 
.LN18:
	.stabn  68,0,100,.LN18-Unify_InitUnify		# line 100, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabn 192,0,0,.LBB1-Unify_InitUnify
	.stabn 224,0,0,.LBE1-Unify_InitUnify
	.stabs "UnifyResult:t17=eNoMatch:1,Match:0,;",128,0,0,0
	.stabs "Unify_Unify_UnifyArgs:F17",36,0,0,Unify_Unify_UnifyArgs
	.align 4
Unify_Unify_UnifyArgs:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN19:
	.stabn  68,0,29,.LN19-Unify_Unify_UnifyArgs		# line 29, column 4
.LBB2:
.LN20:
	.stabn  68,0,30,.LN20-Unify_Unify_UnifyArgs		# line 30, column 10
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
.LN21:
	.stabn  68,0,30,.LN21-Unify_Unify_UnifyArgs		# line 30, column 20
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebp) 
.LN22:
	.stabn  68,0,31,.LN22-Unify_Unify_UnifyArgs		# line 31, column 10
	jmp	.Lab3
.Lab4:
.LN23:
	.stabn  68,0,33,.LN23-Unify_Unify_UnifyArgs		# line 33, column 13
	movl	DISPLAY_,%ebx
	movl	$1,%eax
 	addl	24(%ebx),%eax 
	pushl	%eax
	movl	DISPLAY_,%eax
	pushl	20(%eax)
	movl	DISPLAY_,%eax
	pushl	16(%eax)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Unify_Unify
	addl	$20, %esp
	movb	%al,-13(%ebp) 
.LN24:
	.stabn  68,0,34,.LN24-Unify_Unify_UnifyArgs		# line 34, column 13
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN25:
	.stabn  68,0,34,.LN25-Unify_Unify_UnifyArgs		# line 34, column 32
	movl	-12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-12(%ebp) 
.Lab3:
.LN26:
	.stabn  68,0,32,.LN26-Unify_Unify_UnifyArgs		# line 32, column 22
	cmpl	$0,-8(%ebp)
	je	.Lab5
.Lab6:
.Lab5:
.LN27:
	.stabn  68,0,36,.LN27-Unify_Unify_UnifyArgs		# line 36, column 7
	movb	-13(%ebp),%al
	leave
	ret
.LN28:
	.stabn  68,0,37,.LN28-Unify_Unify_UnifyArgs		# line 37, column 0
	call	ReturnErr_
.LBE2:
	leave
	ret
	.Lab2 = 16
	.stabs "ok:17",128,0,1,-13
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
	.stabs "t2:18",128,0,4,-12
	.stabs "t1:18",128,0,4,-8
	.stabs "s2:p18",160,0,4,12
	.stabs "s1:p18",160,0,4,8
	.stabn 192,0,0,.LBB2-Unify_Unify_UnifyArgs
	.stabn 224,0,0,.LBE2-Unify_Unify_UnifyArgs
	.stabs "Unify_Unify:F17",36,0,0,Unify_Unify
	.align 4
Unify_Unify:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab7, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN29:
	.stabn  68,0,40,.LN29-Unify_Unify		# line 40, column 1
.LBB3:
.LN30:
	.stabn  68,0,42,.LN30-Unify_Unify		# line 42, column 4
	cmpl	$200,24(%ebp)
	jle	.Lab8
.Lab9:
.LN31:
	.stabn  68,0,42,.LN31-Unify_Unify		# line 42, column 29
	pushl	$12
	call	ErrorHandler_ExecError
	addl	$4, %esp
.LN32:
	.stabn  68,0,42,.LN32-Unify_Unify		# line 42, column 48
.Lab8:
.LN33:
	.stabn  68,0,44,.LN33-Unify_Unify		# line 44, column 7
	pushl	16(%ebp)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN34:
	.stabn  68,0,45,.LN34-Unify_Unify		# line 45, column 7
	pushl	20(%ebp)
	pushl	12(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
.LN35:
	.stabn  68,0,47,.LN35-Unify_Unify		# line 47, column 4
	movl	-8(%ebp),%eax
	movzbl	16(%eax),%ebx
	.data
	.align 4
.Lab19:
	.long	0,3
	.text
	boundl	%ebx,.Lab19
	addl	%ebx, %ebx
	addl	%ebx, %ebx
	movl	-12(%ebp),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab20:
	.long	0,3
	.text
	boundl	%eax,.Lab20
	movzbl	Unify_s(%ebx,%eax,1),%eax
	.data
	.align 4
.Lab21:
	.long	.Lab18
	.long	.Lab17
	.long	.Lab16
	.long	.Lab15
	.long	.Lab14
	.long	.Lab13
	.long	.Lab12
	.text
	subl	$0,%eax
	jb	.Lab10
	cmpl	$6,%eax
	ja	.Lab10
	jmp	*.Lab21(,%eax,4)
.Lab18:
.LN36:
	.stabn  68,0,49,.LN36-Unify_Unify		# line 49, column 14
	movl	-8(%ebp),%eax
	movl	20(%eax),%ebx
	movl	-12(%ebp),%eax
	cmpl	20(%eax),%ebx
	jne	.Lab24
.Lab25:
	movl	-8(%ebp),%eax
	movl	24(%eax),%ebx
	movl	-12(%ebp),%eax
	cmpl	24(%eax),%ebx
	jne	.Lab24
.Lab23:
.LN37:
	.stabn  68,0,51,.LN37-Unify_Unify		# line 51, column 17
	movl	-12(%ebp),%eax
	pushl	28(%eax)
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Unify_Unify_UnifyArgs
	addl	$8, %esp
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	jmp	.Lab22
.Lab24:
.LN38:
	.stabn  68,0,53,.LN38-Unify_Unify		# line 53, column 17
.Lab22:
	jmp	.Lab11
.Lab17:
.LN39:
	.stabn  68,0,56,.LN39-Unify_Unify		# line 56, column 14
	movl	-8(%ebp),%eax
	movl	20(%eax),%ebx
	movl	-12(%ebp),%eax
	cmpl	20(%eax),%ebx
	jne	.Lab28
.Lab27:
.LN40:
	.stabn  68,0,57,.LN40-Unify_Unify		# line 57, column 17
	jmp	.Lab26
.Lab28:
.LN41:
	.stabn  68,0,59,.LN41-Unify_Unify		# line 59, column 17
.Lab26:
	jmp	.Lab11
.Lab16:
.LN42:
	.stabn  68,0,62,.LN42-Unify_Unify		# line 62, column 17
	pushl	$0
	pushl	20(%ebp)
	pushl	16(%ebp)
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Terms_Bind
	addl	$20, %esp
.LN43:
	.stabn  68,0,63,.LN43-Unify_Unify		# line 63, column 17
	pushl	-8(%ebp)
	call	Stacks_TrailVar
	addl	$4, %esp
.LN44:
	.stabn  68,0,64,.LN44-Unify_Unify		# line 64, column 17
	jmp	.Lab11
.Lab15:
.LN45:
	.stabn  68,0,66,.LN45-Unify_Unify		# line 66, column 17
	pushl	$0
	pushl	16(%ebp)
	pushl	20(%ebp)
	pushl	-8(%ebp)
	pushl	-12(%ebp)
	call	Terms_Bind
	addl	$20, %esp
.LN46:
	.stabn  68,0,67,.LN46-Unify_Unify		# line 67, column 17
	pushl	-12(%ebp)
	call	Stacks_TrailVar
	addl	$4, %esp
.LN47:
	.stabn  68,0,68,.LN47-Unify_Unify		# line 68, column 17
	jmp	.Lab11
.Lab14:
.LN48:
	.stabn  68,0,70,.LN48-Unify_Unify		# line 70, column 17
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Terms_BindVars
	addl	$8, %esp
.LN49:
	.stabn  68,0,71,.LN49-Unify_Unify		# line 71, column 17
	jmp	.Lab11
.Lab13:
.LN50:
	.stabn  68,0,73,.LN50-Unify_Unify		# line 73, column 17
	jmp	.Lab11
.Lab12:
.LN51:
	.stabn  68,0,75,.LN51-Unify_Unify		# line 75, column 17
	jmp	.Lab11
.Lab10:
	call	CaseErr_
.Lab11:
.LN52:
	.stabn  68,0,76,.LN52-Unify_Unify		# line 76, column 0
	call	ReturnErr_
.LBE3:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab7 = 12
	.stabs "y2:18",128,0,4,-12
	.stabs "y1:18",128,0,4,-8
	.stabs "depth:p7",160,0,4,24
	.stabs "env:t34=4",128,0,0,0
	.stabs "e2:p34",160,0,4,20
	.stabs "e1:p34",160,0,4,16
	.stabs "x2:p18",160,0,4,12
	.stabs "x1:p18",160,0,4,8
	.stabn 192,0,0,.LBB3-Unify_Unify
	.stabn 224,0,0,.LBE3-Unify_Unify
	.stabs "Unify:F16",36,0,0,Unify
	.align 4
Unify:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab29, %esp
.LN53:
	.stabn  68,0,102,.LN53-Unify		# line 102, column 1
.LBB4:
.LN54:
	.stabn  68,0,103,.LN54-Unify		# line 103, column 3
	call	Unify_InitUnify
.LN55:
	.stabn  68,0,104,.LN55-Unify		# line 104, column 0
.LBE4:
	leave
	ret
	.Lab29 = 4
	.stabs "failU:c=i6",128,0,0,0
	.stabs "succeedU:c=i5",128,0,0,0
	.stabs "VVbindU:c=i4",128,0,0,0
	.stabs "TVbindU:c=i3",128,0,0,0
	.stabs "VTbindU:c=i2",128,0,0,0
	.stabs "intU:c=i1",128,0,0,0
	.stabs "funcU:c=i0",128,0,0,0
	.stabs "NoMatch:c=i1",128,0,0,0
	.stabs "Match:c=i0",128,0,0,0
	.stabn 192,0,0,.LBB4-Unify
	.stabn 224,0,0,.LBE4-Unify
	.stabs "Unify_s:Gs16Uaction:35=ar32;0;3;36=ar32;0;3;37=efailU:6,succeedU:5,VVbindU:4,TVbindU:3,VTbindU:2,intU:1,funcU:0,;,0,128;;",32,0,0,0
