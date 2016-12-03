; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.21022.08 

	TITLE	y:\asl\software\video_compressor\vid_reader\zlib\zlib-1.2.3\adler32.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	_adler32@12
; Function compile flags: /Odtp /ZI
; File y:\asl\software\video_compressor\vid_reader\zlib\zlib-1.2.3\adler32.c
;	COMDAT _adler32@12
_TEXT	SEGMENT
_n$ = -8						; size = 4
_sum2$ = -4						; size = 4
_adler$ = 8						; size = 4
_buf$ = 12						; size = 4
_len$ = 16						; size = 4
_adler32@12 PROC					; COMDAT

; 61   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi

; 62   :     unsigned long sum2;
; 63   :     unsigned n;
; 64   : 
; 65   :     /* split Adler-32 into component sums */
; 66   :     sum2 = (adler >> 16) & 0xffff;

	mov	eax, DWORD PTR _adler$[ebp]
	shr	eax, 16					; 00000010H
	and	eax, 65535				; 0000ffffH
	mov	DWORD PTR _sum2$[ebp], eax

; 67   :     adler &= 0xffff;

	mov	eax, DWORD PTR _adler$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	DWORD PTR _adler$[ebp], eax

; 68   : 
; 69   :     /* in case user likes doing a byte at a time, keep it fast */
; 70   :     if (len == 1) {

	cmp	DWORD PTR _len$[ebp], 1
	jne	SHORT $LN18@adler32

; 71   :         adler += buf[0];

	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx

; 72   :         if (adler >= BASE)

	cmp	DWORD PTR _adler$[ebp], 65521		; 0000fff1H
	jb	SHORT $LN17@adler32

; 73   :             adler -= BASE;

	mov	eax, DWORD PTR _adler$[ebp]
	sub	eax, 65521				; 0000fff1H
	mov	DWORD PTR _adler$[ebp], eax
$LN17@adler32:

; 74   :         sum2 += adler;

	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax

; 75   :         if (sum2 >= BASE)

	cmp	DWORD PTR _sum2$[ebp], 65521		; 0000fff1H
	jb	SHORT $LN16@adler32

; 76   :             sum2 -= BASE;

	mov	eax, DWORD PTR _sum2$[ebp]
	sub	eax, 65521				; 0000fff1H
	mov	DWORD PTR _sum2$[ebp], eax
$LN16@adler32:

; 77   :         return adler | (sum2 << 16);

	mov	eax, DWORD PTR _sum2$[ebp]
	shl	eax, 16					; 00000010H
	or	eax, DWORD PTR _adler$[ebp]
	jmp	$LN19@adler32
$LN18@adler32:

; 78   :     }
; 79   : 
; 80   :     /* initial Adler-32 value (deferred check for len == 1 speed) */
; 81   :     if (buf == Z_NULL)

	cmp	DWORD PTR _buf$[ebp], 0
	jne	SHORT $LN15@adler32

; 82   :         return 1L;

	mov	eax, 1
	jmp	$LN19@adler32
$LN15@adler32:

; 83   : 
; 84   :     /* in case short lengths are provided, keep it somewhat fast */
; 85   :     if (len < 16) {

	cmp	DWORD PTR _len$[ebp], 16		; 00000010H
	jae	SHORT $LN10@adler32
$LN13@adler32:

; 86   :         while (len--) {

	mov	eax, DWORD PTR _len$[ebp]
	mov	ecx, DWORD PTR _len$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _len$[ebp], ecx
	test	eax, eax
	je	SHORT $LN12@adler32

; 87   :             adler += *buf++;

	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	edx, DWORD PTR _buf$[ebp]
	add	edx, 1
	mov	DWORD PTR _buf$[ebp], edx

; 88   :             sum2 += adler;

	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax

; 89   :         }

	jmp	SHORT $LN13@adler32
$LN12@adler32:

; 90   :         if (adler >= BASE)

	cmp	DWORD PTR _adler$[ebp], 65521		; 0000fff1H
	jb	SHORT $LN11@adler32

; 91   :             adler -= BASE;

	mov	eax, DWORD PTR _adler$[ebp]
	sub	eax, 65521				; 0000fff1H
	mov	DWORD PTR _adler$[ebp], eax
$LN11@adler32:

; 92   :         MOD4(sum2);             /* only added so many BASE's */

	mov	eax, DWORD PTR _sum2$[ebp]
	xor	edx, edx
	mov	ecx, 65521				; 0000fff1H
	div	ecx
	mov	DWORD PTR _sum2$[ebp], edx

; 93   :         return adler | (sum2 << 16);

	mov	eax, DWORD PTR _sum2$[ebp]
	shl	eax, 16					; 00000010H
	or	eax, DWORD PTR _adler$[ebp]
	jmp	$LN19@adler32
$LN10@adler32:

; 94   :     }
; 95   : 
; 96   :     /* do length NMAX blocks -- requires just one modulo operation */
; 97   :     while (len >= NMAX) {

	cmp	DWORD PTR _len$[ebp], 5552		; 000015b0H
	jb	$LN9@adler32

; 98   :         len -= NMAX;

	mov	eax, DWORD PTR _len$[ebp]
	sub	eax, 5552				; 000015b0H
	mov	DWORD PTR _len$[ebp], eax

; 99   :         n = NMAX / 16;          /* NMAX is divisible by 16 */

	mov	DWORD PTR _n$[ebp], 347			; 0000015bH
$LN8@adler32:

; 100  :         do {
; 101  :             DO16(buf);          /* 16 sums unrolled */

	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+1]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+2]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+3]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+4]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+5]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+6]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+7]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+8]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+9]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+10]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+11]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+12]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+13]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+14]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+15]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax

