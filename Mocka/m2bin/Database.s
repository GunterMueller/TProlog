	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Database.mod",100,0,0,.LBB0
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
	.globl	ErrorHandler_InternalError
	.globl	ErrorHandler_ExecError
	.globl	ErrorHandler_Report
	.globl	ErrorHandler_Abort
	.globl	ErrorHandler_Crash
	.globl	Storage_DEALLOCATE
	.globl	Storage_ALLOCATE
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
	.globl	Database
	.globl	Database_DeleteClause
	.globl	Database_ReleaseChain
	.globl	Database_AddClause
	.globl	Database_AddClause_AddCl
	.globl	Database_AddClause_MakeClause
	.globl	Database_AddClause_PlugZ
	.globl	Database_AddClause_PlugA
	.globl	Database_AddClause_SkelBody
	.globl	Database_AddClause_SkelHead
	.globl	Database_AddClause_SkelCall
	.globl	Database_AddClause_Skeleton
	.globl	Database_AddClause_Skeleton_SkelArgs
	.globl	Database_AddClause_SkelVar
	.globl	Database_AddClause_NewSkel
	.globl	Database_AddClause_AddClError
	.globl	Database_FindClause
	.globl	Database_Hash
	.stabs "Database_DeleteClause:F16",36,0,0,Database_DeleteClause
	.align 4
Database_DeleteClause:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,377,.LN1-Database_DeleteClause		# line 377, column 1
.LBB1:
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
.LN2:
	.stabn  68,0,379,.LN2-Database_DeleteClause		# line 379, column 7
	movl	-8(%ebp),%eax
	cmpl	$0,28(%eax)
	je	.Lab4
