	.comm OpSystem_s, 56
	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "OpSystem.mod",100,0,0,.LBB0
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
	.globl	Clock_SystemTime
	.globl	Clock_UserTime
	.globl	Clock_ResetClock
	.globl	BasicIO_Accessible
	.globl	BasicIO_Write
	.globl	BasicIO_Read
	.globl	BasicIO_Erase
	.globl	BasicIO_Close
	.globl	BasicIO_OpenOutput
	.globl	BasicIO_OpenInput
	.globl	OpSystem
	.globl	OpSystem_InitFlags
	.globl	OpSystem_ReadOneTerminalLine
	.globl	OpSystem_Time
	.globl	OpSystem_GetTime
	.stabs "OpSystem_InitFlags:F16",36,0,0,OpSystem_InitFlags
	.align 4
OpSystem_InitFlags:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,75,.LN1-OpSystem_InitFlags		# line 75, column 1
.LBB1:
.LN2:
	.stabn  68,0,76,.LN2-OpSystem_InitFlags		# line 76, column 4
	movl	$1,-8(%ebp) 
.Lab2:
.LN3:
	.stabn  68,0,76,.LN3-OpSystem_InitFlags		# line 76, column 38
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab4:
	.long	1,10
	.text
	boundl	%eax,.Lab4
	movl	$0,OpSystem_s - 4(,%eax,4) 
.LN4:
	.stabn  68,0,76,.LN4-OpSystem_InitFlags		# line 76, column 4
	cmpl	$10,-8(%ebp)
	jge	.Lab3
	incl	-8(%ebp) 
	jmp	.Lab2
.Lab3:
.LN5:
	.stabn  68,0,77,.LN5-OpSystem_InitFlags		# line 77, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
	.stabs "i:7",128,0,4,-8
	.stabn 192,0,0,.LBB1-OpSystem_InitFlags
	.stabn 224,0,0,.LBE1-OpSystem_InitFlags
	.stabs "OpSystem_ReadOneTerminalLine:F16",36,0,0,OpSystem_ReadOneTerminalLine
	.align 4
OpSystem_ReadOneTerminalLine:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab5, %esp
.LN6:
	.stabn  68,0,53,.LN6-OpSystem_ReadOneTerminalLine		# line 53, column 1
.LBB2:
.LN7:
	.stabn  68,0,54,.LN7-OpSystem_ReadOneTerminalLine		# line 54, column 4
	movl	$0,-8(%ebp) 
.Lab6:
.LN8:
	.stabn  68,0,56,.LN8-OpSystem_ReadOneTerminalLine		# line 56, column 5
.LN9:
	.stabn  68,0,57,.LN9-OpSystem_ReadOneTerminalLine		# line 57, column 5
	cmpb	$8,-9(%ebp)
	je	.Lab11
.Lab12:
	cmpb	$127,-9(%ebp)
	jne	.Lab10
.Lab11:
	cmpl	$0,-8(%ebp)
	jbe	.Lab10
.Lab9:
.LN10:
	.stabn  68,0,58,.LN10-OpSystem_ReadOneTerminalLine		# line 58, column 7
.LN11:
	.stabn  68,0,59,.LN11-OpSystem_ReadOneTerminalLine		# line 59, column 7
.LN12:
	.stabn  68,0,60,.LN12-OpSystem_ReadOneTerminalLine		# line 60, column 7
.LN13:
	.stabn  68,0,61,.LN13-OpSystem_ReadOneTerminalLine		# line 61, column 7
	decl	-8(%ebp) 
	jmp	.Lab8
.Lab10:
.LN14:
	.stabn  68,0,62,.LN14-OpSystem_ReadOneTerminalLine		# line 62, column 5
	cmpb	$13,-9(%ebp)
	je	.Lab13
.Lab15:
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	jae	.Lab13
.Lab14:
.LN15:
	.stabn  68,0,63,.LN15-OpSystem_ReadOneTerminalLine		# line 63, column 7
.LN16:
	.stabn  68,0,64,.LN16-OpSystem_ReadOneTerminalLine		# line 64, column 14
	movl	-8(%ebp),%ebx
	cmpl	$0,%ebx
	jb	.Lab17
	cmpl	12(%ebp),%ebx
	jbe	.Lab16
.Lab17:
   	call	BoundErr_		
.Lab16:
 	addl	8(%ebp),%ebx 
	movb	-9(%ebp),%al
	movb	%al,(%ebx) 
.LN17:
	.stabn  68,0,65,.LN17-OpSystem_ReadOneTerminalLine		# line 65, column 7
	incl	-8(%ebp) 
.Lab13:
.Lab8:
.LN18:
	.stabn  68,0,67,.LN18-OpSystem_ReadOneTerminalLine		# line 67, column 16
	cmpb	$13,-9(%ebp)
	je	.Lab7
.Lab18:
	movl	-8(%ebp),%eax
	cmpl	12(%ebp),%eax
	jne	.Lab6