; 102  :             buf += 16;

	mov	eax, DWORD PTR _buf$[ebp]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _buf$[ebp], eax

; 103  :         } while (--n);

	mov	eax, DWORD PTR _n$[ebp]
	sub	eax, 1
	mov	DWORD PTR _n$[ebp], eax
	jne	$LN8@adler32

; 104  :         MOD(adler);

	mov	eax, DWORD PTR _adler$[ebp]
	xor	edx, edx
	mov	ecx, 65521				; 0000fff1H
	div	ecx
	mov	DWORD PTR _adler$[ebp], edx

; 105  :         MOD(sum2);

	mov	eax, DWORD PTR _sum2$[ebp]
	xor	edx, edx
	mov	ecx, 65521				; 0000fff1H
	div	ecx
	mov	DWORD PTR _sum2$[ebp], edx

; 106  :     }

	jmp	$LN10@adler32
$LN9@adler32:

; 107  : 
; 108  :     /* do remaining bytes (less than NMAX, still just one modulo) */
; 109  :     if (len) {                  /* avoid modulos if none remaining */

	cmp	DWORD PTR _len$[ebp], 0
	je	$LN5@adler32
$LN4@adler32:

; 110  :         while (len >= 16) {

	cmp	DWORD PTR _len$[ebp], 16		; 00000010H
	jb	$LN2@adler32

; 111  :             len -= 16;

	mov	eax, DWORD PTR _len$[ebp]
	sub	eax, 16					; 00000010H
	mov	DWORD PTR _len$[ebp], eax

; 112  :             DO16(buf);

	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+1]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+2]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+3]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+4]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+5]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+6]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+7]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+8]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+9]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+10]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+11]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+12]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+13]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+14]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax
	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax+15]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax

; 113  :             buf += 16;

	mov	eax, DWORD PTR _buf$[ebp]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _buf$[ebp], eax

; 114  :         }

	jmp	$LN4@adler32
$LN2@adler32:

; 115  :         while (len--) {

	mov	eax, DWORD PTR _len$[ebp]
	mov	ecx, DWORD PTR _len$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _len$[ebp], ecx
	test	eax, eax
	je	SHORT $LN1@adler32

; 116  :             adler += *buf++;

	mov	eax, DWORD PTR _buf$[ebp]
	movzx	ecx, BYTE PTR [eax]
	add	ecx, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _adler$[ebp], ecx
	mov	edx, DWORD PTR _buf$[ebp]
	add	edx, 1
	mov	DWORD PTR _buf$[ebp], edx

; 117  :             sum2 += adler;

	mov	eax, DWORD PTR _sum2$[ebp]
	add	eax, DWORD PTR _adler$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax

; 118  :         }

	jmp	SHORT $LN2@adler32
$LN1@adler32:

; 119  :         MOD(adler);

	mov	eax, DWORD PTR _adler$[ebp]
	xor	edx, edx
	mov	ecx, 65521				; 0000fff1H
	div	ecx
	mov	DWORD PTR _adler$[ebp], edx

; 120  :         MOD(sum2);

	mov	eax, DWORD PTR _sum2$[ebp]
	xor	edx, edx
	mov	ecx, 65521				; 0000fff1H
	div	ecx
	mov	DWORD PTR _sum2$[ebp], edx
$LN5@adler32:

; 121  :     }
; 122  : 
; 123  :     /* return recombined sums */
; 124  :     return adler | (sum2 << 16);

	mov	eax, DWORD PTR _sum2$[ebp]
	shl	eax, 16					; 00000010H
	or	eax, DWORD PTR _adler$[ebp]
