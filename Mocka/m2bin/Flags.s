	.comm Flags_s, 40
	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "Flags.mod",100,0,0,.LBB0
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
	.globl	Flags
	.globl	Flags_InitFlags
	.stabs "Flags_InitFlags:F16",36,0,0,Flags_InitFlags
	.align 4
Flags_InitFlags:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,8,.LN1-Flags_InitFlags		# line 8, column 1
.LBB1:
.LN2:
	.stabn  68,0,9,.LN2-Flags_InitFlags		# line 9, column 4
	movl	$1,-8(%ebp) 
.Lab2:
.LN3:
	.stabn  68,0,9,.LN3-Flags_InitFlags		# line 9, column 38
	movl	-8(%ebp),%eax
	.data
	.align 4
.Lab4:
	.long	1,10
	.text
	boundl	%eax,.Lab4
	movl	$0,Flags_s - 4(,%eax,4) 
.LN4:
	.stabn  68,0,9,.LN4-Flags_InitFlags		# line 9, column 4
	cmpl	$10,-8(%ebp)
	jge	.Lab3
	incl	-8(%ebp) 
	jmp	.Lab2
.Lab3:
.LN5:
	.stabn  68,0,10,.LN5-Flags_InitFlags		# line 10, column 0
.LBE1:
	leave
	ret
	.Lab1 = 8
	.stabs "i:7",128,0,4,-8
	.stabn 192,0,0,.LBB1-Flags_InitFlags
	.stabn 224,0,0,.LBE1-Flags_InitFlags
	.stabs "Flags:F16",36,0,0,Flags
	.align 4
Flags:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab5, %esp
.LN6:
	.stabn  68,0,13,.LN6-Flags		# line 13, column 1
.LBB2:
.LN7:
	.stabn  68,0,14,.LN7-Flags		# line 14, column 0
.LBE2:
	leave
	ret
	.Lab5 = 4
	.stabs "MaxDepth:c=i200",128,0,0,0
	.stabs "SubPrec:c=i999",128,0,0,0
	.stabs "FlagSize:c=i10",128,0,0,0
	.stabs "sysmode:c=i1",128,0,0,0
	.stabs "breaklevel:c=i2",128,0,0,0
	.stabs "tracing:c=i3",128,0,0,0
	.stabs "debugging:c=i4",128,0,0,0
	.stabn 192,0,0,.LBB2-Flags
	.stabn 224,0,0,.LBE2-Flags
	.stabs "Flags_s:Gs40flag:17=ar4;1;10;7,0,320;;",32,0,0,0
