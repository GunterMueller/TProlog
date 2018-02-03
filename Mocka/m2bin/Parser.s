	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Parser.mod",100,0,0,.LBB0
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
	.globl	ErrorHandler_InternalError
	.globl	ErrorHandler_ExecError
	.globl	ErrorHandler_Report
	.globl	ErrorHandler_Abort
	.globl	ErrorHandler_Crash
	.globl	AtomTable_LookUp
	.globl	AtomTable_AtomChar
	.globl	AtomTable_StartAtom
	.globl	Parser
	.globl	Parser_InitRead
	.globl	Parser_InitRead_P
	.globl	Parser_ReadIn
	.globl	Parser_ReadIn_EnterVar
	.globl	Parser_ReadIn_ScanQuote
	.globl	Parser_ReadIn_ScanInt
	.globl	Parser_ReadIn_StowAtom
	.globl	Parser_ReadIn_StowAtom_SquashRand
	.globl	Parser_ReadIn_GetList
	.globl	Parser_ReadIn_GetFunc
	.globl	Parser_ReadIn_ExitContext
	.globl	Parser_ReadIn_EnterContext
	.globl	Parser_ReadIn_CheckDelim
	.globl	Parser_ReadIn_Reduce
	.globl	Parser_ReadIn_Pop
	.globl	Parser_ReadIn_Shift
	.globl	Parser_ReadIn_ShiftTerm
	.globl	Parser_ReadIn_Push
	.globl	Parser_ReadIn_SyntaxError
	.globl	Parser_Rprec
	.globl	Parser_Lprec
	.stabs "Parser_InitRead_P:F16",36,0,0,Parser_InitRead_P
	.align 4
Parser_InitRead_P:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,575,.LN1-Parser_InitRead_P		# line 575, column 4
.LBB1:
.LN2:
	.stabn  68,0,576,.LN2-Parser_InitRead_P		# line 576, column 9
	movl	$0,-8(%ebp) 
	jmp	.Lab2
.Lab3:
.LN3:
	.stabn  68,0,578,.LN3-Parser_InitRead_P		# line 578, column 31
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab5:
	.long	0,27
	.text
	boundl	%eax,.Lab5
	movzbl	8(%ebp,%eax,1),%ebx
	cmpl	$255,%ebx
	jbe	.Lab6
.Lab7:
   	call	BoundErr_		
.Lab6:
	movb	36(%ebp),%al
	movb	%al,PFiles_s + 16(%ebx) 
.LN4:
	.stabn  68,0,579,.LN4-Parser_InitRead_P		# line 579, column 12
	incl	-8(%ebp)
.Lab2:
.LN5:
	.stabn  68,0,577,.LN5-Parser_InitRead_P		# line 577, column 18
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab8:
	.long	0,27
	.text
	boundl	%eax,.Lab8
	cmpb	$32,8(%ebp,%eax,1)
	jne	.Lab3
.Lab4:
.LN6:
	.stabn  68,0,578,.LN6-Parser_InitRead_P		# line 578, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
	.stabs "i:7",128,0,4,-8
	.stabs "class:t17=eweirdC:17,spaceC:16,vbarC:15,semiC:14,cutC:13,commaC:12,rcurlyC:11,lcurlyC:10,ketC:9,braC:8,rparC:7,lparC:6,stropC:5,quoteC:4,specialC:3,digitC:2,largeC:1,smallC:0,;",128,0,0,0
	.stabs "t:p17",160,0,1,36
	.stabs "list:t18=ar4;0;27;2",128,0,0,0
	.stabs "s:p18",160,0,28,8
	.stabn 192,0,0,.LBB1-Parser_InitRead_P
	.stabn 224,0,0,.LBE1-Parser_InitRead_P
	.stabs "Parser_InitRead:F16",36,0,0,Parser_InitRead
	.align 4
Parser_InitRead:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab9, %esp
.LN7:
	.stabn  68,0,583,.LN7-Parser_InitRead		# line 583, column 1
.LBB2:
.LN8:
	.stabn  68,0,584,.LN8-Parser_InitRead		# line 584, column 4
	movb	$0,-5(%ebp) 