$LN19@adler32:

; 125  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_adler32@12 ENDP
_TEXT	ENDS
PUBLIC	_adler32_combine@12
; Function compile flags: /Odtp /ZI
;	COMDAT _adler32_combine@12
_TEXT	SEGMENT
_rem$ = -12						; size = 4
_sum2$ = -8						; size = 4
_sum1$ = -4						; size = 4
_adler1$ = 8						; size = 4
_adler2$ = 12						; size = 4
_len2$ = 16						; size = 4
_adler32_combine@12 PROC				; COMDAT

; 132  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 76					; 0000004cH
	push	ebx
	push	esi
	push	edi

; 133  :     unsigned long sum1;
; 134  :     unsigned long sum2;
; 135  :     unsigned rem;
; 136  : 
; 137  :     /* the derivation of this formula is left as an exercise for the reader */
; 138  :     rem = (unsigned)(len2 % BASE);

	mov	eax, DWORD PTR _len2$[ebp]
	xor	edx, edx
	mov	ecx, 65521				; 0000fff1H
	div	ecx
	mov	DWORD PTR _rem$[ebp], edx

; 139  :     sum1 = adler1 & 0xffff;

	mov	eax, DWORD PTR _adler1$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	DWORD PTR _sum1$[ebp], eax

; 140  :     sum2 = rem * sum1;

	mov	eax, DWORD PTR _rem$[ebp]
	imul	eax, DWORD PTR _sum1$[ebp]
	mov	DWORD PTR _sum2$[ebp], eax

; 141  :     MOD(sum2);

	mov	eax, DWORD PTR _sum2$[ebp]
	xor	edx, edx
	mov	ecx, 65521				; 0000fff1H
	div	ecx
	mov	DWORD PTR _sum2$[ebp], edx

; 142  :     sum1 += (adler2 & 0xffff) + BASE - 1;

	mov	eax, DWORD PTR _adler2$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _sum1$[ebp]
	lea	edx, DWORD PTR [ecx+eax+65520]
	mov	DWORD PTR _sum1$[ebp], edx

; 143  :     sum2 += ((adler1 >> 16) & 0xffff) + ((adler2 >> 16) & 0xffff) + BASE - rem;

	mov	eax, DWORD PTR _adler1$[ebp]
	shr	eax, 16					; 00000010H
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _adler2$[ebp]
	shr	ecx, 16					; 00000010H
	and	ecx, 65535				; 0000ffffH
	lea	edx, DWORD PTR [eax+ecx+65521]
	sub	edx, DWORD PTR _rem$[ebp]
	add	edx, DWORD PTR _sum2$[ebp]
	mov	DWORD PTR _sum2$[ebp], edx

; 144  :     if (sum1 > BASE) sum1 -= BASE;

	cmp	DWORD PTR _sum1$[ebp], 65521		; 0000fff1H
	jbe	SHORT $LN4@adler32_co
	mov	eax, DWORD PTR _sum1$[ebp]
	sub	eax, 65521				; 0000fff1H
	mov	DWORD PTR _sum1$[ebp], eax
$LN4@adler32_co:

; 145  :     if (sum1 > BASE) sum1 -= BASE;

	cmp	DWORD PTR _sum1$[ebp], 65521		; 0000fff1H
	jbe	SHORT $LN3@adler32_co
	mov	eax, DWORD PTR _sum1$[ebp]
	sub	eax, 65521				; 0000fff1H
	mov	DWORD PTR _sum1$[ebp], eax
$LN3@adler32_co:

; 146  :     if (sum2 > (BASE << 1)) sum2 -= (BASE << 1);

	cmp	DWORD PTR _sum2$[ebp], 131042		; 0001ffe2H
	jbe	SHORT $LN2@adler32_co
	mov	eax, DWORD PTR _sum2$[ebp]
	sub	eax, 131042				; 0001ffe2H
	mov	DWORD PTR _sum2$[ebp], eax
$LN2@adler32_co:

; 147  :     if (sum2 > BASE) sum2 -= BASE;

	cmp	DWORD PTR _sum2$[ebp], 65521		; 0000fff1H
	jbe	SHORT $LN1@adler32_co
	mov	eax, DWORD PTR _sum2$[ebp]
	sub	eax, 65521				; 0000fff1H
	mov	DWORD PTR _sum2$[ebp], eax
$LN1@adler32_co:

; 148  :     return sum1 | (sum2 << 16);

	mov	eax, DWORD PTR _sum2$[ebp]
	shl	eax, 16					; 00000010H
	or	eax, DWORD PTR _sum1$[ebp]

; 149  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
_adler32_combine@12 ENDP
_TEXT	ENDS
END