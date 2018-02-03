	.text
	.stabs "/home/gunter/GM_LANGUAGES/LOGIC_BASED_Languages/PROLOG_SYSTEMS/TProlog/Mocka/",100,0,0,.LBB0
	.stabs "WAM.mod",100,0,0,.LBB0
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
	.globl	WAM
	.stabs "WAM:F16",36,0,0,WAM
	.align 4
WAM:
	pushl	%ebp
	movl	%esp,%ebp
	subl	$.Lab1, %esp
.LN1:
	.stabn  68,0,5,.LN1-WAM		# line 5, column 1
.LBB1:
.LN2:
	.stabn  68,0,6,.LN2-WAM		# line 6, column 0
.LBE1:
	leave
	ret
	.Lab1 = 4
	.stabs "PutCons:c=i24",128,0,0,0
	.stabs "PutStru:c=i23",128,0,0,0
	.stabs "PutValueY:c=i22",128,0,0,0
	.stabs "PutValueX:c=i21",128,0,0,0
	.stabs "PutVarY:c=i20",128,0,0,0
	.stabs "PutVarX:c=i19",128,0,0,0
	.stabs "UnifyCons:c=i18",128,0,0,0
	.stabs "UnifyValueY:c=i17",128,0,0,0
	.stabs "UnifyValueX:c=i16",128,0,0,0
	.stabs "UnifyVarY:c=i15",128,0,0,0
	.stabs "UnifyVarX:c=i14",128,0,0,0
	.stabs "GetCons:c=i13",128,0,0,0
	.stabs "GetStru:c=i12",128,0,0,0
	.stabs "GetValueY:c=i11",128,0,0,0
	.stabs "GetValueX:c=i10",128,0,0,0
	.stabs "GetVarY:c=i9",128,0,0,0
	.stabs "GetVarX:c=i8",128,0,0,0
	.stabs "Deallocate:c=i7",128,0,0,0
	.stabs "Allocate:c=i6",128,0,0,0
	.stabs "Proceed:c=i5",128,0,0,0
	.stabs "Execute:c=i4",128,0,0,0
	.stabs "Call:c=i3",128,0,0,0
	.stabs "TrustMeElseFail:c=i2",128,0,0,0
	.stabs "RetryMeElse:c=i1",128,0,0,0
	.stabs "TryMeElse:c=i0",128,0,0,0
	.stabs "WAMInstruction:t17=ePutCons:24,PutStru:23,PutValueY:22,PutValueX:21,PutVarY:20,PutVarX:19,UnifyCons:18,UnifyValueY:17,UnifyValueX:16,UnifyVarY:15,UnifyVarX:14,GetCons:13,GetStru:12,GetValueY:11,GetValueX:10,GetVarY:9,GetVarX:8,Deallocate:7,Allocate:6,Proceed:5,Execute:4,Call:3,TrustMeElseFail:2,RetryMeElse:1,TryMeElse:0,;",128,0,0,0
	.stabn 192,0,0,.LBB1-WAM
	.stabn 224,0,0,.LBE1-WAM