.Lab10:
.LN9:
	.stabn  68,0,585,.LN9-Parser_InitRead		# line 585, column 25
	movzbl	-5(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab12
.Lab13:
   	call	BoundErr_		
.Lab12:
	movb	$17,PFiles_s + 16(%eax) 
.LN10:
	.stabn  68,0,584,.LN10-Parser_InitRead		# line 584, column 4
	cmpb	$127,-5(%ebp)
	jae	.Lab11
	incb	-5(%ebp) 
	jmp	.Lab10
.Lab11:
.LN11:
	.stabn  68,0,588,.LN11-Parser_InitRead		# line 588, column 4
	.data
.Lab14:
 	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZ_ \000"
	.text
	pushl	$1
	leal	.Lab14,%esi
	subl	$28,%esp
	movl	%esp,%edi
	movl	$7,%ecx
	cld
	repz
	movsl
	call	Parser_InitRead_P
	addl	$32, %esp
.LN12:
	.stabn  68,0,589,.LN12-Parser_InitRead		# line 589, column 4
	.data
.Lab15:
 	.ascii	"abcdefghijklmnopqrstuvwxyz  \000"
	.text
	pushl	$0
	leal	.Lab15,%esi
	subl	$28,%esp
	movl	%esp,%edi
	movl	$7,%ecx
	cld
	repz
	movsl
	call	Parser_InitRead_P
	addl	$32, %esp
.LN13:
	.stabn  68,0,590,.LN13-Parser_InitRead		# line 590, column 4
	.data
.Lab16:
 	.ascii	"0123456789                  \000"
	.text
	pushl	$2
	leal	.Lab16,%esi
	subl	$28,%esp
	movl	%esp,%edi
	movl	$7,%ecx
	cld
	repz
	movsl
	call	Parser_InitRead_P
	addl	$32, %esp
.LN14:
	.stabn  68,0,591,.LN14-Parser_InitRead		# line 591, column 4
	.data
.Lab17:
 	.ascii	"^$%&*+-./:<=>?@\134\134?\176`        \000"
	.text
	pushl	$3
	leal	.Lab17,%esi
	subl	$28,%esp
	movl	%esp,%edi
	movl	$7,%ecx
	cld
	repz
	movsl
	call	Parser_InitRead_P
	addl	$32, %esp
.LN15:
	.stabn  68,0,592,.LN15-Parser_InitRead		# line 592, column 24
	movb	$5,PFiles_s + 55 
.LN16:
	.stabn  68,0,593,.LN16-Parser_InitRead		# line 593, column 24
	movb	$4,PFiles_s + 50 
.LN17:
	.stabn  68,0,594,.LN17-Parser_InitRead		# line 594, column 24
	movb	$6,PFiles_s + 56 
.LN18:
	.stabn  68,0,595,.LN18-Parser_InitRead		# line 595, column 24
	movb	$7,PFiles_s + 57 
.LN19:
	.stabn  68,0,596,.LN19-Parser_InitRead		# line 596, column 24
	movb	$8,PFiles_s + 107 
.LN20:
	.stabn  68,0,597,.LN20-Parser_InitRead		# line 597, column 24
	movb	$9,PFiles_s + 109 
.LN21:
	.stabn  68,0,598,.LN21-Parser_InitRead		# line 598, column 24
	movb	$10,PFiles_s + 139 
.LN22:
	.stabn  68,0,599,.LN22-Parser_InitRead		# line 599, column 24
	movb	$11,PFiles_s + 141 
.LN23:
	.stabn  68,0,600,.LN23-Parser_InitRead		# line 600, column 24
	movb	$12,PFiles_s + 60 
.LN24:
	.stabn  68,0,601,.LN24-Parser_InitRead		# line 601, column 24
	movb	$13,PFiles_s + 49 
.LN25:
	.stabn  68,0,602,.LN25-Parser_InitRead		# line 602, column 24
	movb	$14,PFiles_s + 75 
.LN26:
	.stabn  68,0,603,.LN26-Parser_InitRead		# line 603, column 24
	movb	$15,PFiles_s + 140 
.LN27:
	.stabn  68,0,604,.LN27-Parser_InitRead		# line 604, column 24
	movb	$15,PFiles_s + 110 
.LN28:
	.stabn  68,0,605,.LN28-Parser_InitRead		# line 605, column 24
	movb	$16,PFiles_s + 48 
.LN29:
	.stabn  68,0,606,.LN29-Parser_InitRead		# line 606, column 0
.LBE2:
	leave
	ret
	.Lab9 = 8
	.stabs "c:2",128,0,1,-5
	.stabs "n:c=i28",128,0,0,0
	.stabn 192,0,0,.LBB2-Parser_InitRead
	.stabn 224,0,0,.LBE2-Parser_InitRead
	.stabs "evalarity:t24=4",128,0,0,0
	.stabs "evalpred:t25=eccompileR:41,reconsultR:40,consultR:39,listingR:38,showvarR:37,showtermR:36,inferencesR:35,timeR:34,ucodeR:33,closeR:32,tellingR:31,tellR:30,seeingR:29,seeR:28,argR:27,functorR:26,nonspR:25,zapR:24,advclR:23,getclR:22,clenvR:21,addclR:20,ltR:19,isR:18,setflgR:17,flagR:16,varR:15,integerR:14,atomR:13,haltR:12,abortR:11,opR:10,nameR:9,eofR:8,eolnR:7,nlR:6,putR:5,get0R:4,writeR:3,readR:2,cutR:1,callR:0,;",128,0,0,0
	.stabs "clause:t27=s36heapchain:19,256,32;backchain:26,224,32;chain:26,192,32;keyval:7,160,32;refcount:7,128,32;denied:1,96,8;nvars:7,64,32;body:19,32,32;head:19,0,32;;",128,0,0,0
	.stabs "clptr:t26=*27",128,0,0,0
	.stabs "predtype:t28=eevalP:1,normP:0,;",128,0,0,0
	.stabs "prec:t29=4",128,0,0,0
	.stabs "optype:t30=enonO:7,yfxO:6,xfyO:5,xfxO:4,yfO:3,xfO:2,fyO:1,fxO:0,;",128,0,0,0
	.stabs "strindex:t32=4",128,0,0,0
	.stabs "astring:t31=s8length:4,32,32;index:32,0,32;;",128,0,0,0
	.stabs "atomentry:t23=s32arity:24,224,32;routine:25,208,8;proc:26,224,32;pclass:28,200,8;sys:1,192,8;oprec:29,160,32;oclass:30,128,8;chain:22,96,32;atomno:7,64,32;ident:31,0,64;;",128,0,0,0
	.stabs "atom:t22=*23",128,0,0,0
	.stabs "nodetag:t33=eskelT:4,anonT:3,varT:2,intT:1,funcT:0,;",128,0,0,0
	.stabs "nodeinfo:t21=s16offset:7,32,32;dummych:2,8,8;val:19,32,32;ival:7,32,32;son:19,96,32;arity:7,64,32;name:22,32,32;tag:33,0,8;;",128,0,0,0
	.stabs "fieldtype:t34=eheapF:2,localF:1,globalF:0,;",128,0,0,0
	.stabs "node:t20=s32info:21,128,128;scope:7,96,32;field:34,64,8;chain:19,32,32;brother:19,0,32;;",128,0,0,0
	.stabs "term:t19=*20",128,0,0,0
	.stabs "Parser_ReadIn_EnterVar:F19",36,0,0,Parser_ReadIn_EnterVar
	.align 4
Parser_ReadIn_EnterVar:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab18, %esp
.LN30:
	.stabn  68,0,356,.LN30-Parser_ReadIn_EnterVar		# line 356, column 4
.LBB3:
.LN31:
	.stabn  68,0,357,.LN31-Parser_ReadIn_EnterVar		# line 357, column 15
	call	AtomTable_LookUp
	movl	%eax,-8(%ebp) 
.LN32:
	.stabn  68,0,358,.LN32-Parser_ReadIn_EnterVar		# line 358, column 9
	movl	DISPLAY_,%eax
	movl	12(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp) 
.LN33:
	.stabn  68,0,358,.LN33-Parser_ReadIn_EnterVar		# line 358, column 26
	movb	$0,-17(%ebp) 
	jmp	.Lab19
.Lab20:
.LN34:
	.stabn  68,0,360,.LN34-Parser_ReadIn_EnterVar		# line 360, column 10
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	20(%eax),%eax
	cmpl	-8(%ebp),%eax
	jne	.Lab24
.Lab23:
.LN35:
	.stabn  68,0,361,.LN35-Parser_ReadIn_EnterVar		# line 361, column 22
	movb	$1,-17(%ebp) 
	jmp	.Lab22
.Lab24:
.LN36:
	.stabn  68,0,363,.LN36-Parser_ReadIn_EnterVar		# line 363, column 18
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	movl	(%eax),%eax
	movl	%eax,-16(%ebp) 
.Lab22:
.Lab19:
.LN37:
	.stabn  68,0,359,.LN37-Parser_ReadIn_EnterVar		# line 359, column 36
	movl	-16(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	AtomTable_s + 5012,%eax
	je	.Lab21
.Lab25:
	cmpb	$0,-17(%ebp)
	je	.Lab20
.Lab21:
.LN38:
	.stabn  68,0,366,.LN38-Parser_ReadIn_EnterVar		# line 366, column 7
	cmpb	$0,-17(%ebp)
	je	.Lab28
.Lab27:
.LN39:
	.stabn  68,0,367,.LN39-Parser_ReadIn_EnterVar		# line 367, column 10
	movl	-16(%ebp),%eax
	movl	28(%eax),%eax
	pushl	28(%eax)
	call	Terms_MakeVar
	addl	$4, %esp
	leave
	ret
	jmp	.Lab26
.Lab28:
.LN40:
	.stabn  68,0,369,.LN40-Parser_ReadIn_EnterVar		# line 369, column 12
	pushl	$0
	call	Terms_MakeVar
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
	movl	$16,%eax
 	addl	-16(%ebp),%eax 
	movl	%eax,-24(%ebp) 
.LN41:
	.stabn  68,0,371,.LN41-Parser_ReadIn_EnterVar		# line 371, column 18
	movl	-24(%ebp),%ebx
	movl	AtomTable_s + 5016,%eax
	movl	%eax,4(%ebx) 
.LN42:
	.stabn  68,0,372,.LN42-Parser_ReadIn_EnterVar		# line 372, column 19
	movl	-24(%ebp),%eax
	movl	$2,8(%eax) 
.LN43:
	.stabn  68,0,373,.LN43-Parser_ReadIn_EnterVar		# line 373, column 17
	movl	-24(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	AtomTable_s + 5012
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	pushl	-12(%ebp)
	call	Terms_MakeVar
	addl	$4, %esp
	pushl	%eax
	pushl	$1
	pushl	-8(%ebp)
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	popl	%ebx
	movl	%eax,12(%ebx) 
.LN44:
	.stabn  68,0,376,.LN44-Parser_ReadIn_EnterVar		# line 376, column 10
	movl	-12(%ebp),%eax
	leave
	ret
.Lab26:
.LN45:
	.stabn  68,0,377,.LN45-Parser_ReadIn_EnterVar		# line 377, column 0
	call	ReturnErr_
.LBE3:
	leave
	ret
	.Lab18 = 24
	.stabs "found:1",128,0,1,-17
	.stabs "p:19",128,0,4,-16
	.stabs "v:19",128,0,4,-12
	.stabs "newname:22",128,0,4,-8
	.stabn 192,0,0,.LBB3-Parser_ReadIn_EnterVar
	.stabn 224,0,0,.LBE3-Parser_ReadIn_EnterVar
	.stabs "Parser_ReadIn_ScanQuote:F16",36,0,0,Parser_ReadIn_ScanQuote
	.align 4
Parser_ReadIn_ScanQuote:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab29, %esp
.LN46:
	.stabn  68,0,332,.LN46-Parser_ReadIn_ScanQuote		# line 332, column 4
.LBB4:
.LN47:
	.stabn  68,0,333,.LN47-Parser_ReadIn_ScanQuote		# line 333, column 7
	call	AtomTable_StartAtom
.LN48:
	.stabn  68,0,334,.LN48-Parser_ReadIn_ScanQuote		# line 334, column 12
	movb	$0,-5(%ebp) 
.Lab30:
.LN49:
	.stabn  68,0,336,.LN49-Parser_ReadIn_ScanQuote		# line 336, column 10
	call	PFiles_LineEnded
	cmpb	$0,%al
	je	.Lab32
.Lab33:
.LN50:
	.stabn  68,0,337,.LN50-Parser_ReadIn_ScanQuote		# line 337, column 20
	movl	PFiles_s,%eax
	movl	%eax,PFiles_s + 4 
.LN51:
	.stabn  68,0,338,.LN51-Parser_ReadIn_ScanQuote		# line 338, column 13
	pushl	$18
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN52:
	.stabn  68,0,339,.LN52-Parser_ReadIn_ScanQuote		# line 339, column 13
	call	exit_
.Lab32:
.LN53:
	.stabn  68,0,341,.LN53-Parser_ReadIn_ScanQuote		# line 341, column 10
	movl	$-5,%eax
 	addl	DISPLAY_,%eax 
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN54:
	.stabn  68,0,342,.LN54-Parser_ReadIn_ScanQuote		# line 342, column 10
	movl	DISPLAY_,%eax
	movb	-5(%eax),%al
	cmpb	8(%ebp),%al
	jne	.Lab34
.Lab35:
.LN55:
	.stabn  68,0,343,.LN55-Parser_ReadIn_ScanQuote		# line 343, column 13
	movl	$-5,%eax
 	addl	DISPLAY_,%eax 
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN56:
	.stabn  68,0,344,.LN56-Parser_ReadIn_ScanQuote		# line 344, column 18
	movl	DISPLAY_,%eax
	movb	-5(%eax),%al
	cmpb	8(%ebp),%al
	setne	%al
	movb	%al,-5(%ebp) 
.Lab34:
.LN57:
	.stabn  68,0,346,.LN57-Parser_ReadIn_ScanQuote		# line 346, column 10
	cmpb	$1,-5(%ebp)
	je	.Lab36
.Lab37:
.LN58:
	.stabn  68,0,346,.LN58-Parser_ReadIn_ScanQuote		# line 346, column 27
	movl	DISPLAY_,%eax
	movzbl	-5(%eax),%eax
	pushl	%eax
	call	AtomTable_AtomChar
	addl	$4, %esp
.Lab36:
.LN59:
	.stabn  68,0,347,.LN59-Parser_ReadIn_ScanQuote		# line 347, column 13
	cmpb	$0,-5(%ebp)
	je	.Lab30
.Lab31:
.LN60:
	.stabn  68,0,348,.LN60-Parser_ReadIn_ScanQuote		# line 348, column 0
.LBE4:
	leave
	ret
	.Lab29 = 8
	.stabs "done:1",128,0,1,-5
	.stabs "q:p2",160,0,1,8
	.stabn 192,0,0,.LBB4-Parser_ReadIn_ScanQuote
	.stabn 224,0,0,.LBE4-Parser_ReadIn_ScanQuote
	.stabs "Parser_ReadIn_ScanInt:F7",36,0,0,Parser_ReadIn_ScanInt
	.align 4
Parser_ReadIn_ScanInt:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab38, %esp
.LN61:
	.stabn  68,0,319,.LN61-Parser_ReadIn_ScanInt		# line 319, column 4
.LBB5:
.LN62:
	.stabn  68,0,320,.LN62-Parser_ReadIn_ScanInt		# line 320, column 9
	movl	$0,-8(%ebp) 
.Lab39:
.LN63:
	.stabn  68,0,322,.LN63-Parser_ReadIn_ScanInt		# line 322, column 12
	movl	-8(%ebp),%eax
	shll	$1, %eax
	leal	(%eax,%eax,4),%ebx
	movl	DISPLAY_,%eax
	movzbl	-5(%eax),%eax
 	subl	$48,%eax 
	cmpl	$2147483647,%eax
	jbe	.Lab41
.Lab42:
   	call	BoundErr_		
.Lab41:
 	addl	%ebx,%eax 
	movl	%eax,-8(%ebp) 
.LN64:
	.stabn  68,0,323,.LN64-Parser_ReadIn_ScanInt		# line 323, column 10
	movl	$-5,%eax
 	addl	DISPLAY_,%eax 
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN65:
	.stabn  68,0,324,.LN65-Parser_ReadIn_ScanInt		# line 324, column 32
	movl	DISPLAY_,%eax
	movzbl	-5(%eax),%eax
	cmpl	$255,%eax
	jbe	.Lab43
.Lab44:
   	call	BoundErr_		
.Lab43:
	cmpb	$2,PFiles_s + 16(%eax)
	je	.Lab39
.Lab40:
.LN66:
	.stabn  68,0,325,.LN66-Parser_ReadIn_ScanInt		# line 325, column 7
	movl	-8(%ebp),%eax
	leave
	ret
.LN67:
	.stabn  68,0,326,.LN67-Parser_ReadIn_ScanInt		# line 326, column 0
	call	ReturnErr_
.LBE5:
	leave
	ret
	.Lab38 = 8
	.stabs "n:7",128,0,4,-8
	.stabn 192,0,0,.LBB5-Parser_ReadIn_ScanInt
	.stabn 224,0,0,.LBE5-Parser_ReadIn_ScanInt
	.stabs "Parser_ReadIn_StowAtom_SquashRand:F1",36,0,0,Parser_ReadIn_StowAtom_SquashRand
	.align 4
Parser_ReadIn_StowAtom_SquashRand:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab45, %esp
.LN68:
	.stabn  68,0,266,.LN68-Parser_ReadIn_StowAtom_SquashRand		# line 266, column 7
.LBB6:
.LN69:
	.stabn  68,0,267,.LN69-Parser_ReadIn_StowAtom_SquashRand		# line 267, column 12
	movl	DISPLAY_ + 4,%eax
	movl	8(%eax),%eax
	movl	20(%eax),%eax
	movl	%eax,-8(%ebp) 
.LN70:
	.stabn  68,0,267,.LN70-Parser_ReadIn_StowAtom_SquashRand		# line 267, column 28
	movl	DISPLAY_ + 4,%eax
	pushl	8(%eax)
	call	Parser_Lprec
	addl	$4, %esp
	movl	%eax,-12(%ebp) 
.LN71:
	.stabn  68,0,268,.LN71-Parser_ReadIn_StowAtom_SquashRand		# line 268, column 10
	movl	-12(%ebp),%ebx
	movl	DISPLAY_,%eax
	cmpl	-16(%eax),%ebx
	jb	.Lab47
.Lab48:
	cmpl	$999,-8(%ebp)
	jbe	.Lab46
.Lab49:
	movl	DISPLAY_,%eax
	movzbl	-7(%eax),%ebx
	movl	$35,%eax
	btl	%ebx,%eax
	jc	.Lab46
.Lab47:
.LN72:
	.stabn  68,0,270,.LN72-Parser_ReadIn_StowAtom_SquashRand		# line 270, column 15
	pushl	$20
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN73:
	.stabn  68,0,270,.LN73-Parser_ReadIn_StowAtom_SquashRand		# line 270, column 35
	movb	$0,%al
	leave
	ret
.Lab46:
.LN74:
	.stabn  68,0,272,.LN74-Parser_ReadIn_StowAtom_SquashRand		# line 272, column 10
	pushl	-12(%ebp)
	pushl	-8(%ebp)
	call	Parser_ReadIn_Reduce
	addl	$8, %esp
	leave
	ret
.LN75:
	.stabn  68,0,273,.LN75-Parser_ReadIn_StowAtom_SquashRand		# line 273, column 0
	call	ReturnErr_
.LBE6:
	leave
	ret
	.Lab45 = 12
	.stabs "lp:29",128,0,4,-12
	.stabs "p:29",128,0,4,-8
	.stabn 192,0,0,.LBB6-Parser_ReadIn_StowAtom_SquashRand
	.stabn 224,0,0,.LBE6-Parser_ReadIn_StowAtom_SquashRand
	.stabs "Parser_ReadIn_StowAtom:F1",36,0,0,Parser_ReadIn_StowAtom
	.align 4
Parser_ReadIn_StowAtom:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab50, %esp
	movl	DISPLAY_+4,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+4
.LN76:
	.stabn  68,0,275,.LN76-Parser_ReadIn_StowAtom		# line 275, column 4
.LBB7:
.LN77:
	.stabn  68,0,276,.LN77-Parser_ReadIn_StowAtom		# line 276, column 7
	movl	DISPLAY_,%eax
	movzbl	-8(%eax),%eax
	.data
	.align 4
.Lab55:
	.long	.Lab53
	.long	.Lab54
	.text
	subl	$0,%eax
	jb	.Lab51
	cmpl	$1,%eax
	ja	.Lab51
	jmp	*.Lab55(,%eax,4)
.Lab54:
.LN78:
	.stabn  68,0,278,.LN78-Parser_ReadIn_StowAtom		# line 278, column 13
	movl	DISPLAY_,%eax
	cmpb	$40,-5(%eax)
	jne	.Lab58
.Lab57:
.LN79:
	.stabn  68,0,281,.LN79-Parser_ReadIn_StowAtom		# line 281, column 16
	pushl	8(%ebp)
	pushl	$2
	call	Parser_ReadIn_Shift
	addl	$8, %esp
.LN80:
	.stabn  68,0,282,.LN80-Parser_ReadIn_StowAtom		# line 282, column 16
	pushl	$999
	pushl	$2
	call	Parser_ReadIn_EnterContext
	addl	$8, %esp
.LN81:
	.stabn  68,0,283,.LN81-Parser_ReadIn_StowAtom		# line 283, column 16
	movl	$-5,%eax
 	addl	DISPLAY_,%eax 
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab56
.Lab58:
.LN82:
	.stabn  68,0,284,.LN82-Parser_ReadIn_StowAtom		# line 284, column 13
	movl	8(%ebp),%eax
	movzbl	16(%eax),%ebx
	movl	$3,%eax
	btl	%ebx,%eax
	jnc	.Lab61
.Lab60:
.LN83:
	.stabn  68,0,286,.LN83-Parser_ReadIn_StowAtom		# line 286, column 16
	movl	8(%ebp),%eax
	movl	20(%eax),%ebx
	movl	DISPLAY_,%eax
	cmpl	-12(%eax),%ebx
	jbe	.Lab62
.Lab63:
.LN84:
	.stabn  68,0,286,.LN84-Parser_ReadIn_StowAtom		# line 286, column 42
	pushl	$20
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN85:
	.stabn  68,0,286,.LN85-Parser_ReadIn_StowAtom		# line 286, column 62
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
.Lab62:
.LN86:
	.stabn  68,0,287,.LN86-Parser_ReadIn_StowAtom		# line 287, column 16
	pushl	8(%ebp)
	pushl	$1
	call	Parser_ReadIn_Shift
	addl	$8, %esp
.LN87:
	.stabn  68,0,288,.LN87-Parser_ReadIn_StowAtom		# line 288, column 25
	movl	DISPLAY_,%eax
	movb	$1,-8(%eax) 
.LN88:
	.stabn  68,0,288,.LN88-Parser_ReadIn_StowAtom		# line 288, column 42
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	Parser_Rprec
	addl	$4, %esp
	popl	%ebx
	movl	%eax,-12(%ebx) 
	jmp	.Lab59
.Lab61:
.LN89:
	.stabn  68,0,291,.LN89-Parser_ReadIn_StowAtom		# line 291, column 16
	pushl	$0
	pushl	$0
	pushl	8(%ebp)
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.LN90:
	.stabn  68,0,292,.LN90-Parser_ReadIn_StowAtom		# line 292, column 25
	movl	DISPLAY_,%eax
	movb	$0,-8(%eax) 
.LN91:
	.stabn  68,0,292,.LN91-Parser_ReadIn_StowAtom		# line 292, column 40
	movl	DISPLAY_,%eax
	movl	$0,-16(%eax) 
.Lab59:
.Lab56:
	jmp	.Lab52
.Lab53:
.LN92:
	.stabn  68,0,296,.LN92-Parser_ReadIn_StowAtom		# line 296, column 13
	movl	8(%ebp),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab69:
	.long	.Lab66
	.long	.Lab66
	.long	.Lab68
	.long	.Lab68
	.long	.Lab67
	.long	.Lab67
	.long	.Lab67
	.long	.Lab66
	.text
	subl	$0,%eax
	jb	.Lab64
	cmpl	$7,%eax
	ja	.Lab64
	jmp	*.Lab69(,%eax,4)
.Lab68:
.LN93:
	.stabn  68,0,299,.LN93-Parser_ReadIn_StowAtom		# line 299, column 22
	call	Parser_ReadIn_StowAtom_SquashRand
	cmpb	$1,%al
	je	.Lab70
.Lab71:
.LN94:
	.stabn  68,0,299,.LN94-Parser_ReadIn_StowAtom		# line 299, column 47
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
.Lab70:
.LN95:
	.stabn  68,0,300,.LN95-Parser_ReadIn_StowAtom		# line 300, column 22
	call	Parser_ReadIn_Pop
	pushl	%eax
	pushl	$1
	pushl	8(%ebp)
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.LN96:
	.stabn  68,0,301,.LN96-Parser_ReadIn_StowAtom		# line 301, column 31
	movl	DISPLAY_,%eax
	movb	$0,-8(%eax) 
.LN97:
	.stabn  68,0,301,.LN97-Parser_ReadIn_StowAtom		# line 301, column 46
	movl	DISPLAY_,%ebx
	movl	8(%ebp),%eax
	movl	20(%eax),%eax
	movl	%eax,-16(%ebx) 
	jmp	.Lab65
.Lab67:
.LN98:
	.stabn  68,0,305,.LN98-Parser_ReadIn_StowAtom		# line 305, column 22
	call	Parser_ReadIn_StowAtom_SquashRand
	cmpb	$1,%al
	je	.Lab72
.Lab73:
.LN99:
	.stabn  68,0,305,.LN99-Parser_ReadIn_StowAtom		# line 305, column 47
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
.Lab72:
.LN100:
	.stabn  68,0,306,.LN100-Parser_ReadIn_StowAtom		# line 306, column 22
	pushl	8(%ebp)
	pushl	$1
	call	Parser_ReadIn_Shift
	addl	$8, %esp
.LN101:
	.stabn  68,0,307,.LN101-Parser_ReadIn_StowAtom		# line 307, column 31
	movl	DISPLAY_,%eax
	movb	$1,-8(%eax) 
.LN102:
	.stabn  68,0,307,.LN102-Parser_ReadIn_StowAtom		# line 307, column 48
	movl	DISPLAY_,%eax
	pushl	%eax
	pushl	8(%ebp)
	call	Parser_Rprec
	addl	$4, %esp
	popl	%ebx
	movl	%eax,-12(%ebx) 
	jmp	.Lab65
.Lab66:
.LN103:
	.stabn  68,0,310,.LN103-Parser_ReadIn_StowAtom		# line 310, column 19
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN104:
	.stabn  68,0,310,.LN104-Parser_ReadIn_StowAtom		# line 310, column 41
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
	jmp	.Lab65
.Lab64:
	call	CaseErr_
.Lab65:
	jmp	.Lab52
.Lab51:
	call	CaseErr_
.Lab52:
.LN105:
	.stabn  68,0,313,.LN105-Parser_ReadIn_StowAtom		# line 313, column 7
	movb	$1,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
.LN106:
	.stabn  68,0,314,.LN106-Parser_ReadIn_StowAtom		# line 314, column 0
	call	ReturnErr_
.LBE7:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+4
	leave
	ret
	.Lab50 = 4
	.stabs "a:p22",160,0,4,8
	.stabn 192,0,0,.LBB7-Parser_ReadIn_StowAtom
	.stabn 224,0,0,.LBE7-Parser_ReadIn_StowAtom
	.stabs "Parser_ReadIn_GetList:F19",36,0,0,Parser_ReadIn_GetList
	.align 4
Parser_ReadIn_GetList:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab74, %esp
.LN107:
	.stabn  68,0,252,.LN107-Parser_ReadIn_GetList		# line 252, column 4
.LBB8:
.LN108:
	.stabn  68,0,253,.LN108-Parser_ReadIn_GetList		# line 253, column 9
	call	Parser_ReadIn_Pop
	movl	%eax,-8(%ebp) 
.Lab75:
.LN109:
	.stabn  68,0,255,.LN109-Parser_ReadIn_GetList		# line 255, column 12
	pushl	-8(%ebp)
	call	Parser_ReadIn_Pop
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	pushl	%eax
	pushl	$2
	pushl	AtomTable_s + 5016
	call	Terms_MakeFunc
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
.LN110:
	.stabn  68,0,256,.LN110-Parser_ReadIn_GetList		# line 256, column 28
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab78
	jmp	.Lab77
.Lab78:
   	call	BoundErr_		
.Lab77:
	cmpb	$0,-832(%ebx,%eax,8)
	je	.Lab75
.Lab76:
.LN111:
	.stabn  68,0,257,.LN111-Parser_ReadIn_GetList		# line 257, column 7
	movl	-8(%ebp),%eax
	leave
	ret
.LN112:
	.stabn  68,0,258,.LN112-Parser_ReadIn_GetList		# line 258, column 0
	call	ReturnErr_
.LBE8:
	leave
	ret
	.Lab74 = 8
	.stabs "x:19",128,0,4,-8
	.stabn 192,0,0,.LBB8-Parser_ReadIn_GetList
	.stabn 224,0,0,.LBE8-Parser_ReadIn_GetList
	.stabs "Parser_ReadIn_GetFunc:F19",36,0,0,Parser_ReadIn_GetFunc
	.align 4
Parser_ReadIn_GetFunc:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab79, %esp
.LN113:
	.stabn  68,0,235,.LN113-Parser_ReadIn_GetFunc		# line 235, column 4
.LBB9:
.LN114:
	.stabn  68,0,236,.LN114-Parser_ReadIn_GetFunc		# line 236, column 9
	call	Parser_ReadIn_Pop
	movl	%eax,-8(%ebp) 
.LN115:
	.stabn  68,0,237,.LN115-Parser_ReadIn_GetFunc		# line 237, column 9
	movl	$1,-12(%ebp) 
	jmp	.Lab80
.Lab81:
.LN116:
	.stabn  68,0,239,.LN116-Parser_ReadIn_GetFunc		# line 239, column 12
	pushl	-8(%ebp)
	call	Parser_ReadIn_Pop
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	movl	%eax,-8(%ebp) 
.LN117:
	.stabn  68,0,240,.LN117-Parser_ReadIn_GetFunc		# line 240, column 12
	incl	-12(%ebp)
.Lab80:
.LN118:
	.stabn  68,0,238,.LN118-Parser_ReadIn_GetFunc		# line 238, column 28
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab84
	jmp	.Lab83
.Lab84:
   	call	BoundErr_		
.Lab83:
	cmpb	$0,-832(%ebx,%eax,8)
	je	.Lab81
.Lab82:
.LN119:
	.stabn  68,0,242,.LN119-Parser_ReadIn_GetFunc		# line 242, column 7
	pushl	-8(%ebp)
	pushl	-12(%ebp)
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab86
	jmp	.Lab85
.Lab86:
   	call	BoundErr_		
.Lab85:
	pushl	-828(%ebx,%eax,8)
	call	Terms_MakeFunc
	addl	$12, %esp
	leave
	ret
.LN120:
	.stabn  68,0,243,.LN120-Parser_ReadIn_GetFunc		# line 243, column 0
	call	ReturnErr_
.LBE9:
	leave
	ret
	.Lab79 = 12
	.stabs "n:7",128,0,4,-12
	.stabs "x:19",128,0,4,-8
	.stabn 192,0,0,.LBB9-Parser_ReadIn_GetFunc
	.stabn 224,0,0,.LBE9-Parser_ReadIn_GetFunc
	.stabs "Parser_ReadIn_ExitContext:F16",36,0,0,Parser_ReadIn_ExitContext
	.align 4
Parser_ReadIn_ExitContext:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab87, %esp
.LN121:
	.stabn  68,0,215,.LN121-Parser_ReadIn_ExitContext		# line 215, column 4
.LBB10:
.LN122:
	.stabn  68,0,216,.LN122-Parser_ReadIn_ExitContext		# line 216, column 11
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
 	subl	$1,%eax 
	cmpl	$100,%eax
	jbe	.Lab88
.Lab89:
   	call	BoundErr_		
.Lab88:
	movl	%eax,-24(%ebx) 
.LN123:
	.stabn  68,0,217,.LN123-Parser_ReadIn_ExitContext		# line 217, column 7
	pushl	8(%ebp)
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-828(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab91
	jmp	.Lab90
.Lab91:
   	call	BoundErr_		
.Lab90:
	leal	-996(%ebx,%eax,8),%eax
	movl	%eax,-8(%ebp) 
.LN124:
	.stabn  68,0,219,.LN124-Parser_ReadIn_ExitContext		# line 219, column 18
	movl	DISPLAY_,%ebx
	movl	-8(%ebp),%eax
	movb	(%eax),%al
	movb	%al,-7(%ebx) 
.LN125:
	.stabn  68,0,220,.LN125-Parser_ReadIn_ExitContext		# line 220, column 17
	movl	DISPLAY_,%ebx
	movl	-8(%ebp),%eax
	movl	4(%eax),%eax
	movl	%eax,-12(%ebx) 
.LN126:
	.stabn  68,0,222,.LN126-Parser_ReadIn_ExitContext		# line 222, column 16
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-828(%eax),%eax
 	subl	$1,%eax 
	cmpl	$20,%eax
	jbe	.Lab92
.Lab93:
   	call	BoundErr_		
.Lab92:
	movl	%eax,-828(%ebx) 
.LN127:
	.stabn  68,0,223,.LN127-Parser_ReadIn_ExitContext		# line 223, column 16
	movl	DISPLAY_,%eax
	movb	$0,-8(%eax) 
.LN128:
	.stabn  68,0,223,.LN128-Parser_ReadIn_ExitContext		# line 223, column 31
	movl	DISPLAY_,%eax
	movl	$0,-16(%eax) 
.LN129:
	.stabn  68,0,224,.LN129-Parser_ReadIn_ExitContext		# line 224, column 0
.LBE10:
	leave
	ret
	.Lab87 = 8
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB10-Parser_ReadIn_ExitContext
	.stabn 224,0,0,.LBE10-Parser_ReadIn_ExitContext
	.stabs "Parser_ReadIn_EnterContext:F16",36,0,0,Parser_ReadIn_EnterContext
	.align 4
Parser_ReadIn_EnterContext:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab94, %esp
.LN130:
	.stabn  68,0,203,.LN130-Parser_ReadIn_EnterContext		# line 203, column 4
.LBB11:
.LN131:
	.stabn  68,0,204,.LN131-Parser_ReadIn_EnterContext		# line 204, column 7
	movl	DISPLAY_,%eax
	cmpl	$20,-828(%eax)
	jb	.Lab95
.Lab96:
.LN132:
	.stabn  68,0,204,.LN132-Parser_ReadIn_EnterContext		# line 204, column 37
	pushl	$21
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN133:
	.stabn  68,0,204,.LN133-Parser_ReadIn_EnterContext		# line 204, column 62
	call	exit_
.Lab95:
.LN134:
	.stabn  68,0,205,.LN134-Parser_ReadIn_EnterContext		# line 205, column 16
	movl	DISPLAY_,%ecx
	movl	DISPLAY_,%ebx
	movl	$1,%eax
 	addl	-828(%ebx),%eax 
	cmpl	$20,%eax
	jbe	.Lab97
.Lab98:
   	call	BoundErr_		
.Lab97:
	movl	%eax,-828(%ecx) 
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-828(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab100
	jmp	.Lab99
.Lab100:
   	call	BoundErr_		
.Lab99:
	leal	-996(%ebx,%eax,8),%eax
	movl	%eax,-8(%ebp) 
.LN135:
	.stabn  68,0,207,.LN135-Parser_ReadIn_EnterContext		# line 207, column 19
	movl	-8(%ebp),%ebx
	movl	DISPLAY_,%eax
	movb	-7(%eax),%al
	movb	%al,(%ebx) 
.LN136:
	.stabn  68,0,208,.LN136-Parser_ReadIn_EnterContext		# line 208, column 18
	movl	-8(%ebp),%ebx
	movl	DISPLAY_,%eax
	movl	-12(%eax),%eax
	movl	%eax,4(%ebx) 
.LN137:
	.stabn  68,0,210,.LN137-Parser_ReadIn_EnterContext		# line 210, column 15
	movl	DISPLAY_,%ebx
	movb	8(%ebp),%al
	movb	%al,-7(%ebx) 
.LN138:
	.stabn  68,0,210,.LN138-Parser_ReadIn_EnterContext		# line 210, column 30
	movl	DISPLAY_,%eax
	movb	$1,-8(%eax) 
.LN139:
	.stabn  68,0,210,.LN139-Parser_ReadIn_EnterContext		# line 210, column 47
	movl	DISPLAY_,%ebx
	movl	12(%ebp),%eax
	movl	%eax,-12(%ebx) 
.LN140:
	.stabn  68,0,211,.LN140-Parser_ReadIn_EnterContext		# line 211, column 0
.LBE11:
	leave
	ret
	.Lab94 = 8
	.stabs "h:p29",160,0,4,12
	.stabs "readstate:t35=efinalK:6,curlyK:5,endlistK:4,listK:3,funcK:2,innerK:1,outerK:0,;",128,0,0,0
	.stabs "k:p35",160,0,1,8
	.stabn 192,0,0,.LBB11-Parser_ReadIn_EnterContext
	.stabn 224,0,0,.LBE11-Parser_ReadIn_EnterContext
	.stabs "Parser_ReadIn_CheckDelim:F1",36,0,0,Parser_ReadIn_CheckDelim
	.align 4
Parser_ReadIn_CheckDelim:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab101, %esp
.LN141:
	.stabn  68,0,188,.LN141-Parser_ReadIn_CheckDelim		# line 188, column 4
.LBB12:
.LN142:
	.stabn  68,0,189,.LN142-Parser_ReadIn_CheckDelim		# line 189, column 7
	movl	DISPLAY_,%eax
	cmpb	$1,-8(%eax)
	jne	.Lab102
.Lab103:
.LN143:
	.stabn  68,0,190,.LN143-Parser_ReadIn_CheckDelim		# line 190, column 10
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab107
	jmp	.Lab106
.Lab107:
   	call	BoundErr_		
.Lab106:
	cmpb	$1,-832(%ebx,%eax,8)
	je	.Lab104
.Lab105:
.LN144:
	.stabn  68,0,190,.LN144-Parser_ReadIn_CheckDelim		# line 190, column 40
	pushl	$19
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN145:
	.stabn  68,0,190,.LN145-Parser_ReadIn_CheckDelim		# line 190, column 64
	movb	$0,%al
	leave
	ret
.Lab104:
.LN146:
	.stabn  68,0,191,.LN146-Parser_ReadIn_CheckDelim		# line 191, column 12
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab109
	jmp	.Lab108
.Lab109:
   	call	BoundErr_		
.Lab108:
	movl	-828(%ebx,%eax,8),%eax
	movl	%eax,-8(%ebp) 
.LN147:
	.stabn  68,0,192,.LN147-Parser_ReadIn_CheckDelim		# line 192, column 10
	movl	-8(%ebp),%eax
	movzbl	16(%eax),%ebx
	movl	$3,%eax
	btl	%ebx,%eax
	jc	.Lab110
.Lab111:
.LN148:
	.stabn  68,0,192,.LN148-Parser_ReadIn_CheckDelim		# line 192, column 53
	pushl	$19
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN149:
	.stabn  68,0,192,.LN149-Parser_ReadIn_CheckDelim		# line 192, column 77
	movb	$0,%al
	leave
	ret
.Lab110:
.LN150:
	.stabn  68,0,193,.LN150-Parser_ReadIn_CheckDelim		# line 193, column 14
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
 	subl	$1,%eax 
	cmpl	$100,%eax
	jbe	.Lab112
.Lab113:
   	call	BoundErr_		
.Lab112:
	movl	%eax,-24(%ebx) 
.LN151:
	.stabn  68,0,194,.LN151-Parser_ReadIn_CheckDelim		# line 194, column 10
	pushl	$0
	pushl	$0
	pushl	-8(%ebp)
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.Lab102:
.LN152:
	.stabn  68,0,196,.LN152-Parser_ReadIn_CheckDelim		# line 196, column 7
	movl	DISPLAY_,%eax
	movzbl	-7(%eax),%eax
	btl	%eax,8(%ebp)
	jc	.Lab114
.Lab115:
.LN153:
	.stabn  68,0,196,.LN153-Parser_ReadIn_CheckDelim		# line 196, column 34
	movzbl	12(%ebp),%eax
	pushl	%eax
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN154:
	.stabn  68,0,196,.LN154-Parser_ReadIn_CheckDelim		# line 196, column 50
	movb	$0,%al
	leave
	ret
.Lab114:
.LN155:
	.stabn  68,0,197,.LN155-Parser_ReadIn_CheckDelim		# line 197, column 7
	pushl	$1200
	pushl	$1200
	call	Parser_ReadIn_Reduce
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab116
.Lab117:
.LN156:
	.stabn  68,0,197,.LN156-Parser_ReadIn_CheckDelim		# line 197, column 44
	movb	$0,%al
	leave
	ret
.Lab116:
.LN157:
	.stabn  68,0,198,.LN157-Parser_ReadIn_CheckDelim		# line 198, column 7
	movb	$1,%al
	leave
	ret
.LN158:
	.stabn  68,0,199,.LN158-Parser_ReadIn_CheckDelim		# line 199, column 0
	call	ReturnErr_
.LBE12:
	leave
	ret
	.Lab101 = 8
	.stabs "a:22",128,0,4,-8
	.stabs "error:t36=evarexpE:28,nofileE:27,filespaceE:26,iodirE:25,nvarsE:24,weirdchE:23,sysprocE:22,readstackE:21,precE:20,needrandE:19,needquoteE:18,needopE:17,localspaceE:16,framespaceE:15,eofE:14,divideE:13,depthE:12,commentE:11,badvbarE:10,badketE:9,badexpE:8,baddotE:7,badcommaE:6,badcharE:5,badcddE:4,atomspaceE:3,assertE:2,argsE:1,arityE:0,;",128,0,0,0
	.stabs "e:p36",160,0,1,12
	.stabs "stateset:t37=4",128,0,0,0
	.stabs "s:p37",160,0,4,8
	.stabn 192,0,0,.LBB12-Parser_ReadIn_CheckDelim
	.stabn 224,0,0,.LBE12-Parser_ReadIn_CheckDelim
	.stabs "Parser_ReadIn_Reduce:F1",36,0,0,Parser_ReadIn_Reduce
	.align 4
Parser_ReadIn_Reduce:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab118, %esp
.LN159:
	.stabn  68,0,151,.LN159-Parser_ReadIn_Reduce		# line 151, column 4
.LBB13:
.LN160:
	.stabn  68,0,152,.LN160-Parser_ReadIn_Reduce		# line 152, column 9
	call	Parser_ReadIn_Pop
	movl	%eax,-8(%ebp) 
.LN161:
	.stabn  68,0,153,.LN161-Parser_ReadIn_Reduce		# line 153, column 15
	movb	$0,-13(%ebp) 
	jmp	.Lab119
.Lab120:
.LN162:
	.stabn  68,0,155,.LN162-Parser_ReadIn_Reduce		# line 155, column 12
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab123
	jmp	.Lab122
.Lab123:
   	call	BoundErr_		
.Lab122:
	movl	-828(%ebx,%eax,8),%eax
	movl	%eax,-12(%ebp) 
.LN163:
	.stabn  68,0,156,.LN163-Parser_ReadIn_Reduce		# line 156, column 10
	pushl	-12(%ebp)
	call	Parser_Rprec
	addl	$4, %esp
	cmpl	8(%ebp),%eax
	jb	.Lab126
.Lab127:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	12(%ebp),%eax
	jbe	.Lab126
.Lab125:
.LN164:
	.stabn  68,0,157,.LN164-Parser_ReadIn_Reduce		# line 157, column 21
	movb	$1,-13(%ebp) 
	jmp	.Lab124
.Lab126:
.LN165:
	.stabn  68,0,158,.LN165-Parser_ReadIn_Reduce		# line 158, column 10
	pushl	-12(%ebp)
	call	Parser_Rprec
	addl	$4, %esp
	cmpl	8(%ebp),%eax
	jae	.Lab130
.Lab131:
	movl	-12(%ebp),%eax
	movl	20(%eax),%eax
	cmpl	12(%ebp),%eax
	ja	.Lab130
.Lab129:
.LN166:
	.stabn  68,0,159,.LN166-Parser_ReadIn_Reduce		# line 159, column 17
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
 	subl	$1,%eax 
	cmpl	$100,%eax
	jbe	.Lab132
.Lab133:
   	call	BoundErr_		
.Lab132:
	movl	%eax,-24(%ebx) 
.LN167:
	.stabn  68,0,160,.LN167-Parser_ReadIn_Reduce		# line 160, column 13
	movl	-12(%ebp),%eax
	movzbl	16(%eax),%eax
	.data
	.align 4
.Lab138:
	.long	.Lab137
	.long	.Lab137
	.long	.Lab134
	.long	.Lab134
	.long	.Lab136
	.long	.Lab136
	.long	.Lab136
	.text
	subl	$0,%eax
	jb	.Lab134
	cmpl	$6,%eax
	ja	.Lab134
	jmp	*.Lab138(,%eax,4)
.Lab137:
.LN168:
	.stabn  68,0,162,.LN168-Parser_ReadIn_Reduce		# line 162, column 21
	pushl	-8(%ebp)
	pushl	$1
	pushl	-12(%ebp)
	call	Terms_MakeFunc
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
	jmp	.Lab135
.Lab136:
.LN169:
	.stabn  68,0,164,.LN169-Parser_ReadIn_Reduce		# line 164, column 21
	pushl	-8(%ebp)
	call	Parser_ReadIn_Pop
	pushl	%eax
	call	Terms_MakeBros
	addl	$8, %esp
	pushl	%eax
	pushl	$2
	pushl	-12(%ebp)
	call	Terms_MakeFunc
	addl	$12, %esp
	movl	%eax,-8(%ebp) 
	jmp	.Lab135
.Lab134:
	call	CaseErr_
.Lab135:
	jmp	.Lab128
.Lab130:
.LN170:
	.stabn  68,0,167,.LN170-Parser_ReadIn_Reduce		# line 167, column 13
	pushl	$20
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN171:
	.stabn  68,0,168,.LN171-Parser_ReadIn_Reduce		# line 168, column 13
	movb	$0,%al
	leave
	ret
.Lab128:
.Lab124:
.Lab119:
.LN172:
	.stabn  68,0,154,.LN172-Parser_ReadIn_Reduce		# line 154, column 36
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab141
	jmp	.Lab140
.Lab141:
   	call	BoundErr_		
.Lab140:
	cmpb	$1,-832(%ebx,%eax,8)
	jne	.Lab121
.Lab139:
	cmpb	$0,-13(%ebp)
	je	.Lab120
.Lab121:
.LN173:
	.stabn  68,0,171,.LN173-Parser_ReadIn_Reduce		# line 171, column 7
	pushl	-8(%ebp)
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.LN174:
	.stabn  68,0,172,.LN174-Parser_ReadIn_Reduce		# line 172, column 7
	movb	$1,%al
	leave
	ret
.LN175:
	.stabn  68,0,173,.LN175-Parser_ReadIn_Reduce		# line 173, column 0
	call	ReturnErr_
.LBE13:
	leave
	ret
	.Lab118 = 16
	.stabs "reduced:1",128,0,1,-13
	.stabs "a:22",128,0,4,-12
	.stabs "x:19",128,0,4,-8
	.stabs "lp:p29",160,0,4,12
	.stabs "p:p29",160,0,4,8
	.stabn 192,0,0,.LBB13-Parser_ReadIn_Reduce
	.stabn 224,0,0,.LBE13-Parser_ReadIn_Reduce
	.stabs "Parser_ReadIn_Pop:F19",36,0,0,Parser_ReadIn_Pop
	.align 4
Parser_ReadIn_Pop:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab142, %esp
.LN176:
	.stabn  68,0,130,.LN176-Parser_ReadIn_Pop		# line 130, column 4
.LBB14:
.LN177:
	.stabn  68,0,131,.LN177-Parser_ReadIn_Pop		# line 131, column 12
	movl	DISPLAY_,%ebx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%eax
	cmpl	$1,%eax
	jb	.Lab144
	jmp	.Lab143
.Lab144:
   	call	BoundErr_		
.Lab143:
	movl	-828(%ebx,%eax,8),%eax
	movl	%eax,-8(%ebp) 
.LN178:
	.stabn  68,0,132,.LN178-Parser_ReadIn_Pop		# line 132, column 7
	movl	DISPLAY_,%eax
	decl	-24(%eax) 
.LN179:
	.stabn  68,0,133,.LN179-Parser_ReadIn_Pop		# line 133, column 7
	movl	-8(%ebp),%eax
	leave
	ret
.LN180:
	.stabn  68,0,134,.LN180-Parser_ReadIn_Pop		# line 134, column 0
	call	ReturnErr_
.LBE14:
	leave
	ret
	.Lab142 = 8
	.stabs "item:19",128,0,4,-8
	.stabn 192,0,0,.LBB14-Parser_ReadIn_Pop
	.stabn 224,0,0,.LBE14-Parser_ReadIn_Pop
	.stabs "Parser_ReadIn_Shift:F16",36,0,0,Parser_ReadIn_Shift
	.align 4
Parser_ReadIn_Shift:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab145, %esp
.LN181:
	.stabn  68,0,122,.LN181-Parser_ReadIn_Shift		# line 122, column 4
.LBB15:
.LN182:
	.stabn  68,0,123,.LN182-Parser_ReadIn_Shift		# line 123, column 7
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	Parser_ReadIn_Push
	addl	$4, %esp
.LN183:
	.stabn  68,0,124,.LN183-Parser_ReadIn_Shift		# line 124, column 23
	movl	DISPLAY_,%ecx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%ebx
	cmpl	$1,%ebx
	jb	.Lab147
	jmp	.Lab146
.Lab147:
   	call	BoundErr_		
.Lab146:
	movl	12(%ebp),%eax
	movl	%eax,-828(%ecx,%ebx,8) 
.LN184:
	.stabn  68,0,125,.LN184-Parser_ReadIn_Shift		# line 125, column 0
.LBE15:
	leave
	ret
	.Lab145 = 4
	.stabs "a:p22",160,0,4,12
	.stabs "elemtag:t39=emarkL:3,funcL:2,opL:1,termL:0,;",128,0,0,0
	.stabs "atomtag:t38=39",128,0,0,0
	.stabs "t:p38",160,0,1,8
	.stabn 192,0,0,.LBB15-Parser_ReadIn_Shift
	.stabn 224,0,0,.LBE15-Parser_ReadIn_Shift
	.stabs "Parser_ReadIn_ShiftTerm:F16",36,0,0,Parser_ReadIn_ShiftTerm
	.align 4
Parser_ReadIn_ShiftTerm:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab148, %esp
.LN185:
	.stabn  68,0,115,.LN185-Parser_ReadIn_ShiftTerm		# line 115, column 4
.LBB16:
.LN186:
	.stabn  68,0,116,.LN186-Parser_ReadIn_ShiftTerm		# line 116, column 7
	pushl	$0
	call	Parser_ReadIn_Push
	addl	$4, %esp
.LN187:
	.stabn  68,0,117,.LN187-Parser_ReadIn_ShiftTerm		# line 117, column 23
	movl	DISPLAY_,%ecx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%ebx
	cmpl	$1,%ebx
	jb	.Lab150
	jmp	.Lab149
.Lab150:
   	call	BoundErr_		
.Lab149:
	movl	8(%ebp),%eax
	movl	%eax,-828(%ecx,%ebx,8) 
.LN188:
	.stabn  68,0,118,.LN188-Parser_ReadIn_ShiftTerm		# line 118, column 0
.LBE16:
	leave
	ret
	.Lab148 = 4
	.stabs "x:p19",160,0,4,8
	.stabn 192,0,0,.LBB16-Parser_ReadIn_ShiftTerm
	.stabn 224,0,0,.LBE16-Parser_ReadIn_ShiftTerm
	.stabs "Parser_ReadIn_Push:F16",36,0,0,Parser_ReadIn_Push
	.align 4
Parser_ReadIn_Push:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab151, %esp
.LN189:
	.stabn  68,0,107,.LN189-Parser_ReadIn_Push		# line 107, column 4
.LBB17:
.LN190:
	.stabn  68,0,108,.LN190-Parser_ReadIn_Push		# line 108, column 7
	movl	DISPLAY_,%eax
	cmpl	$100,-24(%eax)
	jb	.Lab152
.Lab153:
.LN191:
	.stabn  68,0,108,.LN191-Parser_ReadIn_Push		# line 108, column 31
	pushl	$21
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN192:
	.stabn  68,0,108,.LN192-Parser_ReadIn_Push		# line 108, column 56
	call	exit_
.Lab152:
.LN193:
	.stabn  68,0,109,.LN193-Parser_ReadIn_Push		# line 109, column 7
	movl	DISPLAY_,%eax
	incl	-24(%eax) 
.LN194:
	.stabn  68,0,110,.LN194-Parser_ReadIn_Push		# line 110, column 22
	movl	DISPLAY_,%ecx
	movl	DISPLAY_,%eax
	movl	-24(%eax),%ebx
	cmpl	$1,%ebx
	jb	.Lab155
	jmp	.Lab154
.Lab155:
   	call	BoundErr_		
.Lab154:
	movb	8(%ebp),%al
	movb	%al,-832(%ecx,%ebx,8) 
.LN195:
	.stabn  68,0,111,.LN195-Parser_ReadIn_Push		# line 111, column 0
.LBE17:
	leave
	ret
	.Lab151 = 4
	.stabs "t:p39",160,0,1,8
	.stabn 192,0,0,.LBB17-Parser_ReadIn_Push
	.stabn 224,0,0,.LBE17-Parser_ReadIn_Push
	.stabs "Parser_ReadIn_SyntaxError:F16",36,0,0,Parser_ReadIn_SyntaxError
	.align 4
Parser_ReadIn_SyntaxError:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab156, %esp
.LN196:
	.stabn  68,0,99,.LN196-Parser_ReadIn_SyntaxError		# line 99, column 4
.LBB18:
.LN197:
	.stabn  68,0,100,.LN197-Parser_ReadIn_SyntaxError		# line 100, column 7
	movzbl	8(%ebp),%eax
	pushl	%eax
	call	ErrorHandler_Report
	addl	$4, %esp
.LN198:
	.stabn  68,0,101,.LN198-Parser_ReadIn_SyntaxError		# line 101, column 7
	call	PFiles_Recover
.LN199:
	.stabn  68,0,102,.LN199-Parser_ReadIn_SyntaxError		# line 102, column 14
	movl	DISPLAY_,%eax
	movb	$0,-17(%eax) 
.LN200:
	.stabn  68,0,103,.LN200-Parser_ReadIn_SyntaxError		# line 103, column 0
.LBE18:
	leave
	ret
	.Lab156 = 4
	.stabs "e:p36",160,0,1,8
	.stabn 192,0,0,.LBB18-Parser_ReadIn_SyntaxError
	.stabn 224,0,0,.LBE18-Parser_ReadIn_SyntaxError
	.stabs "Parser_ReadIn:F1",36,0,0,Parser_ReadIn
	.align 4
Parser_ReadIn:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab157, %esp
	movl	DISPLAY_+0,%ecx
	movl	%ecx,-4(%ebp)
	movl	%ebp,DISPLAY_+0
.LN201:
	.stabn  68,0,380,.LN201-Parser_ReadIn		# line 380, column 1
.LBB19:
.LN202:
	.stabn  68,0,381,.LN202-Parser_ReadIn		# line 381, column 8
	movl	$0,-24(%ebp) 
.LN203:
	.stabn  68,0,382,.LN203-Parser_ReadIn		# line 382, column 13
	movl	$0,-828(%ebp) 
.LN204:
	.stabn  68,0,383,.LN204-Parser_ReadIn		# line 383, column 11
	movb	$1,-17(%ebp) 
.LN205:
	.stabn  68,0,384,.LN205-Parser_ReadIn		# line 384, column 11
	movl	12(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	AtomTable_s + 5012
	call	Terms_MakeFunc
	addl	$12, %esp
	popl	%ebx
	movl	%eax,(%ebx) 
.LN206:
	.stabn  68,0,385,.LN206-Parser_ReadIn		# line 385, column 4
	pushl	$3
	call	Parser_ReadIn_Push
	addl	$4, %esp
.LN207:
	.stabn  68,0,386,.LN207-Parser_ReadIn		# line 386, column 12
	movb	$0,-7(%ebp) 
.LN208:
	.stabn  68,0,386,.LN208-Parser_ReadIn		# line 386, column 32
	movb	$1,-8(%ebp) 
.LN209:
	.stabn  68,0,386,.LN209-Parser_ReadIn		# line 386, column 49
	movl	$1200,-12(%ebp) 
.LN210:
	.stabn  68,0,387,.LN210-Parser_ReadIn		# line 387, column 7
	movb	$32,-5(%ebp) 
.Lab158:
.LN211:
	.stabn  68,0,390,.LN211-Parser_ReadIn		# line 390, column 7
	call	PFiles_FileEnded
	cmpb	$0,%al
	je	.Lab162
.Lab161:
.LN212:
	.stabn  68,0,392,.LN212-Parser_ReadIn		# line 392, column 19
	movl	8(%ebp),%eax
	pushl	%eax
	pushl	$0
	pushl	$0
	pushl	AtomTable_s + 5072
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	pushl	$1
	pushl	AtomTable_s + 5028
	call	Terms_MakeFunc
	addl	$12, %esp
	popl	%ebx
	movl	%eax,(%ebx) 
.LN213:
	.stabn  68,0,393,.LN213-Parser_ReadIn		# line 393, column 18
	movb	$6,-7(%ebp) 
	jmp	.Lab160
.Lab162:
.LN214:
	.stabn  68,0,395,.LN214-Parser_ReadIn		# line 395, column 17
	movl	PFiles_s,%eax
	movl	%eax,PFiles_s + 4 
.LN215:
	.stabn  68,0,397,.LN215-Parser_ReadIn		# line 397, column 10
	movzbl	-5(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab183
.Lab184:
   	call	BoundErr_		
.Lab183:
	movzbl	PFiles_s + 16(%eax),%eax
	.data
	.align 4
.Lab185:
	.long	.Lab182
	.long	.Lab178
	.long	.Lab177
	.long	.Lab179
	.long	.Lab180
	.long	.Lab181
	.long	.Lab176
	.long	.Lab175
	.long	.Lab174
	.long	.Lab173
	.long	.Lab172
	.long	.Lab171
	.long	.Lab170
	.long	.Lab169
	.long	.Lab168
	.long	.Lab167
	.long	.Lab166
	.long	.Lab165
	.text
	subl	$0,%eax
	jb	.Lab163
	cmpl	$17,%eax
	ja	.Lab163
	jmp	*.Lab185(,%eax,4)
.Lab182:
.LN216:
	.stabn  68,0,399,.LN216-Parser_ReadIn		# line 399, column 19
	call	AtomTable_StartAtom
.Lab186:
.LN217:
	.stabn  68,0,401,.LN217-Parser_ReadIn		# line 401, column 22
	movzbl	-5(%ebp),%eax
	pushl	%eax
	call	AtomTable_AtomChar
	addl	$4, %esp
.LN218:
	.stabn  68,0,401,.LN218-Parser_ReadIn		# line 401, column 36
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN219:
	.stabn  68,0,402,.LN219-Parser_ReadIn		# line 402, column 25
	movzbl	-5(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab188
.Lab189:
   	call	BoundErr_		
.Lab188:
	movzbl	PFiles_s + 16(%eax),%ebx
	movl	$7,%eax
	btl	%ebx,%eax
	jc	.Lab186
.Lab187:
.LN220:
	.stabn  68,0,403,.LN220-Parser_ReadIn		# line 403, column 19
	call	AtomTable_LookUp
	pushl	%eax
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab190
.Lab191:
.LN221:
	.stabn  68,0,403,.LN221-Parser_ReadIn		# line 403, column 50
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab190:
	jmp	.Lab164
.Lab181:
.LN222:
	.stabn  68,0,406,.LN222-Parser_ReadIn		# line 406, column 19
	pushl	$39
	call	Parser_ReadIn_ScanQuote
	addl	$4, %esp
.LN223:
	.stabn  68,0,407,.LN223-Parser_ReadIn		# line 407, column 19
	call	AtomTable_LookUp
	pushl	%eax
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab192
.Lab193:
.LN224:
	.stabn  68,0,407,.LN224-Parser_ReadIn		# line 407, column 50
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab192:
	jmp	.Lab164
.Lab180:
.LN225:
	.stabn  68,0,410,.LN225-Parser_ReadIn		# line 410, column 19
	cmpb	$0,-8(%ebp)
	jne	.Lab194
.Lab195:
.LN226:
	.stabn  68,0,410,.LN226-Parser_ReadIn		# line 410, column 42
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN227:
	.stabn  68,0,410,.LN227-Parser_ReadIn		# line 410, column 64
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab194:
.LN228:
	.stabn  68,0,411,.LN228-Parser_ReadIn		# line 411, column 19
	pushl	$34
	call	Parser_ReadIn_ScanQuote
	addl	$4, %esp
.LN229:
	.stabn  68,0,412,.LN229-Parser_ReadIn		# line 412, column 19
	leal	AtomTable_s,%esi
	subl	$8,%esp
	movl	%esp,%edi
	movl	$2,%ecx
	cld
	repz
	movsl
	call	Terms_ListRep
	addl	$8, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.LN230:
	.stabn  68,0,413,.LN230-Parser_ReadIn		# line 413, column 28
	movb	$0,-8(%ebp) 
.LN231:
	.stabn  68,0,413,.LN231-Parser_ReadIn		# line 413, column 43
	movl	$0,-16(%ebp) 
	jmp	.Lab164
.Lab179:
.LN232:
	.stabn  68,0,416,.LN232-Parser_ReadIn		# line 416, column 26
	movb	-5(%ebp),%al
	movb	%al,-6(%ebp) 
.LN233:
	.stabn  68,0,416,.LN233-Parser_ReadIn		# line 416, column 33
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN234:
	.stabn  68,0,417,.LN234-Parser_ReadIn		# line 417, column 19
	cmpb	$47,-6(%ebp)
	jne	.Lab198
.Lab199:
	cmpb	$42,-5(%ebp)
	jne	.Lab198
.Lab197:
.LN235:
	.stabn  68,0,419,.LN235-Parser_ReadIn		# line 419, column 21
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.Lab200:
.LN236:
	.stabn  68,0,421,.LN236-Parser_ReadIn		# line 421, column 31
	movb	-5(%ebp),%al
	movb	%al,-6(%ebp) 
.LN237:
	.stabn  68,0,421,.LN237-Parser_ReadIn		# line 421, column 38
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN238:
	.stabn  68,0,422,.LN238-Parser_ReadIn		# line 422, column 42
	cmpb	$42,-6(%ebp)
	jne	.Lab200
.Lab202:
	cmpb	$47,-5(%ebp)
	jne	.Lab200
.Lab201:
.LN239:
	.stabn  68,0,423,.LN239-Parser_ReadIn		# line 423, column 21
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab196
.Lab198:
.LN240:
	.stabn  68,0,425,.LN240-Parser_ReadIn		# line 425, column 19
	cmpb	$126,-6(%ebp)
	jne	.Lab205
.Lab206:
	movzbl	-5(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab207
.Lab208:
   	call	BoundErr_		
.Lab207:
	cmpb	$2,PFiles_s + 16(%eax)
	jne	.Lab205
.Lab204:
.LN241:
	.stabn  68,0,428,.LN241-Parser_ReadIn		# line 428, column 21
	cmpb	$0,-8(%ebp)
	jne	.Lab209
.Lab210:
.LN242:
	.stabn  68,0,428,.LN242-Parser_ReadIn		# line 428, column 44
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN243:
	.stabn  68,0,428,.LN243-Parser_ReadIn		# line 428, column 66
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab209:
.LN244:
	.stabn  68,0,429,.LN244-Parser_ReadIn		# line 429, column 21
	call	Parser_ReadIn_ScanInt
	negl	%eax
	pushl	%eax
	call	Terms_MakeInt
	addl	$4, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.LN245:
	.stabn  68,0,430,.LN245-Parser_ReadIn		# line 430, column 30
	movb	$0,-8(%ebp) 
.LN246:
	.stabn  68,0,430,.LN246-Parser_ReadIn		# line 430, column 45
	movl	$0,-16(%ebp) 
	jmp	.Lab203
.Lab205:
.LN247:
	.stabn  68,0,432,.LN247-Parser_ReadIn		# line 432, column 19
	cmpb	$46,-6(%ebp)
	jne	.Lab213
.Lab212:
.LN248:
	.stabn  68,0,435,.LN248-Parser_ReadIn		# line 435, column 21
	pushl	$7
	pushl	$1
	call	Parser_ReadIn_CheckDelim
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab214
.Lab215:
.LN249:
	.stabn  68,0,435,.LN249-Parser_ReadIn		# line 435, column 70
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab214:
.LN250:
	.stabn  68,0,436,.LN250-Parser_ReadIn		# line 436, column 30
	movl	8(%ebp),%eax
	pushl	%eax
	call	Parser_ReadIn_Pop
	popl	%ebx
	movl	%eax,(%ebx) 
.LN251:
	.stabn  68,0,437,.LN251-Parser_ReadIn		# line 437, column 29
	movb	$6,-7(%ebp) 
	jmp	.Lab211
.Lab213:
.LN252:
	.stabn  68,0,440,.LN252-Parser_ReadIn		# line 440, column 21
	call	AtomTable_StartAtom
.LN253:
	.stabn  68,0,441,.LN253-Parser_ReadIn		# line 441, column 21
	movzbl	-6(%ebp),%eax
	pushl	%eax
	call	AtomTable_AtomChar
	addl	$4, %esp
	jmp	.Lab216
.Lab217:
.LN254:
	.stabn  68,0,443,.LN254-Parser_ReadIn		# line 443, column 24
	movzbl	-5(%ebp),%eax
	pushl	%eax
	call	AtomTable_AtomChar
	addl	$4, %esp
.LN255:
	.stabn  68,0,443,.LN255-Parser_ReadIn		# line 443, column 38
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.Lab216:
.LN256:
	.stabn  68,0,442,.LN256-Parser_ReadIn		# line 442, column 46
	movzbl	-5(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab219
.Lab220:
   	call	BoundErr_		
.Lab219:
	cmpb	$3,PFiles_s + 16(%eax)
	je	.Lab217
.Lab218:
.LN257:
	.stabn  68,0,445,.LN257-Parser_ReadIn		# line 445, column 21
	call	AtomTable_LookUp
	pushl	%eax
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab221
.Lab222:
.LN258:
	.stabn  68,0,445,.LN258-Parser_ReadIn		# line 445, column 52
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab221:
.Lab211:
.Lab203:
.Lab196:
	jmp	.Lab164
.Lab178:
.LN259:
	.stabn  68,0,449,.LN259-Parser_ReadIn		# line 449, column 18
	cmpb	$0,-8(%ebp)
	jne	.Lab223
.Lab224:
.LN260:
	.stabn  68,0,449,.LN260-Parser_ReadIn		# line 449, column 41
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN261:
	.stabn  68,0,449,.LN261-Parser_ReadIn		# line 449, column 63
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab223:
.LN262:
	.stabn  68,0,450,.LN262-Parser_ReadIn		# line 450, column 25
	movb	-5(%ebp),%al
	movb	%al,-6(%ebp) 
.LN263:
	.stabn  68,0,450,.LN263-Parser_ReadIn		# line 450, column 32
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN264:
	.stabn  68,0,451,.LN264-Parser_ReadIn		# line 451, column 18
	cmpb	$95,-6(%ebp)
	jne	.Lab227
.Lab228:
	movzbl	-5(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab229
.Lab230:
   	call	BoundErr_		
.Lab229:
	movzbl	PFiles_s + 16(%eax),%ebx
	movl	$7,%eax
	btl	%ebx,%eax
	jc	.Lab227
.Lab226:
.LN265:
	.stabn  68,0,455,.LN265-Parser_ReadIn		# line 455, column 21
	pushl	$0
	call	Terms_MakeVar
	addl	$4, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
	jmp	.Lab225
.Lab227:
.LN266:
	.stabn  68,0,457,.LN266-Parser_ReadIn		# line 457, column 21
	call	AtomTable_StartAtom
.LN267:
	.stabn  68,0,458,.LN267-Parser_ReadIn		# line 458, column 21
	movzbl	-6(%ebp),%eax
	pushl	%eax
	call	AtomTable_AtomChar
	addl	$4, %esp
	jmp	.Lab231
.Lab232:
.LN268:
	.stabn  68,0,460,.LN268-Parser_ReadIn		# line 460, column 24
	movzbl	-5(%ebp),%eax
	pushl	%eax
	call	AtomTable_AtomChar
	addl	$4, %esp
.LN269:
	.stabn  68,0,460,.LN269-Parser_ReadIn		# line 460, column 38
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.Lab231:
.LN270:
	.stabn  68,0,459,.LN270-Parser_ReadIn		# line 459, column 46
	movzbl	-5(%ebp),%eax
	cmpl	$255,%eax
	jbe	.Lab234
.Lab235:
   	call	BoundErr_		
.Lab234:
	movzbl	PFiles_s + 16(%eax),%ebx
	movl	$7,%eax
	btl	%ebx,%eax
	jc	.Lab232
.Lab233:
.LN271:
	.stabn  68,0,462,.LN271-Parser_ReadIn		# line 462, column 21
	call	Parser_ReadIn_EnterVar
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.Lab225:
.LN272:
	.stabn  68,0,464,.LN272-Parser_ReadIn		# line 464, column 27
	movb	$0,-8(%ebp) 
.LN273:
	.stabn  68,0,464,.LN273-Parser_ReadIn		# line 464, column 42
	movl	$0,-16(%ebp) 
	jmp	.Lab164
.Lab177:
.LN274:
	.stabn  68,0,467,.LN274-Parser_ReadIn		# line 467, column 18
	cmpb	$0,-8(%ebp)
	jne	.Lab236
.Lab237:
.LN275:
	.stabn  68,0,467,.LN275-Parser_ReadIn		# line 467, column 41
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN276:
	.stabn  68,0,467,.LN276-Parser_ReadIn		# line 467, column 63
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab236:
.LN277:
	.stabn  68,0,468,.LN277-Parser_ReadIn		# line 468, column 18
	call	Parser_ReadIn_ScanInt
	pushl	%eax
	call	Terms_MakeInt
	addl	$4, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.LN278:
	.stabn  68,0,469,.LN278-Parser_ReadIn		# line 469, column 27
	movb	$0,-8(%ebp) 
.LN279:
	.stabn  68,0,469,.LN279-Parser_ReadIn		# line 469, column 42
	movl	$0,-16(%ebp) 
	jmp	.Lab164
.Lab176:
.LN280:
	.stabn  68,0,472,.LN280-Parser_ReadIn		# line 472, column 18
	cmpb	$0,-8(%ebp)
	jne	.Lab238
.Lab239:
.LN281:
	.stabn  68,0,472,.LN281-Parser_ReadIn		# line 472, column 41
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN282:
	.stabn  68,0,472,.LN282-Parser_ReadIn		# line 472, column 63
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab238:
.LN283:
	.stabn  68,0,473,.LN283-Parser_ReadIn		# line 473, column 18
	pushl	$3
	call	Parser_ReadIn_Push
	addl	$4, %esp
.LN284:
	.stabn  68,0,474,.LN284-Parser_ReadIn		# line 474, column 18
	pushl	$1200
	pushl	$1
	call	Parser_ReadIn_EnterContext
	addl	$8, %esp
.LN285:
	.stabn  68,0,475,.LN285-Parser_ReadIn		# line 475, column 18
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab164
.Lab175:
.LN286:
	.stabn  68,0,478,.LN286-Parser_ReadIn		# line 478, column 18
	pushl	$9
	pushl	$6
	call	Parser_ReadIn_CheckDelim
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab240
.Lab241:
.LN287:
	.stabn  68,0,478,.LN287-Parser_ReadIn		# line 478, column 73
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab240:
.LN288:
	.stabn  68,0,479,.LN288-Parser_ReadIn		# line 479, column 18
	movzbl	-7(%ebp),%eax
	.data
	.align 4
.Lab246:
	.long	.Lab245
	.long	.Lab244
	.text
	subl	$1,%eax
	jb	.Lab242
	cmpl	$1,%eax
	ja	.Lab242
	jmp	*.Lab246(,%eax,4)
.Lab245:
.LN289:
	.stabn  68,0,480,.LN289-Parser_ReadIn		# line 480, column 29
	call	Parser_ReadIn_Pop
	pushl	%eax
	call	Parser_ReadIn_ExitContext
	addl	$4, %esp
	jmp	.Lab243
.Lab244:
.LN290:
	.stabn  68,0,481,.LN290-Parser_ReadIn		# line 481, column 29
	call	Parser_ReadIn_GetFunc
	pushl	%eax
	call	Parser_ReadIn_ExitContext
	addl	$4, %esp
	jmp	.Lab243
.Lab242:
	call	CaseErr_
.Lab243:
.LN291:
	.stabn  68,0,483,.LN291-Parser_ReadIn		# line 483, column 18
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab164
.Lab174:
.LN292:
	.stabn  68,0,486,.LN292-Parser_ReadIn		# line 486, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN293:
	.stabn  68,0,487,.LN293-Parser_ReadIn		# line 487, column 19
	cmpb	$93,-5(%ebp)
	jne	.Lab249
.Lab248:
.LN294:
	.stabn  68,0,489,.LN294-Parser_ReadIn		# line 489, column 22
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN295:
	.stabn  68,0,490,.LN295-Parser_ReadIn		# line 490, column 22
	pushl	AtomTable_s + 5012
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab250
.Lab251:
.LN296:
	.stabn  68,0,490,.LN296-Parser_ReadIn		# line 490, column 49
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab250:
	jmp	.Lab247
.Lab249:
.LN297:
	.stabn  68,0,492,.LN297-Parser_ReadIn		# line 492, column 22
	cmpb	$0,-8(%ebp)
	jne	.Lab252
.Lab253:
.LN298:
	.stabn  68,0,492,.LN298-Parser_ReadIn		# line 492, column 45
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN299:
	.stabn  68,0,492,.LN299-Parser_ReadIn		# line 492, column 67
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab252:
.LN300:
	.stabn  68,0,493,.LN300-Parser_ReadIn		# line 493, column 22
	pushl	$3
	call	Parser_ReadIn_Push
	addl	$4, %esp
.LN301:
	.stabn  68,0,494,.LN301-Parser_ReadIn		# line 494, column 22
	pushl	$999
	pushl	$3
	call	Parser_ReadIn_EnterContext
	addl	$8, %esp
.Lab247:
	jmp	.Lab164
.Lab173:
.LN302:
	.stabn  68,0,498,.LN302-Parser_ReadIn		# line 498, column 19
	pushl	$9
	pushl	$24
	call	Parser_ReadIn_CheckDelim
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab254
.Lab255:
.LN303:
	.stabn  68,0,498,.LN303-Parser_ReadIn		# line 498, column 76
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab254:
.LN304:
	.stabn  68,0,499,.LN304-Parser_ReadIn		# line 499, column 19
	cmpb	$3,-7(%ebp)
	jne	.Lab256
.Lab257:
.LN305:
	.stabn  68,0,499,.LN305-Parser_ReadIn		# line 499, column 43
	pushl	$0
	pushl	$0
	pushl	AtomTable_s + 5012
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Parser_ReadIn_ShiftTerm
	addl	$4, %esp
.Lab256:
.LN306:
	.stabn  68,0,500,.LN306-Parser_ReadIn		# line 500, column 19
	call	Parser_ReadIn_GetList
	pushl	%eax
	call	Parser_ReadIn_ExitContext
	addl	$4, %esp
.LN307:
	.stabn  68,0,501,.LN307-Parser_ReadIn		# line 501, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab164
.Lab172:
.LN308:
	.stabn  68,0,504,.LN308-Parser_ReadIn		# line 504, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN309:
	.stabn  68,0,505,.LN309-Parser_ReadIn		# line 505, column 19
	cmpb	$125,-5(%ebp)
	jne	.Lab260
.Lab259:
.LN310:
	.stabn  68,0,507,.LN310-Parser_ReadIn		# line 507, column 22
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN311:
	.stabn  68,0,508,.LN311-Parser_ReadIn		# line 508, column 22
	pushl	AtomTable_s + 5064
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab261
.Lab262:
.LN312:
	.stabn  68,0,508,.LN312-Parser_ReadIn		# line 508, column 51
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab261:
	jmp	.Lab258
.Lab260:
.LN313:
	.stabn  68,0,510,.LN313-Parser_ReadIn		# line 510, column 22
	cmpb	$0,-8(%ebp)
	jne	.Lab263
.Lab264:
.LN314:
	.stabn  68,0,510,.LN314-Parser_ReadIn		# line 510, column 45
	pushl	$17
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN315:
	.stabn  68,0,510,.LN315-Parser_ReadIn		# line 510, column 67
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab263:
.LN316:
	.stabn  68,0,511,.LN316-Parser_ReadIn		# line 511, column 22
	pushl	$3
	call	Parser_ReadIn_Push
	addl	$4, %esp
.LN317:
	.stabn  68,0,512,.LN317-Parser_ReadIn		# line 512, column 22
	pushl	$1200
	pushl	$5
	call	Parser_ReadIn_EnterContext
	addl	$8, %esp
.Lab258:
	jmp	.Lab164
.Lab171:
.LN318:
	.stabn  68,0,516,.LN318-Parser_ReadIn		# line 516, column 19
	pushl	$9
	pushl	$32
	call	Parser_ReadIn_CheckDelim
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab265
.Lab266:
.LN319:
	.stabn  68,0,516,.LN319-Parser_ReadIn		# line 516, column 68
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab265:
.LN320:
	.stabn  68,0,517,.LN320-Parser_ReadIn		# line 517, column 21
	call	Parser_ReadIn_Pop
	pushl	%eax
	pushl	$1
	pushl	AtomTable_s + 5064
	call	Terms_MakeFunc
	addl	$12, %esp
	pushl	%eax
	call	Parser_ReadIn_ExitContext
	addl	$4, %esp
.LN321:
	.stabn  68,0,518,.LN321-Parser_ReadIn		# line 518, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab164
.Lab170:
.LN322:
	.stabn  68,0,521,.LN322-Parser_ReadIn		# line 521, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN323:
	.stabn  68,0,522,.LN323-Parser_ReadIn		# line 522, column 19
	cmpb	$46,-5(%ebp)
	jne	.Lab269
.Lab268:
.LN324:
	.stabn  68,0,524,.LN324-Parser_ReadIn		# line 524, column 22
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN325:
	.stabn  68,0,525,.LN325-Parser_ReadIn		# line 525, column 22
	cmpb	$46,-5(%ebp)
	je	.Lab270
.Lab271:
.LN326:
	.stabn  68,0,525,.LN326-Parser_ReadIn		# line 525, column 40
	pushl	$4
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN327:
	.stabn  68,0,525,.LN327-Parser_ReadIn		# line 525, column 62
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab270:
.LN328:
	.stabn  68,0,526,.LN328-Parser_ReadIn		# line 526, column 25
	movb	$124,-5(%ebp) 
	jmp	.Lab267
.Lab269:
.LN329:
	.stabn  68,0,528,.LN329-Parser_ReadIn		# line 528, column 22
	movzbl	-7(%ebp),%ebx
	movl	$35,%eax
	btl	%ebx,%eax
	jnc	.Lab274
.Lab273:
.LN330:
	.stabn  68,0,529,.LN330-Parser_ReadIn		# line 529, column 25
	pushl	AtomTable_s + 5008
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab275
.Lab276:
.LN331:
	.stabn  68,0,529,.LN331-Parser_ReadIn		# line 529, column 54
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab275:
	jmp	.Lab272
.Lab274:
.LN332:
	.stabn  68,0,531,.LN332-Parser_ReadIn		# line 531, column 25
	pushl	$6
	pushl	$12
	call	Parser_ReadIn_CheckDelim
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab277
.Lab278:
.LN333:
	.stabn  68,0,532,.LN333-Parser_ReadIn		# line 532, column 33
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab277:
.LN334:
	.stabn  68,0,534,.LN334-Parser_ReadIn		# line 534, column 34
	movb	$1,-8(%ebp) 
.LN335:
	.stabn  68,0,534,.LN335-Parser_ReadIn		# line 534, column 51
	movl	$999,-12(%ebp) 
.Lab272:
.Lab267:
	jmp	.Lab164
.Lab169:
.LN336:
	.stabn  68,0,539,.LN336-Parser_ReadIn		# line 539, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN337:
	.stabn  68,0,540,.LN337-Parser_ReadIn		# line 540, column 19
	pushl	AtomTable_s + 5020
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab279
.Lab280:
.LN338:
	.stabn  68,0,540,.LN338-Parser_ReadIn		# line 540, column 46
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab279:
	jmp	.Lab164
.Lab168:
.LN339:
	.stabn  68,0,543,.LN339-Parser_ReadIn		# line 543, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
.LN340:
	.stabn  68,0,544,.LN340-Parser_ReadIn		# line 544, column 19
	pushl	AtomTable_s + 5024
	call	Parser_ReadIn_StowAtom
	addl	$4, %esp
	cmpb	$1,%al
	je	.Lab281
.Lab282:
.LN341:
	.stabn  68,0,544,.LN341-Parser_ReadIn		# line 544, column 47
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab281:
	jmp	.Lab164
.Lab167:
.LN342:
	.stabn  68,0,547,.LN342-Parser_ReadIn		# line 547, column 19
	pushl	$10
	pushl	$8
	call	Parser_ReadIn_CheckDelim
	addl	$8, %esp
	cmpb	$1,%al
	je	.Lab283
.Lab284:
.LN343:
	.stabn  68,0,547,.LN343-Parser_ReadIn		# line 547, column 68
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.Lab283:
.LN344:
	.stabn  68,0,548,.LN344-Parser_ReadIn		# line 548, column 27
	movb	$4,-7(%ebp) 
.LN345:
	.stabn  68,0,549,.LN345-Parser_ReadIn		# line 549, column 28
	movb	$1,-8(%ebp) 
.LN346:
	.stabn  68,0,549,.LN346-Parser_ReadIn		# line 549, column 45
	movl	$999,-12(%ebp) 
.LN347:
	.stabn  68,0,550,.LN347-Parser_ReadIn		# line 550, column 19
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab164
.Lab166:
.LN348:
	.stabn  68,0,553,.LN348-Parser_ReadIn		# line 553, column 16
	leal	-5(%ebp),%eax
	pushl	%eax
	call	PFiles_GetChar
	addl	$4, %esp
	jmp	.Lab164
.Lab165:
.LN349:
	.stabn  68,0,556,.LN349-Parser_ReadIn		# line 556, column 16
	pushl	$23
	call	Parser_ReadIn_SyntaxError
	addl	$4, %esp
.LN350:
	.stabn  68,0,556,.LN350-Parser_ReadIn		# line 556, column 39
	movb	$0,%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	jmp	.Lab164
.Lab163:
	call	CaseErr_
.Lab164:
.Lab160:
.LN351:
	.stabn  68,0,559,.LN351-Parser_ReadIn		# line 559, column 18
	cmpb	$6,-7(%ebp)
	jne	.Lab158
.Lab159:
.LN352:
	.stabn  68,0,561,.LN352-Parser_ReadIn		# line 561, column 4
	movb	-17(%ebp),%al
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
.LN353:
	.stabn  68,0,562,.LN353-Parser_ReadIn		# line 562, column 0
	call	ReturnErr_
.LBE19:
	movl	-4(%ebp),%ecx
	movl	%ecx,DISPLAY_+0
	leave
	ret
	.Lab157 = 988
	.stabs "statestack:40=ar4;1;20;41=s8Shiprec:29,32,32;Scontext:35,0,8;;",128,0,160,-988
	.stabs "statetop:42=4",128,0,4,-828
	.stabs "stack:43=ar4;1;100;44=s8dumch:2,8,8;aval:22,32,32;tval:19,32,32;tag:39,0,8;;",128,0,800,-824
	.stabs "top:45=4",128,0,4,-24
	.stabs "result:1",128,0,1,-17
	.stabs "loprec:29",128,0,4,-16
	.stabs "hiprec:29",128,0,4,-12
	.stabs "expected:46=erandX:1,opX:0,;",128,0,1,-8
	.stabs "randX:c=i1",128,0,0,0
	.stabs "opX:c=i0",128,0,0,0
	.stabs "context:35",128,0,1,-7
	.stabs "lastch:2",128,0,1,-6
	.stabs "ch:2",128,0,1,-5
	.stabs "markL:c=i3",128,0,0,0
	.stabs "funcL:c=i2",128,0,0,0
	.stabs "opL:c=i1",128,0,0,0
	.stabs "termL:c=i0",128,0,0,0
	.stabs "finalK:c=i6",128,0,0,0
	.stabs "curlyK:c=i5",128,0,0,0
	.stabs "endlistK:c=i4",128,0,0,0
	.stabs "listK:c=i3",128,0,0,0
	.stabs "funcK:c=i2",128,0,0,0
	.stabs "innerK:c=i1",128,0,0,0
	.stabs "outerK:c=i0",128,0,0,0
	.stabs "vtable:v19",160,0,4,12
	.stabs "termread:v19",160,0,4,8
	.stabn 192,0,0,.LBB19-Parser_ReadIn
	.stabn 224,0,0,.LBE19-Parser_ReadIn
	.stabs "Parser_Rprec:F29",36,0,0,Parser_Rprec
	.align 4
Parser_Rprec:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab285, %esp
.LN354:
	.stabn  68,0,30,.LN354-Parser_Rprec		# line 30, column 1
.LBB20:
.LN355:
	.stabn  68,0,31,.LN355-Parser_Rprec		# line 31, column 4
	movl	8(%ebp),%eax
	movl	20(%eax),%ecx
	movl	8(%ebp),%eax
	movzbl	16(%eax),%ebx
	movl	$81,%eax
	btl	%ebx,%eax
	setb	%al
	movzbl	%al,%eax
 	subl	%eax,%ecx 
 	movl	%ecx, %eax
	cmpl	$1200,%eax
	jbe	.Lab286
.Lab287:
   	call	BoundErr_		
.Lab286:
	leave
	ret
.LN356:
	.stabn  68,0,32,.LN356-Parser_Rprec		# line 32, column 0
	call	ReturnErr_
.LBE20:
	leave
	ret
	.Lab285 = 4
	.stabs "a:p22",160,0,4,8
	.stabn 192,0,0,.LBB20-Parser_Rprec
	.stabn 224,0,0,.LBE20-Parser_Rprec
	.stabs "Parser_Lprec:F29",36,0,0,Parser_Lprec
	.align 4
Parser_Lprec:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab288, %esp
.LN357:
	.stabn  68,0,24,.LN357-Parser_Lprec		# line 24, column 1
.LBB21:
.LN358:
	.stabn  68,0,25,.LN358-Parser_Lprec		# line 25, column 4
	movl	8(%ebp),%eax
	movl	20(%eax),%ecx
	movl	8(%ebp),%eax
	movzbl	16(%eax),%ebx
	movl	$52,%eax
	btl	%ebx,%eax
	setb	%al
	movzbl	%al,%eax
 	subl	%eax,%ecx 
 	movl	%ecx, %eax
	cmpl	$1200,%eax
	jbe	.Lab289
.Lab290:
   	call	BoundErr_		
.Lab289:
	leave
	ret
.LN359:
	.stabn  68,0,26,.LN359-Parser_Lprec		# line 26, column 0
	call	ReturnErr_
.LBE21:
	leave
	ret
	.Lab288 = 4
	.stabs "a:p22",160,0,4,8
	.stabn 192,0,0,.LBB21-Parser_Lprec
	.stabn 224,0,0,.LBE21-Parser_Lprec
	.stabs "Parser:F16",36,0,0,Parser
	.align 4
Parser:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab291, %esp
.LN360:
	.stabn  68,0,611,.LN360-Parser		# line 611, column 1
.LBB22:
.LN361:
	.stabn  68,0,612,.LN361-Parser		# line 612, column 3
	call	Parser_InitRead
.LN362:
	.stabn  68,0,613,.LN362-Parser		# line 613, column 0
.LBE22:
	leave
	ret
	.Lab291 = 4
	.stabs "cset:t47=4",128,0,0,0
	.stabs "opset:t48=4",128,0,0,0
	.stabs "ReadDepth:c=i20",128,0,0,0
	.stabs "ReadSize:c=i100",128,0,0,0
	.stabs "ordminchar:c=i0",128,0,0,0
	.stabs "ordmaxchar:c=i127",128,0,0,0
	.stabn 192,0,0,.LBB22-Parser
	.stabn 224,0,0,.LBE22-Parser
