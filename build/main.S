
build/main:     file format elf64-x86-64


Disassembly of section .text:

0000000000001000 <main>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    rsp,0x8
    1008:	48 8d 3d f1 0f 00 00 	lea    rdi,[rip+0xff1]        # 2000 <_Z10write_linePKc+0xf00>
    100f:	e8 ec 00 00 00       	call   1100 <_Z10write_linePKc>
    1014:	b8 01 00 00 00       	mov    eax,0x1
    1019:	48 83 c4 08          	add    rsp,0x8
    101d:	c3                   	ret    

000000000000101e <_start>:
    101e:	31 ed                	xor    ebp,ebp
    1020:	8b 3c 24             	mov    edi,DWORD PTR [rsp]
    1023:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
    1028:	48 8d 54 fc 10       	lea    rdx,[rsp+rdi*8+0x10]
    102d:	31 c0                	xor    eax,eax
    102f:	e8 cc ff ff ff       	call   1000 <main>
    1034:	48 89 c7             	mov    rdi,rax
    1037:	48 c7 c0 3c 00 00 00 	mov    rax,0x3c
    103e:	0f 05                	syscall 
    1040:	c3                   	ret    

0000000000001041 <syscall>:
    1041:	48 89 f8             	mov    rax,rdi
    1044:	48 89 f7             	mov    rdi,rsi
    1047:	48 89 d6             	mov    rsi,rdx
    104a:	48 89 ca             	mov    rdx,rcx
    104d:	4d 89 c2             	mov    r10,r8
    1050:	4d 89 c8             	mov    r8,r9
    1053:	0f 05                	syscall 
    1055:	c3                   	ret    
    1056:	66 2e 0f 1f 84 00 00 	cs nop WORD PTR [rax+rax*1+0x0]
    105d:	00 00 00 

0000000000001060 <_Z8cptr_lenPKc>:
    1060:	f3 0f 1e fa          	endbr64 
    1064:	31 c0                	xor    eax,eax
    1066:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    1069:	74 15                	je     1080 <_Z8cptr_lenPKc+0x20>
    106b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1070:	48 83 c0 01          	add    rax,0x1
    1074:	80 3c 07 00          	cmp    BYTE PTR [rdi+rax*1],0x0
    1078:	75 f6                	jne    1070 <_Z8cptr_lenPKc+0x10>
    107a:	c3                   	ret    
    107b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    1080:	c3                   	ret    
    1081:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    1088:	00 00 00 00 
    108c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000001090 <_Z7OS_exiti>:
    1090:	f3 0f 1e fa          	endbr64 
    1094:	53                   	push   rbx
    1095:	48 63 df             	movsxd rbx,edi
    1098:	45 31 c9             	xor    r9d,r9d
    109b:	45 31 c0             	xor    r8d,r8d
    109e:	31 c9                	xor    ecx,ecx
    10a0:	31 d2                	xor    edx,edx
    10a2:	48 89 de             	mov    rsi,rbx
    10a5:	bf e7 00 00 00       	mov    edi,0xe7
    10aa:	31 c0                	xor    eax,eax
    10ac:	e8 90 ff ff ff       	call   1041 <syscall>
    10b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    10b8:	45 31 c9             	xor    r9d,r9d
    10bb:	45 31 c0             	xor    r8d,r8d
    10be:	31 c9                	xor    ecx,ecx
    10c0:	31 d2                	xor    edx,edx
    10c2:	48 89 de             	mov    rsi,rbx
    10c5:	bf 3c 00 00 00       	mov    edi,0x3c
    10ca:	31 c0                	xor    eax,eax
    10cc:	e8 70 ff ff ff       	call   1041 <syscall>
    10d1:	eb e5                	jmp    10b8 <_Z7OS_exiti+0x28>
    10d3:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
    10da:	00 00 00 00 
    10de:	66 90                	xchg   ax,ax

00000000000010e0 <_Z8OS_writexPKcy>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	48 89 d1             	mov    rcx,rdx
    10e7:	45 31 c9             	xor    r9d,r9d
    10ea:	48 89 f2             	mov    rdx,rsi
    10ed:	45 31 c0             	xor    r8d,r8d
    10f0:	48 89 fe             	mov    rsi,rdi
    10f3:	31 c0                	xor    eax,eax
    10f5:	bf 01 00 00 00       	mov    edi,0x1
    10fa:	e9 42 ff ff ff       	jmp    1041 <syscall>
    10ff:	90                   	nop

0000000000001100 <_Z10write_linePKc>:
    1100:	f3 0f 1e fa          	endbr64 
    1104:	48 83 ec 08          	sub    rsp,0x8
    1108:	31 c9                	xor    ecx,ecx
    110a:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    110d:	48 89 fa             	mov    rdx,rdi
    1110:	74 10                	je     1122 <_Z10write_linePKc+0x22>
    1112:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    1118:	48 83 c1 01          	add    rcx,0x1
    111c:	80 3c 0a 00          	cmp    BYTE PTR [rdx+rcx*1],0x0
    1120:	75 f6                	jne    1118 <_Z10write_linePKc+0x18>
    1122:	45 31 c9             	xor    r9d,r9d
    1125:	45 31 c0             	xor    r8d,r8d
    1128:	31 c0                	xor    eax,eax
    112a:	be 01 00 00 00       	mov    esi,0x1
    112f:	bf 01 00 00 00       	mov    edi,0x1
    1134:	e8 08 ff ff ff       	call   1041 <syscall>
    1139:	48 85 c0             	test   rax,rax
    113c:	74 05                	je     1143 <_Z10write_linePKc+0x43>
    113e:	48 83 c4 08          	add    rsp,0x8
    1142:	c3                   	ret    
    1143:	bf 01 00 00 00       	mov    edi,0x1
    1148:	e8 43 ff ff ff       	call   1090 <_Z7OS_exiti>
