	.comm Stacks_s, 76020
	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Stacks.mod",100,0,0,.LBB0
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
	.globl	AtomTable_LookUp
	.globl	AtomTable_AtomChar
	.globl	AtomTable_StartAtom
	.globl	ErrorHandler_InternalError
	.globl	ErrorHandler_ExecError
	.globl	ErrorHandler_Report
	.globl	ErrorHandler_Abort
	.globl	ErrorHandler_Crash
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
	.globl	Storage_DEALLOCATE
	.globl	Storage_ALLOCATE
	.globl	Stacks
	.globl	Stacks_InitTrail
	.globl	Stacks_InitStacks
	.globl	Stacks_ChangeClause
	.globl	Stacks_EnvRef
	.globl	Stacks_KillStacks
	.globl	Stacks_Cut
	.globl	Stacks_DisposeEnv
	.globl	Stacks_ReleaseLocal
	.globl	Stacks_GetEnv
	.globl	Stacks_NewEnv
	.globl	Stacks_InitGloStack
	.globl	Stacks_NewGlobal
	.globl	Stacks_Untrail
	.globl	Stacks_TrimTrail
	.globl	Stacks_TrailVar
	.globl	Stacks_Critical
	.stabs "Stacks_InitTrail:F16",36,0,0,Stacks_InitTrail
	.align 4
Stacks_InitTrail:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,295,.LN1-Stacks_InitTrail		# line 295, column 1
.LBB1:
.LN2:
	.stabn  68,0,296,.LN2-Stacks_InitTrail		# line 296, column 11
	movl	$0,Stacks_s + 44008 
.LN3:
	.stabn  68,0,297,.LN3-Stacks_InitTrail		# line 297, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabn 192,0,0,.LBB1-Stacks_InitTrail
	.stabn 224,0,0,.LBE1-Stacks_InitTrail
	.stabs "Stacks_InitStacks:F16",36,0,0,Stacks_InitStacks
	.align 4
Stacks_InitStacks:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab2, %esp
.LN4:
	.stabn  68,0,276,.LN4-Stacks_InitStacks		# line 276, column 1
.LBB2:
.LN5:
	.stabn  68,0,277,.LN5-Stacks_InitStacks		# line 277, column 11
	movl	$0,Stacks_s 
.LN6:
	.stabn  68,0,278,.LN6-Stacks_InitStacks		# line 278, column 11
	movl	$0,Stacks_s + 44012 
.LN7:
	.stabn  68,0,279,.LN7-Stacks_InitStacks		# line 279, column 4
	movl	$1,-8(%ebp) 
.Lab3:
.LN8:
	.stabn  68,0,280,.LN8-Stacks_InitStacks		# line 280, column 7
	pushl	$32
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp) 
.LN9:
	.stabn  68,0,282,.LN9-Stacks_InitStacks		# line 282, column 18
	movl	-16(%ebp),%eax
	movl	$0,(%eax) 
.LN10:
	.stabn  68,0,283,.LN10-Stacks_InitStacks		# line 283, column 16
	movl	-16(%ebp),%eax
	movl	$0,4(%eax) 
.LN11:
	.stabn  68,0,284,.LN11-Stacks_InitStacks		# line 284, column 16
	movl	-16(%ebp),%eax
	movb	$1,8(%eax) 
.LN12:
	.stabn  68,0,285,.LN12-Stacks_InitStacks		# line 285, column 16
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	%eax,12(%ebx) 
.LN13:
	.stabn  68,0,287,.LN13-Stacks_InitStacks		# line 287, column 19
	movl	-8(%ebp),%ebx
	.data
	.align 4
.Lab5:
	.long	1,2000
	.text
	boundl	%ebx,.Lab5
	movl	-12(%ebp),%eax
	movl	%eax,Stacks_s + 4(,%ebx,4) 
.LN14:
	.stabn  68,0,279,.LN14-Stacks_InitStacks		# line 279, column 4
	cmpl	$2000,-8(%ebp)
	jge	.Lab4
	incl	-8(%ebp) 
	jmp	.Lab3
.Lab4:
.LN15:
	.stabn  68,0,289,.LN15-Stacks_InitStacks		# line 289, column 11
	movl	$0,Stacks_s + 76016 
.LN16:
	.stabn  68,0,290,.LN16-Stacks_InitStacks		# line 290, column 4
	call	Stacks_InitGloStack
.LN17:
	.stabn  68,0,291,.LN17-Stacks_InitStacks		# line 291, column 0
.LBE2:
	leave
	ret
	.Lab2 = 16
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
	.stabs "v:17",128,0,4,-12
	.stabs "n:7",128,0,4,-8
	.stabn 192,0,0,.LBB2-Stacks_InitStacks
	.stabn 224,0,0,.LBE2-Stacks_InitStacks
	.stabs "Stacks_ChangeClause:F16",36,0,0,Stacks_ChangeClause
	.align 4
Stacks_ChangeClause:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab6, %esp
.LN18:
	.stabn  68,0,256,.LN18-Stacks_ChangeClause		# line 256, column 1
.LBB3:
.LN19:
	.stabn  68,0,257,.LN19-Stacks_ChangeClause		# line 257, column 10
	movl	8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab8
	jmp	.Lab7
.Lab8:
   	call	BoundErr_		
