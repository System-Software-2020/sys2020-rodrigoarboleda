
foo.o:     file format elf32-i386


Disassembly of section .text:

00000000 <foo>:
   0:	55                   	push   ebp
   1:	89 e5                	mov    ebp,esp
   3:	83 c4 08             	add    esp,0x8
   6:	58                   	pop    eax
   7:	5b                   	pop    ebx
   8:	01 d8                	add    eax,ebx
   a:	89 ec                	mov    esp,ebp
   c:	5d                   	pop    ebp
   d:	c3                   	ret    