.Lab7:
.LN19:
	.stabn  68,0,68,.LN19-OpSystem_ReadOneTerminalLine		# line 68, column 10
	movl	-8(%ebp),%eax
	cmpl	$0,%eax
	jb	.Lab20
	cmpl	12(%ebp),%eax
	jbe	.Lab19
.Lab20:
   	call	BoundErr_		
.Lab19:
 	addl	8(%ebp),%eax 
	movb	$0,(%eax) 
.LN20:
	.stabn  68,0,69,.LN20-OpSystem_ReadOneTerminalLine		# line 69, column 0
.LBE2:
	leave
	ret
	.Lab5 = 12
	.stabs "c:2",128,0,1,-9
	.stabs "i:4",128,0,4,-8
	.stabs "DEL:c=i127",128,0,0,0
	.stabs "CR:c=i13",128,0,0,0
	.stabs "BS:c=i8",128,0,0,0
	.stabs "EOL:c=i0",128,0,0,0
	.stabs "Line:p17=s8start:*2,0,32;high:5,32,32;;",160,0,8,8
	.stabn 192,0,0,.LBB2-OpSystem_ReadOneTerminalLine
	.stabn 224,0,0,.LBE2-OpSystem_ReadOneTerminalLine
	.stabs "OpSystem_Time:F4",36,0,0,OpSystem_Time
	.align 4
OpSystem_Time:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab21, %esp
.LN21:
	.stabn  68,0,31,.LN21-OpSystem_Time		# line 31, column 1
.LBB3:
.LN22:
	.stabn  68,0,33,.LN22-OpSystem_Time		# line 33, column 6
	movl	$1210,OpSystem_s + 48 
.LN23:
	.stabn  68,0,35,.LN23-OpSystem_Time		# line 35, column 3
.LN24:
	.stabn  68,0,37,.LN24-OpSystem_Time		# line 37, column 3
	movl	OpSystem_s + 44,%eax
	leal	(%eax,%eax,4),%eax
	leave
	ret
.LN25:
	.stabn  68,0,38,.LN25-OpSystem_Time		# line 38, column 0
	call	ReturnErr_
.LBE3:
	leave
	ret
	.Lab21 = 4
	.stabn 192,0,0,.LBB3-OpSystem_Time
	.stabn 224,0,0,.LBE3-OpSystem_Time
	.stabs "OpSystem_GetTime:F16",36,0,0,OpSystem_GetTime
	.align 4
OpSystem_GetTime:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab22, %esp
.LN26:
	.stabn  68,0,26,.LN26-OpSystem_GetTime		# line 26, column 1
.LBB4:
.LN27:
	.stabn  68,0,27,.LN27-OpSystem_GetTime		# line 27, column 14
	movl	OpSystem_s + 48,%eax
	movl	(%eax),%eax
	movl	%eax,OpSystem_s + 44 
.LN28:
	.stabn  68,0,28,.LN28-OpSystem_GetTime		# line 28, column 0
.LBE4:
	leave
	ret
	.Lab22 = 4
	.stabn 192,0,0,.LBB4-OpSystem_GetTime
	.stabn 224,0,0,.LBE4-OpSystem_GetTime
	.stabs "OpSystem:F16",36,0,0,OpSystem
	.align 4
OpSystem:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab23, %esp
.LN29:
	.stabn  68,0,80,.LN29-OpSystem		# line 80, column 1
.LBB5:
.LN30:
	.stabn  68,0,81,.LN30-OpSystem		# line 81, column 3
	call	OpSystem_InitFlags
.LN31:
	.stabn  68,0,82,.LN31-OpSystem		# line 82, column 11
	movb	$0,OpSystem_s + 40 
.LN32:
	.stabn  68,0,83,.LN32-OpSystem		# line 83, column 13
	movl	$0,OpSystem_s + 44 
.LN33:
	.stabn  68,0,84,.LN33-OpSystem		# line 84, column 0
.LBE5:
	leave
	ret
	.Lab23 = 4
	.stabs "ProcPointer:t18=12",128,0,0,0
	.stabs "WordPointer:t19=*4",128,0,0,0
	.stabs "SystemTimer:c=i1210",128,0,0,0
	.stabs "MaxDepth:c=i200",128,0,0,0
	.stabs "SubPrec:c=i999",128,0,0,0
	.stabs "FlagSize:c=i10",128,0,0,0
	.stabs "sysmode:c=i1",128,0,0,0
	.stabs "breaklevel:c=i2",128,0,0,0
	.stabs "tracing:c=i3",128,0,0,0
	.stabs "debugging:c=i4",128,0,0,0
	.stabn 192,0,0,.LBB5-OpSystem
	.stabn 224,0,0,.LBE5-OpSystem
	.stabs "OpSystem_s:Gs56PPtr:18,416,32;Ptr:19,384,32;TimerValue:4,352,32;flag:20=ar4;1;10;7,0,320;showterm:1,320,8;;",32,0,0,0