.Lab3:
.LN3:
	.stabn  68,0,380,.LN3-Database_DeleteClause		# line 380, column 27
	movl	-8(%ebp),%eax
	movl	28(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,24(%ebx) 
	jmp	.Lab2
.Lab4:
.LN4:
	.stabn  68,0,382,.LN4-Database_DeleteClause		# line 382, column 32
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	20(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,28(%ebx) 
.Lab2:
.LN5:
	.stabn  68,0,384,.LN5-Database_DeleteClause		# line 384, column 7
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	je	.Lab5
.Lab6:
.LN6:
	.stabn  68,0,384,.LN6-Database_DeleteClause		# line 384, column 45
	movl	-8(%ebp),%eax
	movl	24(%eax),%ebx
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	movl	%eax,28(%ebx) 
.Lab5:
.LN7:
	.stabn  68,0,385,.LN7-Database_DeleteClause		# line 385, column 7
	pushl	$0
	movl	-8(%ebp),%eax
	pushl	32(%eax)
	call	Database_ReleaseChain
	addl	$8, %esp
.LN8:
	.stabn  68,0,387,.LN8-Database_DeleteClause		# line 387, column 4
	pushl	$36
	leal	8(%ebp),%eax
	pushl	%eax
	call	Storage_DEALLOCATE
	addl	$8, %esp
.LN9:
	.stabn  68,0,388,.LN9-Database_DeleteClause		# line 388, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
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
	.stabn 192,0,0,.LBB1-Database_DeleteClause
	.stabn 224,0,0,.LBE1-Database_DeleteClause
	.stabs "Database_ReleaseChain:F16",36,0,0,Database_ReleaseChain
	.align 4
Database_ReleaseChain:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab7, %esp
.LN10:
	.stabn  68,0,365,.LN10-Database_ReleaseChain		# line 365, column 1
.LBB2:
.LN11:
	.stabn  68,0,366,.LN11-Database_ReleaseChain		# line 366, column 6
	movl	8(%ebp),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab8
.Lab9:
.LN12:
	.stabn  68,0,368,.LN12-Database_ReleaseChain		# line 368, column 9
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebp) 
.LN13:
	.stabn  68,0,369,.LN13-Database_ReleaseChain		# line 369, column 7
	pushl	$4
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Storage_DEALLOCATE
	addl	$8, %esp
.LN14:
	.stabn  68,0,370,.LN14-Database_ReleaseChain		# line 370, column 9
	movl	-12(%ebp),%eax
	movl	%eax,-8(%ebp) 
.Lab8:
.LN15:
	.stabn  68,0,367,.LN15-Database_ReleaseChain		# line 367, column 12
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	jne	.Lab9
.Lab10:
.LN16:
	.stabn  68,0,368,.LN16-Database_ReleaseChain		# line 368, column 0
.LBE2:
	leave
	ret
	.Lab7 = 12
	.stabs "q:19",128,0,4,-12
	.stabs "p:19",128,0,4,-8
	.stabs "finish:p19",160,0,4,12
	.stabs "start:p19",160,0,4,8
	.stabn 192,0,0,.LBB2-Database_ReleaseChain
	.stabn 224,0,0,.LBE2-Database_ReleaseChain
	.stabs "Database_AddClause_AddCl:F16",36,0,0,Database_AddClause_AddCl
	.align 4
Database_AddClause_AddCl:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab11, %esp
.LN17:
	.stabn  68,0,323,.LN17-Database_AddClause_AddCl		# line 323, column 4
.LBB3:
.LN18:
	.stabn  68,0,324,.LN18-Database_AddClause_AddCl		# line 324, column 9
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN19:
	.stabn  68,0,325,.LN19-Database_AddClause_AddCl		# line 325, column 7
	pushl	$1
	pushl	AtomTable_s + 5028
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$1,%al
	je	.Lab13
.Lab14:
	pushl	$2
	pushl	AtomTable_s + 5120
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab12
.Lab13:
.LN20:
	.stabn  68,0,326,.LN20-Database_AddClause_AddCl		# line 326, column 10
	pushl	$2
	call	Database_AddClause_AddClError
	addl	$4, %esp
.Lab12:
.LN21:
	.stabn  68,0,327,.LN21-Database_AddClause_AddCl		# line 327, column 7
	pushl	$2
	pushl	AtomTable_s + 5032
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab17
.Lab16:
.LN22:
	.stabn  68,0,328,.LN22-Database_AddClause_AddCl		# line 328, column 15
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Database_AddClause_SkelHead
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
.LN23:
	.stabn  68,0,329,.LN23-Database_AddClause_AddCl		# line 329, column 15
	pushl	$0
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	pushl	(%eax)
	call	Database_AddClause_SkelBody
	addl	$8, %esp
	movl	%eax,-16(%ebp) 
.LN24:
	.stabn  68,0,330,.LN24-Database_AddClause_AddCl		# line 330, column 17
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Database_Hash
	addl	$8, %esp
	movl	%eax,-20(%ebp) 
	jmp	.Lab15
.Lab17:
.LN25:
	.stabn  68,0,333,.LN25-Database_AddClause_AddCl		# line 333, column 15
	pushl	-8(%ebp)
	call	Database_AddClause_SkelHead
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
.LN26:
	.stabn  68,0,334,.LN26-Database_AddClause_AddCl		# line 334, column 15
	movl	$0,-16(%ebp) 
.LN27:
	.stabn  68,0,335,.LN27-Database_AddClause_AddCl		# line 335, column 17
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	-8(%ebp)
	call	Database_Hash
	addl	$8, %esp
	movl	%eax,-20(%ebp) 
.Lab15:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-24(%ebp) 
.LN28:
	.stabn  68,0,338,.LN28-Database_AddClause_AddCl		# line 338, column 10
	cmpl	$0,OpSystem_s
	jne	.Lab20
.Lab22:
	cmpl	$0,OpSystem_s + 12
	jne	.Lab20
.Lab21:
	movl	-24(%ebp),%eax
	cmpb	$1,24(%eax)
	je	.Lab19
.Lab20:
	movl	-24(%ebp),%eax
	cmpb	$1,25(%eax)
	jne	.Lab18
.Lab19:
.LN29:
	.stabn  68,0,340,.LN29-Database_AddClause_AddCl		# line 340, column 13
	pushl	$22
	call	Database_AddClause_AddClError
	addl	$4, %esp
.Lab18:
.LN30:
	.stabn  68,0,341,.LN30-Database_AddClause_AddCl		# line 341, column 10
	cmpl	$1,OpSystem_s
	jne	.Lab23
.Lab24:
.LN31:
	.stabn  68,0,341,.LN31-Database_AddClause_AddCl		# line 341, column 42
	movl	-24(%ebp),%eax
	movb	$1,24(%eax) 
.Lab23:
.LN32:
	.stabn  68,0,342,.LN32-Database_AddClause_AddCl		# line 342, column 10
	movl	DISPLAY_,%eax
	cmpb	$0,16(%eax)
	je	.Lab27
.Lab26:
.LN33:
	.stabn  68,0,343,.LN33-Database_AddClause_AddCl		# line 343, column 13
	pushl	$0
	movl	$28,%eax
 	addl	-24(%ebp),%eax 
	pushl	%eax
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	Database_AddClause_MakeClause
	addl	$12, %esp
	pushl	%eax
	call	Database_AddClause_PlugA
	addl	$12, %esp
	jmp	.Lab25
.Lab27:
.LN34:
	.stabn  68,0,345,.LN34-Database_AddClause_AddCl		# line 345, column 13
	movl	$28,%eax
 	addl	-24(%ebp),%eax 
	pushl	%eax
	pushl	-20(%ebp)
	pushl	-16(%ebp)
	pushl	-12(%ebp)
	call	Database_AddClause_MakeClause
	addl	$12, %esp
	pushl	%eax
	call	Database_AddClause_PlugZ
	addl	$8, %esp
.Lab25:
.LN35:
	.stabn  68,0,346,.LN35-Database_AddClause_AddCl		# line 346, column 0
.LBE3:
	leave
	ret
	.Lab11 = 24
	.stabs "keyval:7",128,0,4,-20
	.stabs "body:19",128,0,4,-16
	.stabs "head:19",128,0,4,-12
	.stabs "y:19",128,0,4,-8
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB3-Database_AddClause_AddCl
	.stabn 224,0,0,.LBE3-Database_AddClause_AddCl
	.stabs "Database_AddClause_MakeClause:F17",36,0,0,Database_AddClause_MakeClause
	.align 4
Database_AddClause_MakeClause:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab28, %esp
.LN36:
	.stabn  68,0,302,.LN36-Database_AddClause_MakeClause		# line 302, column 4
.LBB4:
.LN37:
	.stabn  68,0,303,.LN37-Database_AddClause_MakeClause		# line 303, column 7
	pushl	$36
	leal	-8(%ebp),%eax
	pushl	%eax
	call	Storage_ALLOCATE
	addl	$8, %esp
	movl	-8(%ebp),%eax
	movl	%eax,-12(%ebp) 
.LN38:
	.stabn  68,0,305,.LN38-Database_AddClause_MakeClause		# line 305, column 15
	movl	-12(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%ebx) 
.LN39:
	.stabn  68,0,306,.LN39-Database_AddClause_MakeClause		# line 306, column 15
	movl	-12(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	%eax,4(%ebx) 
.LN40:
	.stabn  68,0,307,.LN40-Database_AddClause_MakeClause		# line 307, column 16
	movl	-12(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-16(%eax),%eax
	movl	%eax,8(%ebx) 
.LN41:
	.stabn  68,0,308,.LN41-Database_AddClause_MakeClause		# line 308, column 17
	movl	-12(%ebp),%eax
	movb	$0,12(%eax) 
.LN42:
	.stabn  68,0,309,.LN42-Database_AddClause_MakeClause		# line 309, column 19
	movl	-12(%ebp),%eax
	movl	$0,16(%eax) 
.LN43:
	.stabn  68,0,310,.LN43-Database_AddClause_MakeClause		# line 310, column 17
	movl	-12(%ebp),%ebx
	movl	16(%ebp),%eax
	movl	%eax,20(%ebx) 
.LN44:
	.stabn  68,0,311,.LN44-Database_AddClause_MakeClause		# line 311, column 16
	movl	-12(%ebp),%eax
	movl	$0,24(%eax) 
.LN45:
	.stabn  68,0,312,.LN45-Database_AddClause_MakeClause		# line 312, column 20
	movl	-12(%ebp),%eax
	movl	$0,28(%eax) 
.LN46:
	.stabn  68,0,313,.LN46-Database_AddClause_MakeClause		# line 313, column 20
	movl	-12(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-8(%eax),%eax
	movl	%eax,32(%ebx) 
.LN47:
	.stabn  68,0,315,.LN47-Database_AddClause_MakeClause		# line 315, column 7
	movl	-8(%ebp),%eax
	leave
	ret
.LN48:
	.stabn  68,0,316,.LN48-Database_AddClause_MakeClause		# line 316, column 0
	call	ReturnErr_
.LBE4:
	leave
	ret
	.Lab28 = 12
	.stabs "cl:17",128,0,4,-8
	.stabs "k:p7",160,0,4,16
	.stabs "b:p19",160,0,4,12
	.stabs "h:p19",160,0,4,8
	.stabn 192,0,0,.LBB4-Database_AddClause_MakeClause
	.stabn 224,0,0,.LBE4-Database_AddClause_MakeClause
	.stabs "Database_AddClause_PlugZ:F16",36,0,0,Database_AddClause_PlugZ
	.align 4
Database_AddClause_PlugZ:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab29, %esp
.LN49:
	.stabn  68,0,289,.LN49-Database_AddClause_PlugZ		# line 289, column 4
.LBB5:
.LN50:
	.stabn  68,0,290,.LN50-Database_AddClause_PlugZ		# line 290, column 7
	movl	12(%ebp),%eax
	cmpl	$0,(%eax)
	jne	.Lab32
.Lab31:
.LN51:
	.stabn  68,0,291,.LN51-Database_AddClause_PlugZ		# line 291, column 10
	pushl	$0
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Database_AddClause_PlugA
	addl	$12, %esp
	jmp	.Lab30
.Lab32:
.LN52:
	.stabn  68,0,293,.LN52-Database_AddClause_PlugZ		# line 293, column 12
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
	jmp	.Lab33
.Lab34:
.LN53:
	.stabn  68,0,294,.LN53-Database_AddClause_PlugZ		# line 294, column 37
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,-8(%ebp) 
.Lab33:
.LN54:
	.stabn  68,0,294,.LN54-Database_AddClause_PlugZ		# line 294, column 25
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	.Lab34
.Lab35:
.LN55:
	.stabn  68,0,295,.LN55-Database_AddClause_PlugZ		# line 295, column 10
	pushl	-8(%ebp)
	movl	$24,%eax
 	addl	-8(%ebp),%eax 
	pushl	%eax
	pushl	8(%ebp)
	call	Database_AddClause_PlugA
	addl	$12, %esp
.Lab30:
.LN56:
	.stabn  68,0,296,.LN56-Database_AddClause_PlugZ		# line 296, column 0
.LBE5:
	leave
	ret
	.Lab29 = 8
	.stabs "p:17",128,0,4,-8
	.stabs "cp:v17",160,0,4,12
	.stabs "cl:p17",160,0,4,8
	.stabn 192,0,0,.LBB5-Database_AddClause_PlugZ
	.stabn 224,0,0,.LBE5-Database_AddClause_PlugZ
	.stabs "Database_AddClause_PlugA:F16",36,0,0,Database_AddClause_PlugA
	.align 4
Database_AddClause_PlugA:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab36, %esp
.LN57:
	.stabn  68,0,279,.LN57-Database_AddClause_PlugA		# line 279, column 4
.LBB6:
.LN58:
	.stabn  68,0,280,.LN58-Database_AddClause_PlugA		# line 280, column 17
	movl	8(%ebp),%ebx
	movl	12(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,24(%ebx) 
.LN59:
	.stabn  68,0,281,.LN59-Database_AddClause_PlugA		# line 281, column 21
	movl	8(%ebp),%ebx
	movl	16(%ebp),%eax
	movl	%eax,28(%ebx) 
.LN60:
	.stabn  68,0,282,.LN60-Database_AddClause_PlugA		# line 282, column 7
	movl	12(%ebp),%eax
	cmpl	$0,(%eax)
	je	.Lab37
.Lab38:
.LN61:
	.stabn  68,0,282,.LN61-Database_AddClause_PlugA		# line 282, column 39
	movl	12(%ebp),%eax
	movl	(%eax),%ebx
	movl	8(%ebp),%eax
	movl	%eax,28(%ebx) 
.Lab37:
.LN62:
	.stabn  68,0,283,.LN62-Database_AddClause_PlugA		# line 283, column 10
	movl	12(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%ebx) 
.LN63:
	.stabn  68,0,284,.LN63-Database_AddClause_PlugA		# line 284, column 0
.LBE6:
	leave
	ret
	.Lab36 = 4
	.stabs "prev:p17",160,0,4,16
	.stabs "cp:v17",160,0,4,12
	.stabs "cl:p17",160,0,4,8
	.stabn 192,0,0,.LBB6-Database_AddClause_PlugA
	.stabn 224,0,0,.LBE6-Database_AddClause_PlugA
	.stabs "Database_AddClause_SkelBody:F19",36,0,0,Database_AddClause_SkelBody
	.align 4
Database_AddClause_SkelBody:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab39, %esp
.LN64:
	.stabn  68,0,265,.LN64-Database_AddClause_SkelBody		# line 265, column 4
.LBB7:
.LN65:
	.stabn  68,0,266,.LN65-Database_AddClause_SkelBody		# line 266, column 7
	cmpl	$200,12(%ebp)
	jle	.Lab40
.Lab41:
.LN66:
	.stabn  68,0,266,.LN66-Database_AddClause_SkelBody		# line 266, column 32
	pushl	$12
	call	Database_AddClause_AddClError
	addl	$4, %esp
.Lab40:
.LN67:
	.stabn  68,0,267,.LN67-Database_AddClause_SkelBody		# line 267, column 9
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN68:
	.stabn  68,0,268,.LN68-Database_AddClause_SkelBody		# line 268, column 7
	pushl	$2
	pushl	AtomTable_s + 5008
	pushl	-8(%ebp)
	call	Terms_IsFunc
	addl	$12, %esp
	cmpb	$0,%al
	je	.Lab44
.Lab43:
.LN69:
	.stabn  68,0,269,.LN69-Database_AddClause_SkelBody		# line 269, column 10
	movl	$1,%eax
 	addl	12(%ebp),%eax 
	pushl	%eax
	movl	-8(%ebp),%eax
	movl	28(%eax),%eax
	pushl	(%eax)
	call	Database_AddClause_SkelBody
	addl	$8, %esp
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Database_AddClause_SkelCall
	addl	$4, %esp
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	leave
	ret
	jmp	.Lab42
.Lab44:
.LN70:
	.stabn  68,0,272,.LN70-Database_AddClause_SkelBody		# line 272, column 10
	pushl	-8(%ebp)
	call	Database_AddClause_SkelCall
	addl	$4, %esp
	leave
	ret
.Lab42:
.LN71:
	.stabn  68,0,273,.LN71-Database_AddClause_SkelBody		# line 273, column 0
	call	ReturnErr_
.LBE7:
	leave
	ret
	.Lab39 = 8
	.stabs "y:19",128,0,4,-8
	.stabs "depth:p7",160,0,4,12
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB7-Database_AddClause_SkelBody
	.stabn 224,0,0,.LBE7-Database_AddClause_SkelBody
	.stabs "Database_AddClause_SkelHead:F19",36,0,0,Database_AddClause_SkelHead
	.align 4
Database_AddClause_SkelHead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab45, %esp
.LN72:
	.stabn  68,0,256,.LN72-Database_AddClause_SkelHead		# line 256, column 5
.LBB8:
.LN73:
	.stabn  68,0,257,.LN73-Database_AddClause_SkelHead		# line 257, column 10
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN74:
	.stabn  68,0,258,.LN74-Database_AddClause_SkelHead		# line 258, column 8
	movl	-8(%ebp),%eax
	cmpb	$0,16(%eax)
	je	.Lab46
.Lab47:
.LN75:
	.stabn  68,0,258,.LN75-Database_AddClause_SkelHead		# line 258, column 37
	pushl	$2
	call	Database_AddClause_AddClError
	addl	$4, %esp
.Lab46:
.LN76:
	.stabn  68,0,259,.LN76-Database_AddClause_SkelHead		# line 259, column 8
	pushl	$0
	pushl	-8(%ebp)
	call	Database_AddClause_Skeleton
	addl	$8, %esp
	leave
	ret
.LN77:
	.stabn  68,0,260,.LN77-Database_AddClause_SkelHead		# line 260, column 0
	call	ReturnErr_
.LBE8:
	leave
	ret
	.Lab45 = 8
	.stabs "y:19",128,0,4,-8
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB8-Database_AddClause_SkelHead
	.stabn 224,0,0,.LBE8-Database_AddClause_SkelHead
	.stabs "Database_AddClause_SkelCall:F19",36,0,0,Database_AddClause_SkelCall
	.align 4
Database_AddClause_SkelCall:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab48, %esp
.LN78:
	.stabn  68,0,233,.LN78-Database_AddClause_SkelCall		# line 233, column 5
.LBB9:
.LN79:
	.stabn  68,0,234,.LN79-Database_AddClause_SkelCall		# line 234, column 10
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN80:
	.stabn  68,0,235,.LN80-Database_AddClause_SkelCall		# line 235, column 8
	movl	-8(%ebp),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab54:
	.long	.Lab53
	.long	.Lab51
	.long	.Lab52
	.long	.Lab51
	.text
	subl	$0,%eax
	jb	.Lab49
	cmpl	$3,%eax
	ja	.Lab49
	jmp	*.Lab54(,%eax,4)
.Lab53:
.LN81:
	.stabn  68,0,237,.LN81-Database_AddClause_SkelCall		# line 237, column 14
	pushl	$0
	pushl	-8(%ebp)
	call	Database_AddClause_Skeleton
	addl	$8, %esp
	leave
	ret
	jmp	.Lab50
.Lab52:
.LN82:
	.stabn  68,0,239,.LN82-Database_AddClause_SkelCall		# line 239, column 17
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Database_AddClause_NewSkel
	addl	$4, %esp
	movl	$16,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-16(%ebp) 
.LN83:
	.stabn  68,0,241,.LN83-Database_AddClause_SkelCall		# line 241, column 24
	movl	-16(%ebp),%eax
	movb	$0,(%eax) 
.LN84:
	.stabn  68,0,242,.LN84-Database_AddClause_SkelCall		# line 242, column 25
	movl	-16(%ebp),%ebx
	movl	AtomTable_s + 5068,%eax
	movl	%eax,4(%ebx) 
.LN85:
	.stabn  68,0,243,.LN85-Database_AddClause_SkelCall		# line 243, column 26
	movl	-16(%ebp),%eax
	movl	$1,8(%eax) 
.LN86:
	.stabn  68,0,244,.LN86-Database_AddClause_SkelCall		# line 244, column 24
	movl	-16(%ebp),%eax
	pushl	%eax
	pushl	-8(%ebp)
	call	Database_AddClause_SkelVar
	addl	$4, %esp
	popl	%ebx
	movl	%eax,12(%ebx) 
.LN87:
	.stabn  68,0,246,.LN87-Database_AddClause_SkelCall		# line 246, column 17
	movl	-12(%ebp),%eax
	leave
	ret
	jmp	.Lab50
.Lab51:
.LN88:
	.stabn  68,0,249,.LN88-Database_AddClause_SkelCall		# line 249, column 14
	pushl	$2
	call	Database_AddClause_AddClError
	addl	$4, %esp
	jmp	.Lab50
.Lab49:
	call	CaseErr_
.Lab50:
.LN89:
	.stabn  68,0,250,.LN89-Database_AddClause_SkelCall		# line 250, column 0
	call	ReturnErr_
.LBE9:
	leave
	ret
	.Lab48 = 16
	.stabs "z:19",128,0,4,-12
	.stabs "y:19",128,0,4,-8
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB9-Database_AddClause_SkelCall
	.stabn 224,0,0,.LBE9-Database_AddClause_SkelCall
	.stabs "Database_AddClause_Skeleton_SkelArgs:F19",36,0,0,Database_AddClause_Skeleton_SkelArgs
	.align 4
Database_AddClause_Skeleton_SkelArgs:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab55, %esp
.LN90:
	.stabn  68,0,183,.LN90-Database_AddClause_Skeleton_SkelArgs		# line 183, column 4
.LBB10:
.LN91:
	.stabn  68,0,184,.LN91-Database_AddClause_Skeleton_SkelArgs		# line 184, column 7
	cmpl	$0,8(%ebp)
	jne	.Lab58
.Lab57:
.LN92:
	.stabn  68,0,185,.LN92-Database_AddClause_Skeleton_SkelArgs		# line 185, column 10
	movl	$0,%eax
	leave
	ret
	jmp	.Lab56
.Lab58:
.LN93:
	.stabn  68,0,187,.LN93-Database_AddClause_Skeleton_SkelArgs		# line 187, column 12
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	12(%ebx),%eax 
	pushl	%eax
	pushl	8(%ebp)
	call	Database_AddClause_Skeleton
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
.LN94:
	.stabn  68,0,188,.LN94-Database_AddClause_Skeleton_SkelArgs		# line 188, column 12
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN95:
	.stabn  68,0,189,.LN95-Database_AddClause_Skeleton_SkelArgs		# line 189, column 12
	movl	-12(%ebp),%eax
	movl	%eax,-16(%ebp) 
	jmp	.Lab59
.Lab60:
.LN96:
	.stabn  68,0,191,.LN96-Database_AddClause_Skeleton_SkelArgs		# line 191, column 24
	movl	-16(%ebp),%eax
	pushl	%eax
	movl	DISPLAY_ + 4,%ebx
	movl	$1,%eax
 	addl	12(%ebx),%eax 
	pushl	%eax
	pushl	-8(%ebp)
	call	Database_AddClause_Skeleton
	addl	$8, %esp
	popl	%ebx
	movl	%eax,(%ebx) 
.LN97:
	.stabn  68,0,192,.LN97-Database_AddClause_Skeleton_SkelArgs		# line 192, column 15
	movl	-8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN98:
	.stabn  68,0,193,.LN98-Database_AddClause_Skeleton_SkelArgs		# line 193, column 15
	movl	-16(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp) 
.Lab59:
.LN99:
	.stabn  68,0,190,.LN99-Database_AddClause_Skeleton_SkelArgs		# line 190, column 18
	cmpl	$0,-8(%ebp)
	jne	.Lab60
.Lab61:
.LN100:
	.stabn  68,0,195,.LN100-Database_AddClause_Skeleton_SkelArgs		# line 195, column 10
	movl	-12(%ebp),%eax
	leave
	ret
.Lab56:
.LN101:
	.stabn  68,0,196,.LN101-Database_AddClause_Skeleton_SkelArgs		# line 196, column 0
	call	ReturnErr_
.LBE10:
	leave
	ret
	.Lab55 = 16
	.stabs "v:19",128,0,4,-16
	.stabs "u:19",128,0,4,-12
	.stabs "t:19",128,0,4,-8
	.stabs "s:p19",160,0,4,8
	.stabn 192,0,0,.LBB10-Database_AddClause_Skeleton_SkelArgs
	.stabn 224,0,0,.LBE10-Database_AddClause_Skeleton_SkelArgs
	.stabs "Database_AddClause_Skeleton:F19",36,0,0,Database_AddClause_Skeleton
	.align 4
Database_AddClause_Skeleton:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab62, %esp
	movl	DISPLAY_+4,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+4
.LN102:
	.stabn  68,0,199,.LN102-Database_AddClause_Skeleton		# line 199, column 1
.LBB11:
.LN103:
	.stabn  68,0,200,.LN103-Database_AddClause_Skeleton		# line 200, column 4
	cmpl	$200,12(%ebp)
	jle	.Lab63
.Lab64:
.LN104:
	.stabn  68,0,200,.LN104-Database_AddClause_Skeleton		# line 200, column 29
	pushl	$12
	call	Database_AddClause_AddClError
	addl	$4, %esp
.Lab63:
.LN105:
	.stabn  68,0,201,.LN105-Database_AddClause_Skeleton		# line 201, column 6
	movl	DISPLAY_,%eax
	pushl	12(%eax)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN106:
	.stabn  68,0,202,.LN106-Database_AddClause_Skeleton		# line 202, column 4
	movl	-8(%ebp),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab71:
	.long	.Lab70
	.long	.Lab69
	.long	.Lab68
	.long	.Lab67
	.text
	subl	$0,%eax
	jb	.Lab65
	cmpl	$3,%eax
	ja	.Lab65
	jmp	*.Lab71(,%eax,4)
.Lab70:
.LN107:
	.stabn  68,0,204,.LN107-Database_AddClause_Skeleton		# line 204, column 12
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Database_AddClause_NewSkel
	addl	$4, %esp
	movl	$16,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-16(%ebp) 
.LN108:
	.stabn  68,0,206,.LN108-Database_AddClause_Skeleton		# line 206, column 19
	movl	-16(%ebp),%eax
	movb	$0,(%eax) 
.LN109:
	.stabn  68,0,207,.LN109-Database_AddClause_Skeleton		# line 207, column 20
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%ebx) 
.LN110:
	.stabn  68,0,208,.LN110-Database_AddClause_Skeleton		# line 208, column 21
	movl	-16(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,8(%ebx) 
.LN111:
	.stabn  68,0,209,.LN111-Database_AddClause_Skeleton		# line 209, column 19
	movl	-16(%ebp),%eax
	pushl	%eax
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Database_AddClause_Skeleton_SkelArgs
	addl	$4, %esp
	popl	%ebx
	movl	%eax,12(%ebx) 
	jmp	.Lab66
.Lab69:
.LN112:
	.stabn  68,0,213,.LN112-Database_AddClause_Skeleton		# line 213, column 12
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Database_AddClause_NewSkel
	addl	$4, %esp
	movl	$16,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-20(%ebp) 
.LN113:
	.stabn  68,0,215,.LN113-Database_AddClause_Skeleton		# line 215, column 19
	movl	-20(%ebp),%eax
	movb	$1,(%eax) 
.LN114:
	.stabn  68,0,216,.LN114-Database_AddClause_Skeleton		# line 216, column 20
	movl	-20(%ebp),%ebx
	movl	-8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,4(%ebx) 
	jmp	.Lab66
.Lab68:
.LN115:
	.stabn  68,0,220,.LN115-Database_AddClause_Skeleton		# line 220, column 11
	pushl	-8(%ebp)
	call	Database_AddClause_SkelVar
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
	jmp	.Lab66
.Lab67:
.LN116:
	.stabn  68,0,222,.LN116-Database_AddClause_Skeleton		# line 222, column 12
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Database_AddClause_NewSkel
	addl	$4, %esp
.LN117:
	.stabn  68,0,223,.LN117-Database_AddClause_Skeleton		# line 223, column 24
	movl	-12(%ebp),%eax
	movb	$3,16(%eax) 
	jmp	.Lab66
.Lab65:
	call	CaseErr_
.Lab66:
.LN118:
	.stabn  68,0,226,.LN118-Database_AddClause_Skeleton		# line 226, column 3
	movl	-12(%ebp),%eax
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
.LN119:
	.stabn  68,0,227,.LN119-Database_AddClause_Skeleton		# line 227, column 0
	call	ReturnErr_
.LBE11:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
	.Lab62 = 20
	.stabs "z:19",128,0,4,-12
	.stabs "y:19",128,0,4,-8
	.stabs "depth:p7",160,0,4,12
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB11-Database_AddClause_Skeleton
	.stabn 224,0,0,.LBE11-Database_AddClause_Skeleton
	.stabs "Database_AddClause_SkelVar:F19",36,0,0,Database_AddClause_SkelVar
	.align 4
Database_AddClause_SkelVar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab72, %esp
.LN120:
	.stabn  68,0,133,.LN120-Database_AddClause_SkelVar		# line 133, column 4
.LBB12:
.LN121:
	.stabn  68,0,134,.LN121-Database_AddClause_SkelVar		# line 134, column 9
	movl	$0,-8(%ebp) 
.LN122:
	.stabn  68,0,135,.LN122-Database_AddClause_SkelVar		# line 135, column 13
	movb	$0,-13(%ebp) 
	jmp	.Lab73
.Lab74:
.LN123:
	.stabn  68,0,137,.LN123-Database_AddClause_SkelVar		# line 137, column 12
	movl	$1,%eax
 	addl	-8(%ebp),%eax 
	cmpl	$50,%eax
	jbe	.Lab76
.Lab77:
   	call	BoundErr_		
.Lab76:
	movl	%eax,-8(%ebp) 
.LN124:
	.stabn  68,0,138,.LN124-Database_AddClause_SkelVar		# line 138, column 16
	movl	DISPLAY_,%ebx
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab79
	jmp	.Lab78
.Lab79:
   	call	BoundErr_		
.Lab78:
	shll	$2, %eax
	leal	(%eax,%eax,2),%eax
	movl	-632(%ebx,%eax,1),%eax
	cmpl	8(%ebp),%eax
	sete	%al
	movb	%al,-13(%ebp) 
.Lab73:
.LN125:
	.stabn  68,0,136,.LN125-Database_AddClause_SkelVar		# line 136, column 29
	movl	-8(%ebp),%ebx
	movl	DISPLAY_,%eax
	cmpl	-12(%eax),%ebx
	je	.Lab75
.Lab80:
	cmpb	$0,-13(%ebp)
	je	.Lab74
.Lab75:
.LN126:
	.stabn  68,0,140,.LN126-Database_AddClause_SkelVar		# line 140, column 7
	cmpb	$0,-13(%ebp)
	je	.Lab83
.Lab82:
	movl	DISPLAY_,%ebx
	movl	-8(%ebp),%eax
	cmpl	$1,%eax
	jb	.Lab85
	jmp	.Lab84
.Lab85:
   	call	BoundErr_		
.Lab84:
	shll	$2, %eax
	leal	(%eax,%eax,2),%eax
	leal	-632(%ebx,%eax,1),%eax
	movl	%eax,-20(%ebp) 
.LN127:
	.stabn  68,0,143,.LN127-Database_AddClause_SkelVar		# line 143, column 13
	movl	-20(%ebp),%eax
	cmpb	$1,4(%eax)
	je	.Lab86
.Lab87:
.LN128:
	.stabn  68,0,146,.LN128-Database_AddClause_SkelVar		# line 146, column 26
	movl	DISPLAY_,%eax
	incl	-16(%eax)
	movl	-20(%ebp),%ebx
	movl	$16,%eax
 	addl	8(%ebx),%eax 
	movl	%eax,-24(%ebp) 
.LN129:
	.stabn  68,0,148,.LN129-Database_AddClause_SkelVar		# line 148, column 26
	movl	-24(%ebp),%eax
	movb	$4,(%eax) 
.LN130:
	.stabn  68,0,149,.LN130-Database_AddClause_SkelVar		# line 149, column 26
	movl	-24(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-16(%eax),%eax
	movl	%eax,4(%ebx) 
.LN131:
	.stabn  68,0,151,.LN131-Database_AddClause_SkelVar		# line 151, column 22
	movl	-20(%ebp),%eax
	movb	$1,4(%eax) 
.LN132:
	.stabn  68,0,152,.LN132-Database_AddClause_SkelVar		# line 152, column 24
	movl	-20(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-16(%eax),%eax
	movl	%eax,8(%ebx) 
.Lab86:
.LN133:
	.stabn  68,0,154,.LN133-Database_AddClause_SkelVar		# line 154, column 13
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Database_AddClause_NewSkel
	addl	$4, %esp
	movl	$16,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-28(%ebp) 
.LN134:
	.stabn  68,0,156,.LN134-Database_AddClause_SkelVar		# line 156, column 20
	movl	-28(%ebp),%eax
	movb	$4,(%eax) 
.LN135:
	.stabn  68,0,157,.LN135-Database_AddClause_SkelVar		# line 157, column 23
	movl	-28(%ebp),%ebx
	movl	-20(%ebp),%eax
	movl	8(%eax),%eax
	movl	%eax,4(%ebx) 
	jmp	.Lab81
.Lab83:
.LN136:
	.stabn  68,0,163,.LN136-Database_AddClause_SkelVar		# line 163, column 10
	movl	DISPLAY_,%eax
	cmpl	$50,-12(%eax)
	jb	.Lab88
.Lab89:
.LN137:
	.stabn  68,0,163,.LN137-Database_AddClause_SkelVar		# line 163, column 38
	pushl	$24
	call	Database_AddClause_AddClError
	addl	$4, %esp
.Lab88:
.LN138:
	.stabn  68,0,164,.LN138-Database_AddClause_SkelVar		# line 164, column 19
	movl	DISPLAY_,%ecx
	movl	DISPLAY_,%ebx
	movl	$1,%eax
 	addl	-12(%ebx),%eax 
	cmpl	$50,%eax
	jbe	.Lab90
.Lab91:
   	call	BoundErr_		
.Lab90:
	movl	%eax,-12(%ecx) 
.LN139:
	.stabn  68,0,165,.LN139-Database_AddClause_SkelVar		# line 165, column 10
	leal	-12(%ebp),%eax
	pushl	%eax
	call	Database_AddClause_NewSkel
	addl	$4, %esp
.LN140:
	.stabn  68,0,166,.LN140-Database_AddClause_SkelVar		# line 166, column 22
	movl	-12(%ebp),%eax
	movb	$3,16(%eax) 
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-12(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab93
	jmp	.Lab92
.Lab93:
   	call	BoundErr_		
.Lab92:
	shll	$2, %eax
	leal	(%eax,%eax,2),%eax
	leal	-632(%ebx,%eax,1),%eax
	movl	%eax,-32(%ebp) 
.LN141:
	.stabn  68,0,168,.LN141-Database_AddClause_SkelVar		# line 168, column 23
	movl	-32(%ebp),%ebx
	movl	8(%ebp),%eax
	movl	%eax,(%ebx) 
.LN142:
	.stabn  68,0,169,.LN142-Database_AddClause_SkelVar		# line 169, column 19
	movl	-32(%ebp),%eax
	movb	$0,4(%eax) 
.LN143:
	.stabn  68,0,170,.LN143-Database_AddClause_SkelVar		# line 170, column 22
	movl	-32(%ebp),%ebx
	movl	-12(%ebp),%eax
	movl	%eax,8(%ebx) 
.Lab81:
.LN144:
	.stabn  68,0,173,.LN144-Database_AddClause_SkelVar		# line 173, column 7
	movl	-12(%ebp),%eax
	leave
	ret
.LN145:
	.stabn  68,0,174,.LN145-Database_AddClause_SkelVar		# line 174, column 0
	call	ReturnErr_
.LBE12:
	leave
	ret
	.Lab72 = 32
	.stabs "found:1",128,0,1,-13
	.stabs "w:19",128,0,4,-12
	.stabs "n:33=4",128,0,4,-8
	.stabs "v:p19",160,0,4,8
	.stabn 192,0,0,.LBB12-Database_AddClause_SkelVar
	.stabn 224,0,0,.LBE12-Database_AddClause_SkelVar
	.stabs "Database_AddClause_NewSkel:F16",36,0,0,Database_AddClause_NewSkel
	.align 4
Database_AddClause_NewSkel:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab94, %esp
.LN146:
	.stabn  68,0,110,.LN146-Database_AddClause_NewSkel		# line 110, column 4
.LBB13:
.LN147:
	.stabn  68,0,111,.LN147-Database_AddClause_NewSkel		# line 111, column 7
	pushl	$32
	pushl	8(%ebp)
	call	Storage_ALLOCATE
	addl	$8, %esp
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN148:
	.stabn  68,0,113,.LN148-Database_AddClause_NewSkel		# line 113, column 18
	movl	-8(%ebp),%eax
	movl	$0,(%eax) 
.LN149:
	.stabn  68,0,114,.LN149-Database_AddClause_NewSkel		# line 114, column 16
	movl	-8(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-8(%eax),%eax
	movl	%eax,4(%ebx) 
.LN150:
	.stabn  68,0,115,.LN150-Database_AddClause_NewSkel		# line 115, column 16
	movl	-8(%ebp),%eax
	movb	$2,8(%eax) 
.LN151:
	.stabn  68,0,116,.LN151-Database_AddClause_NewSkel		# line 116, column 16
	movl	-8(%ebp),%eax
	movl	$0,12(%eax) 
.LN152:
	.stabn  68,0,118,.LN152-Database_AddClause_NewSkel		# line 118, column 15
	movl	DISPLAY_,%ebx
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-8(%ebx) 
.LN153:
	.stabn  68,0,119,.LN153-Database_AddClause_NewSkel		# line 119, column 0
.LBE13:
	leave
	ret
	.Lab94 = 8
	.stabs "x:v19",160,0,4,8
	.stabn 192,0,0,.LBB13-Database_AddClause_NewSkel
	.stabn 224,0,0,.LBE13-Database_AddClause_NewSkel
	.stabs "Database_AddClause_AddClError:F16",36,0,0,Database_AddClause_AddClError
	.align 4
Database_AddClause_AddClError:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab95, %esp
.LN154:
	.stabn  68,0,102,.LN154-Database_AddClause_AddClError		# line 102, column 4
.LBB14:
.LN155:
	.stabn  68,0,103,.LN155-Database_AddClause_AddClError		# line 103, column 7
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	ErrorHandler_Report
	addl	$4, %esp
.LN156:
	.stabn  68,0,104,.LN156-Database_AddClause_AddClError		# line 104, column 14
	movl	DISPLAY_,%eax
	movb	$0,-17(%eax) 
.LN157:
	.stabn  68,0,105,.LN157-Database_AddClause_AddClError		# line 105, column 7
	call	exit_
.LN158:
	.stabn  68,0,106,.LN158-Database_AddClause_AddClError		# line 106, column 0
.LBE14:
	leave
	ret
	.Lab95 = 4
	.stabs "error:t34=evarexpE:28,nofileE:27,filespaceE:26,iodirE:25,nvarsE:24,weirdchE:23,sysprocE:22,readstackE:21,precE:20,needrandE:19,needquoteE:18,needopE:17,localspaceE:16,framespaceE:15,eofE:14,divideE:13,depthE:12,commentE:11,badvbarE:10,badketE:9,badexpE:8,baddotE:7,badcommaE:6,badcharE:5,badcddE:4,atomspaceE:3,assertE:2,argsE:1,arityE:0,;",128,0,0,0
	.stabs "e:p34",160,0,1,8
	.stabn 192,0,0,.LBB14-Database_AddClause_AddClError
	.stabn 224,0,0,.LBE14-Database_AddClause_AddClError
	.stabs "Database_AddClause:F1",36,0,0,Database_AddClause
	.align 4
Database_AddClause:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab96, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN159:
	.stabn  68,0,351,.LN159-Database_AddClause		# line 351, column 2
.LBB15:
.LN160:
	.stabn  68,0,352,.LN160-Database_AddClause		# line 352, column 13
	movl	$0,-8(%ebp) 
.LN161:
	.stabn  68,0,353,.LN161-Database_AddClause		# line 353, column 14
	movl	$0,-12(%ebp) 
.LN162:
	.stabn  68,0,354,.LN162-Database_AddClause		# line 354, column 15
	movl	$0,-16(%ebp) 
.LN163:
	.stabn  68,0,355,.LN163-Database_AddClause		# line 355, column 12
	movb	$1,-17(%ebp) 
.LN164:
	.stabn  68,0,356,.LN164-Database_AddClause		# line 356, column 5
	pushl	8(%ebp)
	call	Database_AddClause_AddCl
	addl	$4, %esp
.LN165:
	.stabn  68,0,358,.LN165-Database_AddClause		# line 358, column 5
	movb	-17(%ebp),%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.LN166:
	.stabn  68,0,359,.LN166-Database_AddClause		# line 359, column 0
	call	ReturnErr_
.LBE15:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab96 = 620
	.stabs "varmap:35=ar4;1;50;36=s12address:7,64,32;firstref:19,64,32;alloc:1,32,8;sourcevar:19,0,32;;",128,0,600,-620
	.stabs "result:1",128,0,1,-17
	.stabs "framesize:7",128,0,4,-16
	.stabs "varcount:37=4",128,0,4,-12
	.stabs "heaptop:19",128,0,4,-8
	.stabs "asserta:p1",160,0,1,16
	.stabs "env:t38=4",128,0,0,0
	.stabs "envp:p38",160,0,4,12
	.stabs "newclause:p19",160,0,4,8
	.stabn 192,0,0,.LBB15-Database_AddClause
	.stabn 224,0,0,.LBE15-Database_AddClause
	.stabs "Database_FindClause:F1",36,0,0,Database_FindClause
	.align 4
Database_FindClause:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab97, %esp
.LN167:
	.stabn  68,0,61,.LN167-Database_FindClause		# line 61, column 1
.LBB16:
.LN168:
	.stabn  68,0,62,.LN168-Database_FindClause		# line 62, column 6
	pushl	16(%ebp)
	pushl	12(%ebp)
	call	Database_Hash
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN169:
	.stabn  68,0,63,.LN169-Database_FindClause		# line 63, column 7
	movb	$0,-9(%ebp) 
	jmp	.Lab98
.Lab99:
	movl	8(%ebp),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN170:
	.stabn  68,0,66,.LN170-Database_FindClause		# line 66, column 10
	movl	-16(%ebp),%eax
	cmpb	$1,12(%eax)
	je	.Lab102
.Lab104:
	movl	-16(%ebp),%eax
	cmpl	$0,20(%eax)
	je	.Lab103
.Lab106:
	cmpl	$0,-8(%ebp)
	je	.Lab103
.Lab105:
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	-8(%ebp),%eax
	je	.Lab103
.Lab102:
.LN171:
	.stabn  68,0,67,.LN171-Database_FindClause		# line 67, column 16
	movl	8(%ebp),%ebx
	movl	-16(%ebp),%eax
	movl	24(%eax),%eax
	movl	%eax,(%ebx) 
	jmp	.Lab101
.Lab103:
.LN172:
	.stabn  68,0,69,.LN172-Database_FindClause		# line 69, column 16
	movb	$1,-9(%ebp) 
.Lab101:
.Lab98:
.LN173:
	.stabn  68,0,64,.LN173-Database_FindClause		# line 64, column 22
	movl	8(%ebp),%eax
	cmpl	$0,(%eax)
	je	.Lab100
.Lab107:
	cmpb	$0,-9(%ebp)
	je	.Lab99
.Lab100:
.LN174:
	.stabn  68,0,73,.LN174-Database_FindClause		# line 73, column 4
	movb	-9(%ebp),%al
	leave
	ret
.LN175:
	.stabn  68,0,74,.LN175-Database_FindClause		# line 74, column 0
	call	ReturnErr_
.LBE16:
	leave
	ret
	.Lab97 = 16
	.stabs "ok:1",128,0,1,-9
	.stabs "k:7",128,0,4,-8
	.stabs "e:p38",160,0,4,16
	.stabs "x:p19",160,0,4,12
	.stabs "cl:v17",160,0,4,8
	.stabn 192,0,0,.LBB16-Database_FindClause
	.stabn 224,0,0,.LBE16-Database_FindClause
	.stabs "Database_Hash:F7",36,0,0,Database_Hash
	.align 4
Database_Hash:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab108, %esp
.LN176:
	.stabn  68,0,27,.LN176-Database_Hash		# line 27, column 1
.LBB17:
.LN177:
	.stabn  68,0,28,.LN177-Database_Hash		# line 28, column 6
	pushl	12(%ebp)
	pushl	8(%ebp)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN178:
	.stabn  68,0,29,.LN178-Database_Hash		# line 29, column 4
	movl	-8(%ebp),%eax
	cmpl	$0,24(%eax)
	jne	.Lab111
.Lab110:
.LN179:
	.stabn  68,0,30,.LN179-Database_Hash		# line 30, column 7
	movl	$859,%eax
	leave
	ret
	jmp	.Lab109
.Lab111:
.LN180:
	.stabn  68,0,32,.LN180-Database_Hash		# line 32, column 8
	pushl	12(%ebp)
	movl	-8(%ebp),%eax
	pushl	28(%eax)
	call	Terms_Deref
	addl	$8, %esp
	movl	%eax,-12(%ebp) 
	movl	$16,%eax
 	addl	-12(%ebp),%eax 
	movl	%eax,-16(%ebp) 
.LN181:
	.stabn  68,0,34,.LN181-Database_Hash		# line 34, column 9
	movl	-16(%ebp),%eax
	movzbl	(%eax),%eax
	.data
	.align 4
.Lab117:
	.long	.Lab116
	.long	.Lab115
	.long	.Lab114
	.long	.Lab114
	.text
	subl	$0,%eax
	jb	.Lab112
	cmpl	$3,%eax
	ja	.Lab112
	jmp	*.Lab117(,%eax,4)
.Lab116:
.LN182:
	.stabn  68,0,35,.LN182-Database_Hash		# line 35, column 19
	movl	-16(%ebp),%eax
	cmpl	$0,4(%eax)
	jne	.Lab120
.Lab119:
.LN183:
	.stabn  68,0,37,.LN183-Database_Hash		# line 37, column 26
	.data
.Lab121:
 	.ascii	"Hash-procedure failed........\000"
	.text
	pushl	$29
	leal	.Lab121,%eax
	pushl	%eax
	call	InOut_WriteString
	addl	$8, %esp
.LN184:
	.stabn  68,0,38,.LN184-Database_Hash		# line 38, column 26
	call	InOut_WriteLn
.LN185:
	.stabn  68,0,39,.LN185-Database_Hash		# line 39, column 26
	call	exit_
.LN186:
	.stabn  68,0,40,.LN186-Database_Hash		# line 40, column 26
	movl	$99,%eax
	leave
	ret
	jmp	.Lab118
.Lab120:
.LN187:
	.stabn  68,0,42,.LN187-Database_Hash		# line 42, column 24
	movl	-16(%ebp),%eax
	movl	4(%eax),%eax
	movl	8(%eax),%eax
 	addl	$859,%eax 
	leave
	ret
.Lab118:
	jmp	.Lab113
.Lab115:
.LN188:
	.stabn  68,0,44,.LN188-Database_Hash		# line 44, column 18
	movl	-16(%ebp),%eax
	movl	4(%eax),%ebx
	movl	-16(%ebp),%eax
	cmpl	$0,4(%eax)
	setle	%al
	movzbl	%al,%eax
	cmpl	$2147483647,%eax
	jbe	.Lab122
.Lab123:
   	call	BoundErr_		
.Lab122:
 	subl	%eax,%ebx 
 	movl	%ebx, %eax
	leave
	ret
	jmp	.Lab113
.Lab114:
.LN189:
	.stabn  68,0,45,.LN189-Database_Hash		# line 45, column 25
	movl	$0,%eax
	leave
	ret
	jmp	.Lab113
.Lab112:
	call	CaseErr_
.Lab113:
.Lab109:
.LN190:
	.stabn  68,0,46,.LN190-Database_Hash		# line 46, column 0
	call	ReturnErr_
.LBE17:
	leave
	ret
	.Lab108 = 16
	.stabs "z:19",128,0,4,-12
	.stabs "y:19",128,0,4,-8
	.stabs "Infinity:c=i859",128,0,0,0
	.stabs "e:p38",160,0,4,12
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB17-Database_Hash
	.stabn 224,0,0,.LBE17-Database_Hash
	.stabs "Database:F16",36,0,0,Database
	.align 4
Database:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab124, %esp
.LN191:
	.stabn  68,0,390,.LN191-Database		# line 390, column 1
.LBB18:
.LN192:
	.stabn  68,0,391,.LN192-Database		# line 391, column 0
.LBE18:
	leave
	ret
	.Lab124 = 4
	.stabs "MaxVars:c=i50",128,0,0,0
	.stabn 192,0,0,.LBB18-Database
	.stabn 224,0,0,.LBE18-Database