.Lab7:
	imull	$28,%eax 
	movl	Stacks_s + 7992(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN20:
	.stabn  68,0,258,.LN20-Stacks_ChangeClause		# line 258, column 4
	cmpl	$0,-8(%ebp)
	je	.Lab9
.Lab10:
.LN21:
	.stabn  68,0,259,.LN21-Stacks_ChangeClause		# line 259, column 23
	movl	-8(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	16(%eax),%eax
 	subl	$1,%eax 
	movl	%eax,16(%ebx) 
.LN22:
	.stabn  68,0,260,.LN22-Stacks_ChangeClause		# line 260, column 7
	movl	-8(%ebp),%eax
	cmpb	$0,12(%eax)
	je	.Lab11
.Lab13:
	movl	-8(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	.Lab11
.Lab12:
.LN23:
	.stabn  68,0,261,.LN23-Stacks_ChangeClause		# line 261, column 10
	.data
.Lab14:
 	.ascii	"DeleteClause.(2)...\000"
	.text
	pushl	$19
	leal	.Lab14,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.Lab11:
.Lab9:
.LN24:
	.stabn  68,0,265,.LN24-Stacks_ChangeClause		# line 265, column 4
	cmpl	$0,12(%ebp)
	je	.Lab15
.Lab16:
.LN25:
	.stabn  68,0,266,.LN25-Stacks_ChangeClause		# line 266, column 23
	movl	12(%ebp),%ecx
	movl	12(%ebp),%ebx
	movl	$1,%eax
 	addl	16(%ebx),%eax 
	movl	%eax,16(%ecx) 
.Lab15:
.LN26:
	.stabn  68,0,267,.LN26-Stacks_ChangeClause		# line 267, column 23
	movl	8(%ebp),%ebx
	cmpl	$1,%ebx
	jb	.Lab18
	jmp	.Lab17
.Lab18:
   	call	BoundErr_		
.Lab17:
	imull	$28,%ebx 
	movl	12(%ebp),%eax
	movl	%eax,Stacks_s + 7992(%ebx) 
.LN27:
	.stabn  68,0,268,.LN27-Stacks_ChangeClause		# line 268, column 0
.LBE3:
	leave
	ret
	.Lab6 = 8
	.stabs "oldcl:24",128,0,4,-8
	.stabs "newcl:p24",160,0,4,12
	.stabs "env:t33=4",128,0,0,0
	.stabs "e:p33",160,0,4,8
	.stabn 192,0,0,.LBB3-Stacks_ChangeClause
	.stabn 224,0,0,.LBE3-Stacks_ChangeClause
	.stabs "Stacks_EnvRef:F17",36,0,0,Stacks_EnvRef
	.align 4
Stacks_EnvRef:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab19, %esp
.LN28:
	.stabn  68,0,247,.LN28-Stacks_EnvRef		# line 247, column 1
.LBB4:
.LN29:
	.stabn  68,0,248,.LN29-Stacks_EnvRef		# line 248, column 4
	movl	12(%ebp),%ebx
	cmpl	$1,%ebx
	jb	.Lab21
	jmp	.Lab20
.Lab21:
   	call	BoundErr_		
.Lab20:
	imull	$28,%ebx 
	movl	8(%ebp),%eax
 	addl	Stacks_s + 8004(%ebx),%eax 
	.data
	.align 4
.Lab22:
	.long	1,2000
	.text
	boundl	%eax,.Lab22
	movl	Stacks_s + 4(,%eax,4),%eax
	leave
	ret
.LN30:
	.stabn  68,0,249,.LN30-Stacks_EnvRef		# line 249, column 0
	call	ReturnErr_
.LBE4:
	leave
	ret
	.Lab19 = 4
	.stabs "e:p33",160,0,4,12
	.stabs "offset:p7",160,0,4,8
	.stabn 192,0,0,.LBB4-Stacks_EnvRef
	.stabn 224,0,0,.LBE4-Stacks_EnvRef
	.stabs "Stacks_KillStacks:F16",36,0,0,Stacks_KillStacks
	.align 4
Stacks_KillStacks:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab23, %esp
.LN31:
	.stabn  68,0,227,.LN31-Stacks_KillStacks		# line 227, column 1
.LBB5:
.LN32:
	.stabn  68,0,228,.LN32-Stacks_KillStacks		# line 228, column 14
	movl	Stacks_s + 76016,%eax
	movl	%eax,-8(%ebp) 
.LN33:
	.stabn  68,0,229,.LN33-Stacks_KillStacks		# line 229, column 4
	movl	Stacks_s,%eax
	cmpl	8(%ebp),%eax
	jbe	.Lab24
.Lab25:
	movl	$1,%eax
 	addl	8(%ebp),%eax 
	cmpl	$1,%eax
	jb	.Lab27
	cmpl	$1000,%eax
	jbe	.Lab26
.Lab27:
   	call	BoundErr_		
.Lab26:
	imull	$28,%eax 
	leal	Stacks_s + 7980(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN34:
	.stabn  68,0,231,.LN34-Stacks_KillStacks		# line 231, column 10
	movl	-12(%ebp),%eax
	pushl	16(%eax)
	call	Stacks_Untrail
	addl	$4, %esp
.LN35:
	.stabn  68,0,232,.LN35-Stacks_KillStacks		# line 232, column 22
	movl	-12(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,Stacks_s + 4 
.LN36:
	.stabn  68,0,233,.LN36-Stacks_KillStacks		# line 233, column 17
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	$1000,%eax
	jbe	.Lab28
.Lab29:
   	call	BoundErr_		
.Lab28:
	movl	%eax,Stacks_s + 76016 
.Lab24:
.LN37:
	.stabn  68,0,236,.LN37-Stacks_KillStacks		# line 236, column 4
	pushl	8(%ebp)
	call	Stacks_ReleaseLocal
	addl	$4, %esp
.LN38:
	.stabn  68,0,237,.LN38-Stacks_KillStacks		# line 237, column 0
.LBE5:
	leave
	ret
	.Lab23 = 12
	.stabs "oldglotop:4",128,0,4,-8
	.stabs "newtop:p33",160,0,4,8
	.stabn 192,0,0,.LBB5-Stacks_KillStacks
	.stabn 224,0,0,.LBE5-Stacks_KillStacks
	.stabs "Stacks_Cut:F16",36,0,0,Stacks_Cut
	.align 4
Stacks_Cut:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab30, %esp
.LN39:
	.stabn  68,0,205,.LN39-Stacks_Cut		# line 205, column 1
.LBB6:
.LN40:
	.stabn  68,0,206,.LN40-Stacks_Cut		# line 206, column 9
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
.LN41:
	.stabn  68,0,207,.LN41-Stacks_Cut		# line 207, column 7
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab32
	jmp	.Lab31
.Lab32:
   	call	BoundErr_		
.Lab31:
	imull	$28,%eax 
	movl	Stacks_s + 7992(%eax),%eax
	movl	%eax,-12(%ebp) 
	jmp	.Lab33
.Lab34:
.LN42:
	.stabn  68,0,210,.LN42-Stacks_Cut		# line 210, column 12
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab37
	jmp	.Lab36
.Lab37:
   	call	BoundErr_		
.Lab36:
	imull	$28,%eax 
	movl	Stacks_s + 7984(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN43:
	.stabn  68,0,211,.LN43-Stacks_Cut		# line 211, column 10
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab39
	jmp	.Lab38
.Lab39:
   	call	BoundErr_		
.Lab38:
	imull	$28,%eax 
	movl	Stacks_s + 7992(%eax),%eax
	movl	%eax,-12(%ebp) 
.Lab33:
.LN44:
	.stabn  68,0,208,.LN44-Stacks_Cut		# line 208, column 38
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab42
	jmp	.Lab41
.Lab42:
   	call	BoundErr_		
.Lab41:
	imull	$28,%eax 
	cmpl	$0,Stacks_s + 7988(%eax)
	jbe	.Lab35
.Lab40:
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5124,%eax
	je	.Lab34
.Lab45:
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5128,%eax
	je	.Lab34
.Lab44:
	movl	-12(%ebp),%eax
	cmpl	AtomTable_s + 5132,%eax
	je	.Lab34
.Lab43:
	cmpl	$0,-12(%ebp)
	je	.Lab34
.Lab35:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab47
	jmp	.Lab46
.Lab47:
   	call	BoundErr_		
.Lab46:
	imull	$28,%eax 
	leal	Stacks_s + 7980(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN45:
	.stabn  68,0,214,.LN45-Stacks_Cut		# line 214, column 19
	movl	-16(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,Stacks_s + 4 
.LN46:
	.stabn  68,0,215,.LN46-Stacks_Cut		# line 215, column 7
	movl	-16(%ebp),%eax
	pushl	16(%eax)
	call	Stacks_TrimTrail
	addl	$4, %esp
.LN47:
	.stabn  68,0,217,.LN47-Stacks_Cut		# line 217, column 4
	pushl	8(%ebp)
	call	Stacks_ReleaseLocal
	addl	$4, %esp
.LN48:
	.stabn  68,0,218,.LN48-Stacks_Cut		# line 218, column 0
.LBE6:
	leave
	ret
	.Lab30 = 16
	.stabs "cl:24",128,0,4,-12
	.stabs "envp:33",128,0,4,-8
	.stabs "e:p33",160,0,4,8
	.stabn 192,0,0,.LBB6-Stacks_Cut
	.stabn 224,0,0,.LBE6-Stacks_Cut
	.stabs "Stacks_DisposeEnv:F16",36,0,0,Stacks_DisposeEnv
	.align 4
Stacks_DisposeEnv:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab48, %esp
.LN49:
	.stabn  68,0,191,.LN49-Stacks_DisposeEnv		# line 191, column 2
.LBB7:
.LN50:
	.stabn  68,0,192,.LN50-Stacks_DisposeEnv		# line 192, column 5
	movl	Stacks_s,%eax
 	subl	$1,%eax 
	cmpl	$1000,%eax
	jbe	.Lab49
.Lab50:
   	call	BoundErr_		
.Lab49:
	pushl	%eax
	call	Stacks_ReleaseLocal
	addl	$4, %esp
.LN51:
	.stabn  68,0,193,.LN51-Stacks_DisposeEnv		# line 193, column 0
.LBE7:
	leave
	ret
	.Lab48 = 4
	.stabn 192,0,0,.LBB7-Stacks_DisposeEnv
	.stabn 224,0,0,.LBE7-Stacks_DisposeEnv
	.stabs "Stacks_ReleaseLocal:F16",36,0,0,Stacks_ReleaseLocal
	.align 4
Stacks_ReleaseLocal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab51, %esp
.LN52:
	.stabn  68,0,170,.LN52-Stacks_ReleaseLocal		# line 170, column 2
.LBB8:
.LN53:
	.stabn  68,0,171,.LN53-Stacks_ReleaseLocal		# line 171, column 7
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab52
.Lab53:
.LN54:
	.stabn  68,0,173,.LN54-Stacks_ReleaseLocal		# line 173, column 10
	movl	$1,%eax
 	addl	-8(%ebp),%eax 
	cmpl	$1000,%eax
	jbe	.Lab55
.Lab56:
   	call	BoundErr_		
.Lab55:
	movl	%eax,-8(%ebp) 
.LN55:
	.stabn  68,0,174,.LN55-Stacks_ReleaseLocal		# line 174, column 11
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab58
	jmp	.Lab57
.Lab58:
   	call	BoundErr_		
.Lab57:
	imull	$28,%eax 
	movl	Stacks_s + 7992(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN56:
	.stabn  68,0,175,.LN56-Stacks_ReleaseLocal		# line 175, column 8
	cmpl	$0,-12(%ebp)
	je	.Lab59
.Lab60:
.LN57:
	.stabn  68,0,176,.LN57-Stacks_ReleaseLocal		# line 176, column 24
	movl	-12(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	16(%eax),%eax
 	subl	$1,%eax 
	movl	%eax,16(%ebx) 
.LN58:
	.stabn  68,0,177,.LN58-Stacks_ReleaseLocal		# line 177, column 11
	movl	-12(%ebp),%eax
	cmpb	$0,12(%eax)
	je	.Lab61
.Lab63:
	movl	-12(%ebp),%eax
	cmpl	$0,16(%eax)
	jne	.Lab61
.Lab62:
.LN59:
	.stabn  68,0,178,.LN59-Stacks_ReleaseLocal		# line 178, column 14
	.data
.Lab64:
 	.ascii	"DeleteClause.(1)...\000"
	.text
	pushl	$19
	leal	.Lab64,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.Lab61:
.Lab59:
.Lab52:
.LN60:
	.stabn  68,0,172,.LN60-Stacks_ReleaseLocal		# line 172, column 13
	movl	-8(%ebp),%eax
	cmpl	Stacks_s,%eax
	jb	.Lab53
.Lab54:
.LN61:
	.stabn  68,0,183,.LN61-Stacks_ReleaseLocal		# line 183, column 5
	movl	Stacks_s,%eax
	cmpl	8(%ebp),%eax
	jbe	.Lab65
.Lab66:
.LN62:
	.stabn  68,0,184,.LN62-Stacks_ReleaseLocal		# line 184, column 15
	movl	$1,%eax
 	addl	8(%ebp),%eax 
	cmpl	$1,%eax
	jb	.Lab68
	cmpl	$1000,%eax
	jbe	.Lab67
.Lab68:
   	call	BoundErr_		
.Lab67:
	imull	$28,%eax 
	movl	Stacks_s + 8004(%eax),%eax
	movl	%eax,Stacks_s + 44012 
.Lab65:
.LN63:
	.stabn  68,0,185,.LN63-Stacks_ReleaseLocal		# line 185, column 12
	movl	8(%ebp),%eax
	movl	%eax,Stacks_s 
.LN64:
	.stabn  68,0,186,.LN64-Stacks_ReleaseLocal		# line 186, column 0
.LBE8:
	leave
	ret
	.Lab51 = 12
	.stabs "cl:24",128,0,4,-12
	.stabs "e:33",128,0,4,-8
	.stabs "newtop:p33",160,0,4,8
	.stabn 192,0,0,.LBB8-Stacks_ReleaseLocal
	.stabn 224,0,0,.LBE8-Stacks_ReleaseLocal
	.stabs "Stacks_GetEnv:F16",36,0,0,Stacks_GetEnv
	.align 4
Stacks_GetEnv:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab69, %esp
.LN65:
	.stabn  68,0,156,.LN65-Stacks_GetEnv		# line 156, column 1
.LBB9:
	movl	8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab71
	jmp	.Lab70
.Lab71:
   	call	BoundErr_		
.Lab70:
	imull	$28,%eax 
	leal	Stacks_s + 7980(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN66:
	.stabn  68,0,158,.LN66-Stacks_GetEnv		# line 158, column 13
	movl	12(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,(%ebx) 
.LN67:
	.stabn  68,0,159,.LN67-Stacks_GetEnv		# line 159, column 12
	movl	16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,(%ebx) 
.LN68:
	.stabn  68,0,160,.LN68-Stacks_GetEnv		# line 160, column 15
	movl	20(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	12(%eax),%eax
	movl	%eax,(%ebx) 
.LN69:
	.stabn  68,0,161,.LN69-Stacks_GetEnv		# line 161, column 0
.LBE9:
	leave
	ret
	.Lab69 = 8
	.stabs "clausep:v24",160,0,4,20
	.stabs "envp:v33",160,0,4,16
	.stabs "callp:v17",160,0,4,12
	.stabs "e:p33",160,0,4,8
	.stabn 192,0,0,.LBB9-Stacks_GetEnv
	.stabn 224,0,0,.LBE9-Stacks_GetEnv
	.stabs "Stacks_NewEnv:F16",36,0,0,Stacks_NewEnv
	.align 4
Stacks_NewEnv:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab72, %esp
.LN70:
	.stabn  68,0,128,.LN70-Stacks_NewEnv		# line 128, column 1
.LBB10:
.LN71:
	.stabn  68,0,129,.LN71-Stacks_NewEnv		# line 129, column 4
	cmpl	$1000,Stacks_s
	jb	.Lab73
.Lab74:
.LN72:
	.stabn  68,0,129,.LN72-Stacks_NewEnv		# line 129, column 32
	pushl	$15
	call	ErrorHandler_ExecError
	addl	$4, %esp
.Lab73:
.LN73:
	.stabn  68,0,130,.LN73-Stacks_NewEnv		# line 130, column 4
	movl	24(%ebp),%eax
 	addl	Stacks_s + 44012,%eax 
	cmpl	$2000,%eax
	jbe	.Lab75
.Lab76:
.LN74:
	.stabn  68,0,130,.LN74-Stacks_NewEnv		# line 130, column 37
	pushl	$16
	call	ErrorHandler_ExecError
	addl	$4, %esp
.Lab75:
.LN75:
	.stabn  68,0,131,.LN75-Stacks_NewEnv		# line 131, column 4
	incl	Stacks_s 
.LN76:
	.stabn  68,0,132,.LN76-Stacks_NewEnv		# line 132, column 6
	movl	8(%ebp),%ebx
	movl	Stacks_s,%eax
	movl	%eax,(%ebx) 
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab78
	jmp	.Lab77
.Lab78:
   	call	BoundErr_		
.Lab77:
	imull	$28,%eax 
	leal	Stacks_s + 7980(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN77:
	.stabn  68,0,134,.LN77-Stacks_NewEnv		# line 134, column 13
	movl	-12(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,(%ebx) 
.LN78:
	.stabn  68,0,135,.LN78-Stacks_NewEnv		# line 135, column 12
	movl	-12(%ebp),%ebx
	movl	16(%ebp),%eax
	movl	%eax,4(%ebx) 
.LN79:
	.stabn  68,0,136,.LN79-Stacks_NewEnv		# line 136, column 15
	movl	-12(%ebp),%ebx
	movl	Stacks_s + 4,%eax
	movl	%eax,8(%ebx) 
.LN80:
	.stabn  68,0,137,.LN80-Stacks_NewEnv		# line 137, column 15
	movl	-12(%ebp),%ebx
	movl	20(%ebp),%eax
	movl	%eax,12(%ebx) 
.LN81:
	.stabn  68,0,138,.LN81-Stacks_NewEnv		# line 138, column 14
	movl	-12(%ebp),%ebx
	movl	Stacks_s + 44008,%eax
	movl	%eax,16(%ebx) 
.LN82:
	.stabn  68,0,139,.LN82-Stacks_NewEnv		# line 139, column 15
	movl	-12(%ebp),%ebx
	movl	Stacks_s + 76016,%eax
	movl	%eax,20(%ebx) 
.LN83:
	.stabn  68,0,140,.LN83-Stacks_NewEnv		# line 140, column 13
	movl	-12(%ebp),%ebx
	movl	Stacks_s + 44012,%eax
	movl	%eax,24(%ebx) 
.LN84:
	.stabn  68,0,142,.LN84-Stacks_NewEnv		# line 142, column 4
	cmpl	$0,20(%ebp)
	je	.Lab79
.Lab80:
.LN85:
	.stabn  68,0,142,.LN85-Stacks_NewEnv		# line 142, column 27
	movl	20(%ebp),%eax
	incl	16(%eax) 
.Lab79:
.LN86:
	.stabn  68,0,143,.LN86-Stacks_NewEnv		# line 143, column 4
	movl	$1,%eax
 	addl	Stacks_s + 44012,%eax 
	movl	%eax,-16(%ebp) 
	movl	24(%ebp),%eax
 	addl	Stacks_s + 44012,%eax 
	movl	%eax,-20(%ebp) 
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	.Lab81
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp) 
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp) 
.Lab82:
	movl	-8(%ebp),%ebx
	cmpl	$1,%ebx
	jb	.Lab84
	cmpl	$2000,%ebx
	jbe	.Lab83
.Lab84:
   	call	BoundErr_		
.Lab83:
	movl	$16,%eax
 	addl	Stacks_s + 4(,%ebx,4),%eax 
	movl	%eax,-28(%ebp) 
.LN87:
	.stabn  68,0,145,.LN87-Stacks_NewEnv		# line 145, column 15
	movl	-28(%ebp),%eax
	movb	$2,(%eax) 
.LN88:
	.stabn  68,0,146,.LN88-Stacks_NewEnv		# line 146, column 15
	movl	-28(%ebp),%eax
	movl	$0,4(%eax) 
.LN89:
	.stabn  68,0,143,.LN89-Stacks_NewEnv		# line 143, column 4
	movl	-8(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jae	.Lab81
	incl	-8(%ebp) 
	jmp	.Lab82
.Lab81:
.LN90:
	.stabn  68,0,149,.LN90-Stacks_NewEnv		# line 149, column 11
	movl	24(%ebp),%eax
 	addl	Stacks_s + 44012,%eax 
	cmpl	$2000,%eax
	jbe	.Lab85
.Lab86:
   	call	BoundErr_		
.Lab85:
	movl	%eax,Stacks_s + 44012 
.LN91:
	.stabn  68,0,150,.LN91-Stacks_NewEnv		# line 150, column 0
.LBE10:
	leave
	ret
	.Lab72 = 28
	.stabs "n:4",128,0,4,-8
	.stabs "nvars:p4",160,0,4,24
	.stabs "clausep:p24",160,0,4,20
	.stabs "envp:p33",160,0,4,16
	.stabs "callp:p17",160,0,4,12
	.stabs "e:v33",160,0,4,8
	.stabn 192,0,0,.LBB10-Stacks_NewEnv
	.stabn 224,0,0,.LBE10-Stacks_NewEnv
	.stabs "Stacks_InitGloStack:F16",36,0,0,Stacks_InitGloStack
	.align 4
Stacks_InitGloStack:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab87, %esp
.LN92:
	.stabn  68,0,115,.LN92-Stacks_InitGloStack		# line 115, column 1
.LBB11:
.LN93:
	.stabn  68,0,116,.LN93-Stacks_InitGloStack		# line 116, column 3
	movl	$1,-8(%ebp) 
.Lab88:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab91
	cmpl	$1000,%eax
	jbe	.Lab90
.Lab91:
   	call	BoundErr_		
.Lab90:
	shll	$5, %eax 
	leal	Stacks_s + 43984(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN94:
	.stabn  68,0,118,.LN94-Stacks_InitGloStack		# line 118, column 15
	movl	-12(%ebp),%eax
	movl	$0,(%eax) 
.LN95:
	.stabn  68,0,119,.LN95-Stacks_InitGloStack		# line 119, column 13
	movl	-12(%ebp),%eax
	movb	$0,8(%eax) 
.LN96:
	.stabn  68,0,116,.LN96-Stacks_InitGloStack		# line 116, column 3
	cmpl	$1000,-8(%ebp)
	jae	.Lab89
	incl	-8(%ebp) 
	jmp	.Lab88
.Lab89:
.LN97:
	.stabn  68,0,117,.LN97-Stacks_InitGloStack		# line 117, column 0
.LBE11:
	leave
	ret
	.Lab87 = 12
	.stabs "n:4",128,0,4,-8
	.stabn 192,0,0,.LBB11-Stacks_InitGloStack
	.stabn 224,0,0,.LBE11-Stacks_InitGloStack
	.stabs "Stacks_NewGlobal:F16",36,0,0,Stacks_NewGlobal
	.align 4
Stacks_NewGlobal:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab92, %esp
.LN98:
	.stabn  68,0,106,.LN98-Stacks_NewGlobal		# line 106, column 1
.LBB12:
.LN99:
	.stabn  68,0,107,.LN99-Stacks_NewGlobal		# line 107, column 4
	cmpl	$1000,Stacks_s + 76016
	jne	.Lab93
.Lab94:
.LN100:
	.stabn  68,0,107,.LN100-Stacks_NewGlobal		# line 107, column 31
	.data
.Lab95:
 	.ascii	"no space on glostack\000"
	.text
	pushl	$20
	leal	.Lab95,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN101:
	.stabn  68,0,107,.LN101-Stacks_NewGlobal		# line 107, column 68
	call	exit_
.Lab93:
.LN102:
	.stabn  68,0,108,.LN102-Stacks_NewGlobal		# line 108, column 4
	incl	Stacks_s + 76016 
.LN103:
	.stabn  68,0,109,.LN103-Stacks_NewGlobal		# line 109, column 28
	movl	Stacks_s + 76016,%eax
	cmpl	$1,%eax
	jb	.Lab97
	jmp	.Lab96
.Lab97:
   	call	BoundErr_		
.Lab96:
	shll	$5, %eax 
	movl	$0,Stacks_s + 43984(%eax) 
.LN104:
	.stabn  68,0,110,.LN104-Stacks_NewGlobal		# line 110, column 5
	movl	8(%ebp),%ebx
	movl	Stacks_s + 76016,%eax
	cmpl	$1,%eax
	jb	.Lab99
	jmp	.Lab98
.Lab99:
   	call	BoundErr_		
.Lab98:
	shll	$5, %eax 
	leal	Stacks_s + 43984(%eax),%eax
	movl	%eax,(%ebx) 
.LN105:
	.stabn  68,0,111,.LN105-Stacks_NewGlobal		# line 111, column 0
.LBE12:
	leave
	ret
	.Lab92 = 4
	.stabs "x:v17",160,0,4,8
	.stabn 192,0,0,.LBB12-Stacks_NewGlobal
	.stabn 224,0,0,.LBE12-Stacks_NewGlobal
	.stabs "Stacks_Untrail:F16",36,0,0,Stacks_Untrail
	.align 4
Stacks_Untrail:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab100, %esp
.LN106:
	.stabn  68,0,87,.LN106-Stacks_Untrail		# line 87, column 1
.LBB13:
.LN107:
	.stabn  68,0,89,.LN107-Stacks_Untrail		# line 89, column 4
	movl	$1,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-16(%ebp) 
	movl	Stacks_s + 44008,%eax
	movl	%eax,-20(%ebp) 
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	.Lab101
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp) 
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp) 
.Lab102:
.LN108:
	.stabn  68,0,91,.LN108-Stacks_Untrail		# line 91, column 8
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab104
	cmpl	$2000,%eax
	jbe	.Lab103
.Lab104:
   	call	BoundErr_		
.Lab103:
	movl	Stacks_s + 36004(,%eax,4),%eax
	movl	%eax,-12(%ebp) 
	movl	$16,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-28(%ebp) 
.LN109:
	.stabn  68,0,93,.LN109-Stacks_Untrail		# line 93, column 14
	movl	-28(%ebp),%eax
	movb	$2,(%eax) 
.LN110:
	.stabn  68,0,94,.LN110-Stacks_Untrail		# line 94, column 14
	movl	-28(%ebp),%eax
	movl	$0,4(%eax) 
.LN111:
	.stabn  68,0,89,.LN111-Stacks_Untrail		# line 89, column 4
	movl	-8(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jae	.Lab101
	incl	-8(%ebp) 
	jmp	.Lab102
.Lab101:
.LN112:
	.stabn  68,0,99,.LN112-Stacks_Untrail		# line 99, column 12
	movl	8(%ebp),%eax
	movl	%eax,Stacks_s + 44008 
.LN113:
	.stabn  68,0,100,.LN113-Stacks_Untrail		# line 100, column 0
.LBE13:
	leave
	ret
	.Lab100 = 28
	.stabs "t:17",128,0,4,-12
	.stabs "p:4",128,0,4,-8
	.stabs "newtrail:p4",160,0,4,8
	.stabn 192,0,0,.LBB13-Stacks_Untrail
	.stabn 224,0,0,.LBE13-Stacks_Untrail
	.stabs "Stacks_TrimTrail:F16",36,0,0,Stacks_TrimTrail
	.align 4
Stacks_TrimTrail:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab105, %esp
.LN114:
	.stabn  68,0,65,.LN114-Stacks_TrimTrail		# line 65, column 1
.LBB14:
.LN115:
	.stabn  68,0,67,.LN115-Stacks_TrimTrail		# line 67, column 5
	movl	$1,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-12(%ebp) 
.LN116:
	.stabn  68,0,68,.LN116-Stacks_TrimTrail		# line 68, column 4
	movl	$1,%eax
 	addl	8(%ebp),%eax 
	movl	%eax,-16(%ebp) 
	movl	Stacks_s + 44008,%eax
	movl	%eax,-20(%ebp) 
	movl	-16(%ebp),%eax
	cmpl	-20(%ebp),%eax
	ja	.Lab106
	movl	-16(%ebp),%eax
	movl	%eax,-8(%ebp) 
	movl	-20(%ebp),%eax
	movl	%eax,-24(%ebp) 
.Lab107:
.LN117:
	.stabn  68,0,69,.LN117-Stacks_TrimTrail		# line 69, column 6
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab111
	cmpl	$2000,%eax
	jbe	.Lab110
.Lab111:
   	call	BoundErr_		
.Lab110:
	pushl	Stacks_s + 36004(,%eax,4)
	call	Stacks_Critical
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab108
.Lab109:
.LN118:
	.stabn  68,0,70,.LN118-Stacks_TrimTrail		# line 70, column 16
	movl	-12(%ebp),%ebx
	cmpl	$1,%ebx
	jb	.Lab113
	cmpl	$2000,%ebx
	jbe	.Lab112
.Lab113:
   	call	BoundErr_		
.Lab112:
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab115
	cmpl	$2000,%eax
	jbe	.Lab114
.Lab115:
   	call	BoundErr_		
.Lab114:
	movl	Stacks_s + 36004(,%eax,4),%eax
	movl	%eax,Stacks_s + 36004(,%ebx,4) 
.LN119:
	.stabn  68,0,71,.LN119-Stacks_TrimTrail		# line 71, column 8
	incl	-12(%ebp) 
.Lab108:
.LN120:
	.stabn  68,0,68,.LN120-Stacks_TrimTrail		# line 68, column 4
	movl	-8(%ebp),%eax
	cmpl	-24(%ebp),%eax
	jae	.Lab106
	incl	-8(%ebp) 
	jmp	.Lab107
.Lab106:
.LN121:
	.stabn  68,0,74,.LN121-Stacks_TrimTrail		# line 74, column 12
	movl	-12(%ebp),%eax
 	subl	$1,%eax 
	movl	%eax,Stacks_s + 44008 
.LN122:
	.stabn  68,0,75,.LN122-Stacks_TrimTrail		# line 75, column 0
.LBE14:
	leave
	ret
	.Lab105 = 24
	.stabs "q:4",128,0,4,-12
	.stabs "p:4",128,0,4,-8
	.stabs "base:p4",160,0,4,8
	.stabn 192,0,0,.LBB14-Stacks_TrimTrail
	.stabn 224,0,0,.LBE14-Stacks_TrimTrail
	.stabs "Stacks_TrailVar:F16",36,0,0,Stacks_TrailVar
	.align 4
Stacks_TrailVar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab116, %esp
.LN123:
	.stabn  68,0,48,.LN123-Stacks_TrailVar		# line 48, column 1
.LBB15:
.LN124:
	.stabn  68,0,49,.LN124-Stacks_TrailVar		# line 49, column 4
	pushl	8(%ebp)
	call	Stacks_Critical
	addl	$4, %esp
	cmpb	$0,%al
	je	.Lab117
.Lab118:
.LN125:
	.stabn  68,0,50,.LN125-Stacks_TrailVar		# line 50, column 7
	cmpl	$2000,Stacks_s + 44008
	jne	.Lab119
.Lab120:
.LN126:
	.stabn  68,0,50,.LN126-Stacks_TrailVar		# line 50, column 33
	.data
.Lab121:
 	.ascii	"no space on trail...\000"
	.text
	pushl	$20
	leal	.Lab121,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN127:
	.stabn  68,0,50,.LN127-Stacks_TrailVar		# line 50, column 70
	call	exit_
.Lab119:
.LN128:
	.stabn  68,0,51,.LN128-Stacks_TrailVar		# line 51, column 7
	incl	Stacks_s + 44008 
.LN129:
	.stabn  68,0,52,.LN129-Stacks_TrailVar		# line 52, column 22
	movl	Stacks_s + 44008,%ebx
	cmpl	$1,%ebx
	jb	.Lab123
	cmpl	$2000,%ebx
	jbe	.Lab122
.Lab123:
   	call	BoundErr_		
.Lab122:
	movl	8(%ebp),%eax
	movl	%eax,Stacks_s + 36004(,%ebx,4) 
.Lab117:
.LN130:
	.stabn  68,0,53,.LN130-Stacks_TrailVar		# line 53, column 0
.LBE15:
	leave
	ret
	.Lab116 = 8
	.stabs "p:4",128,0,4,-8
	.stabs "v:p17",160,0,4,8
	.stabn 192,0,0,.LBB15-Stacks_TrailVar
	.stabn 224,0,0,.LBE15-Stacks_TrailVar
	.stabs "Stacks_Critical:F1",36,0,0,Stacks_Critical
	.align 4
Stacks_Critical:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab124, %esp
.LN131:
	.stabn  68,0,33,.LN131-Stacks_Critical		# line 33, column 1
.LBB16:
.LN132:
	.stabn  68,0,34,.LN132-Stacks_Critical		# line 34, column 4
	cmpl	$0,Stacks_s + 4
	jne	.Lab127
.Lab126:
.LN133:
	.stabn  68,0,35,.LN133-Stacks_Critical		# line 35, column 7
	movb	$0,%al
	leave
	ret
	jmp	.Lab125
.Lab127:
.LN134:
	.stabn  68,0,37,.LN134-Stacks_Critical		# line 37, column 7
	movl	8(%ebp),%eax
	movzbl	8(%eax),%eax
	.data
	.align 4
.Lab133:
	.long	.Lab132
	.long	.Lab131
	.long	.Lab130
	.text
	subl	$0,%eax
	jb	.Lab128
	cmpl	$2,%eax
	ja	.Lab128
	jmp	*.Lab133(,%eax,4)
.Lab132:
.LN135:
	.stabn  68,0,38,.LN135-Stacks_Critical		# line 38, column 18
	movl	8(%ebp),%ebx
	movl	Stacks_s + 4,%eax
	cmpl	$1,%eax
	jb	.Lab135
	jmp	.Lab134
.Lab135:
   	call	BoundErr_		
.Lab134:
	imull	$28,%eax 
	movl	Stacks_s + 8000(%eax),%eax
	cmpl	$2147483647,%eax
	jbe	.Lab136
.Lab137:
   	call	BoundErr_		
.Lab136:
	cmpl	%eax,12(%ebx)
	setle	%al
	leave
	ret
	jmp	.Lab129
.Lab131:
.LN136:
	.stabn  68,0,39,.LN136-Stacks_Critical		# line 39, column 18
	movl	8(%ebp),%eax
	movl	12(%eax),%ebx
	movl	Stacks_s + 4,%eax
	cmpl	$1,%eax
	jb	.Lab139
	jmp	.Lab138
.Lab139:
   	call	BoundErr_		
.Lab138:
	imull	$28,%eax 
	cmpl	Stacks_s + 8004(%eax),%ebx
	setle	%al
	leave
	ret
	jmp	.Lab129
.Lab130:
.LN137:
	.stabn  68,0,40,.LN137-Stacks_Critical		# line 40, column 18
	pushl	$1
	call	ErrorHandler_InternalError
	addl	$4, %esp
	jmp	.Lab129
.Lab128:
	call	CaseErr_
.Lab129:
.Lab125:
.LN138:
	.stabn  68,0,41,.LN138-Stacks_Critical		# line 41, column 0
	call	ReturnErr_
.LBE16:
	leave
	ret
	.Lab124 = 4
	.stabs "v:p17",160,0,4,8
	.stabn 192,0,0,.LBB16-Stacks_Critical
	.stabn 224,0,0,.LBE16-Stacks_Critical
	.stabs "Stacks:F16",36,0,0,Stacks
	.align 4
Stacks:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab140, %esp
.LN139:
	.stabn  68,0,299,.LN139-Stacks		# line 299, column 1
.LBB17:
.LN140:
	.stabn  68,0,300,.LN140-Stacks		# line 300, column 3
	call	Stacks_InitTrail
.LN141:
	.stabn  68,0,301,.LN141-Stacks		# line 301, column 3
	call	Stacks_InitStacks
.LN142:
	.stabn  68,0,302,.LN142-Stacks		# line 302, column 0
.LBE17:
	leave
	ret
	.Lab140 = 4
	.stabs "MaxGloStack:c=i1000",128,0,0,0
	.stabs "MaxTrail:c=i2000",128,0,0,0
	.stabs "MaxFrames:c=i1000",128,0,0,0
	.stabs "LocSize:c=i2000",128,0,0,0
	.stabn 192,0,0,.LBB17-Stacks
	.stabn 224,0,0,.LBE17-Stacks
	.stabs "Stacks_s:Gs76020glotop:34=4,608128,32;glostack:35=ar4;1;1000;18,352128,256000;loctop:36=4,352096,32;trailtop:4,352064,32;Trail:37=ar4;1;2000;15,288064,64000;envtop:33,0,32;choicepoint:33,32,32;locstack:38=ar4;1;2000;17,64,64000;display:39=ar4;1;1000;40=s28Fbase:41=4,192,32;Fglotop:4,160,32;Ftrail:4,128,32;Fclause:24,96,32;Fchoice:33,64,32;Fenv:33,32,32;Fcall:17,0,32;;,64064,224000;;",32,0,0,0
