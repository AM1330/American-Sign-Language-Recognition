; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.21022.08 

	TITLE	y:\asl\software\video_compressor\vid_reader\zlib\zlib-1.2.3\zutil.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	??_C@_0BF@CJFPCCEG@incompatible?5version?$AA@	; `string'
PUBLIC	??_C@_0N@DFPGLBGC@buffer?5error?$AA@		; `string'
PUBLIC	??_C@_0BE@OGGJBMCE@insufficient?5memory?$AA@	; `string'
PUBLIC	??_C@_0L@HAHMBNLP@data?5error?$AA@		; `string'
PUBLIC	??_C@_0N@MKKNPMJD@stream?5error?$AA@		; `string'
PUBLIC	??_C@_0L@KIJFAKBJ@file?5error?$AA@		; `string'
PUBLIC	??_C@_00CNPNBAHC@?$AA@				; `string'
PUBLIC	??_C@_0L@FNAOCBOG@stream?5end?$AA@		; `string'
PUBLIC	??_C@_0BA@MOKMMFOD@need?5dictionary?$AA@	; `string'
PUBLIC	_z_errmsg
CONST	SEGMENT
_z_errmsg DD	FLAT:??_C@_0BA@MOKMMFOD@need?5dictionary?$AA@
	DD	FLAT:??_C@_0L@FNAOCBOG@stream?5end?$AA@
	DD	FLAT:??_C@_00CNPNBAHC@?$AA@
	DD	FLAT:??_C@_0L@KIJFAKBJ@file?5error?$AA@
	DD	FLAT:??_C@_0N@MKKNPMJD@stream?5error?$AA@
	DD	FLAT:??_C@_0L@HAHMBNLP@data?5error?$AA@
	DD	FLAT:??_C@_0BE@OGGJBMCE@insufficient?5memory?$AA@
	DD	FLAT:??_C@_0N@DFPGLBGC@buffer?5error?$AA@
	DD	FLAT:??_C@_0BF@CJFPCCEG@incompatible?5version?$AA@
	DD	FLAT:??_C@_00CNPNBAHC@?$AA@
CONST	ENDS
;	COMDAT ??_C@_0BF@CJFPCCEG@incompatible?5version?$AA@
CONST	SEGMENT
??_C@_0BF@CJFPCCEG@incompatible?5version?$AA@ DB 'incompatible version', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@DFPGLBGC@buffer?5error?$AA@
CONST	SEGMENT
??_C@_0N@DFPGLBGC@buffer?5error?$AA@ DB 'buffer error', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0BE@OGGJBMCE@insufficient?5memory?$AA@
CONST	SEGMENT
??_C@_0BE@OGGJBMCE@insufficient?5memory?$AA@ DB 'insufficient memory', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@HAHMBNLP@data?5error?$AA@
CONST	SEGMENT
??_C@_0L@HAHMBNLP@data?5error?$AA@ DB 'data error', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0N@MKKNPMJD@stream?5error?$AA@
CONST	SEGMENT
??_C@_0N@MKKNPMJD@stream?5error?$AA@ DB 'stream error', 00H ; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@KIJFAKBJ@file?5error?$AA@
CONST	SEGMENT
??_C@_0L@KIJFAKBJ@file?5error?$AA@ DB 'file error', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_00CNPNBAHC@?$AA@
CONST	SEGMENT
??_C@_00CNPNBAHC@?$AA@ DB 00H				; `string'
CONST	ENDS
;	COMDAT ??_C@_0L@FNAOCBOG@stream?5end?$AA@
CONST	SEGMENT
??_C@_0L@FNAOCBOG@stream?5end?$AA@ DB 'stream end', 00H	; `string'
CONST	ENDS
;	COMDAT ??_C@_0BA@MOKMMFOD@need?5dictionary?$AA@
CONST	SEGMENT
??_C@_0BA@MOKMMFOD@need?5dictionary?$AA@ DB 'need dictionary', 00H ; `string'
CONST	ENDS
PUBLIC	??_C@_05GDHACFMB@1?42?43?$AA@			; `string'
PUBLIC	_zlibVersion@0
;	COMDAT ??_C@_05GDHACFMB@1?42?43?$AA@
; File y:\asl\software\video_compressor\vid_reader\zlib\zlib-1.2.3\zutil.c
CONST	SEGMENT
??_C@_05GDHACFMB@1?42?43?$AA@ DB '1.2.3', 00H		; `string'
; Function compile flags: /Odtp /ZI
CONST	ENDS
;	COMDAT _zlibVersion@0
_TEXT	SEGMENT
_zlibVersion@0 PROC					; COMDAT

; 28   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 29   :     return ZLIB_VERSION;

	mov	eax, OFFSET ??_C@_05GDHACFMB@1?42?43?$AA@

; 30   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_zlibVersion@0 ENDP
_TEXT	ENDS
PUBLIC	_zlibCompileFlags@0
; Function compile flags: /Odtp /ZI
;	COMDAT _zlibCompileFlags@0
_TEXT	SEGMENT
tv85 = -72						; size = 4
tv78 = -72						; size = 4
tv71 = -72						; size = 4
tv64 = -72						; size = 4
_flags$ = -4						; size = 4
_zlibCompileFlags@0 PROC				; COMDAT

; 33   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi

; 34   :     uLong flags;
; 35   : 
; 36   :     flags = 0;

	mov	DWORD PTR _flags$[ebp], 0

; 37   :     switch (sizeof(uInt)) {

	mov	DWORD PTR tv64[ebp], 4
	cmp	DWORD PTR tv64[ebp], 2
	je	SHORT $LN22@zlibCompil
	cmp	DWORD PTR tv64[ebp], 4
	je	SHORT $LN21@zlibCompil
	cmp	DWORD PTR tv64[ebp], 8
	je	SHORT $LN20@zlibCompil
	jmp	SHORT $LN19@zlibCompil
$LN22@zlibCompil:

; 38   :     case 2:     break;

	jmp	SHORT $LN23@zlibCompil
$LN21@zlibCompil:

; 39   :     case 4:     flags += 1;     break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 1
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN23@zlibCompil
$LN20@zlibCompil:

; 40   :     case 8:     flags += 2;     break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 2
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN23@zlibCompil
$LN19@zlibCompil:

; 41   :     default:    flags += 3;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 3
	mov	DWORD PTR _flags$[ebp], eax
$LN23@zlibCompil:

; 42   :     }
; 43   :     switch (sizeof(uLong)) {

	mov	DWORD PTR tv71[ebp], 4
	cmp	DWORD PTR tv71[ebp], 2
	je	SHORT $LN16@zlibCompil
	cmp	DWORD PTR tv71[ebp], 4
	je	SHORT $LN15@zlibCompil
	cmp	DWORD PTR tv71[ebp], 8
	je	SHORT $LN14@zlibCompil
	jmp	SHORT $LN13@zlibCompil
$LN16@zlibCompil:

; 44   :     case 2:     break;

	jmp	SHORT $LN17@zlibCompil
$LN15@zlibCompil:

; 45   :     case 4:     flags += 1 << 2;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 4
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN17@zlibCompil
$LN14@zlibCompil:

; 46   :     case 8:     flags += 2 << 2;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 8
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN17@zlibCompil
$LN13@zlibCompil:

; 47   :     default:    flags += 3 << 2;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 12					; 0000000cH
	mov	DWORD PTR _flags$[ebp], eax
$LN17@zlibCompil:

; 48   :     }
; 49   :     switch (sizeof(voidpf)) {

	mov	DWORD PTR tv78[ebp], 4
	cmp	DWORD PTR tv78[ebp], 2
	je	SHORT $LN10@zlibCompil
	cmp	DWORD PTR tv78[ebp], 4
	je	SHORT $LN9@zlibCompil
	cmp	DWORD PTR tv78[ebp], 8
	je	SHORT $LN8@zlibCompil
	jmp	SHORT $LN7@zlibCompil
$LN10@zlibCompil:

; 50   :     case 2:     break;

	jmp	SHORT $LN11@zlibCompil
$LN9@zlibCompil:

; 51   :     case 4:     flags += 1 << 4;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 16					; 00000010H
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN11@zlibCompil
$LN8@zlibCompil:

; 52   :     case 8:     flags += 2 << 4;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 32					; 00000020H
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN11@zlibCompil
$LN7@zlibCompil:

; 53   :     default:    flags += 3 << 4;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 48					; 00000030H
	mov	DWORD PTR _flags$[ebp], eax
$LN11@zlibCompil:

; 54   :     }
; 55   :     switch (sizeof(z_off_t)) {

	mov	DWORD PTR tv85[ebp], 4
	cmp	DWORD PTR tv85[ebp], 2
	je	SHORT $LN4@zlibCompil
	cmp	DWORD PTR tv85[ebp], 4
	je	SHORT $LN3@zlibCompil
	cmp	DWORD PTR tv85[ebp], 8
	je	SHORT $LN2@zlibCompil
	jmp	SHORT $LN1@zlibCompil
$LN4@zlibCompil:

; 56   :     case 2:     break;

	jmp	SHORT $LN5@zlibCompil
$LN3@zlibCompil:

; 57   :     case 4:     flags += 1 << 6;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 64					; 00000040H
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN5@zlibCompil
$LN2@zlibCompil:

; 58   :     case 8:     flags += 2 << 6;        break;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 128				; 00000080H
	mov	DWORD PTR _flags$[ebp], eax
	jmp	SHORT $LN5@zlibCompil
$LN1@zlibCompil:

; 59   :     default:    flags += 3 << 6;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 192				; 000000c0H
	mov	DWORD PTR _flags$[ebp], eax
$LN5@zlibCompil:

; 60   :     }
; 61   : #ifdef DEBUG
; 62   :     flags += 1 << 8;
; 63   : #endif
; 64   : #if defined(ASMV) || defined(ASMINF)
; 65   :     flags += 1 << 9;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 512				; 00000200H
	mov	DWORD PTR _flags$[ebp], eax

; 66   : #endif
; 67   : #ifdef ZLIB_WINAPI
; 68   :     flags += 1 << 10;

	mov	eax, DWORD PTR _flags$[ebp]
	add	eax, 1024				; 00000400H
	mov	DWORD PTR _flags$[ebp], eax

; 69   : #endif
; 70   : #ifdef BUILDFIXED
; 71   :     flags += 1 << 12;
; 72   : #endif
; 73   : #ifdef DYNAMIC_CRC_TABLE
; 74   :     flags += 1 << 13;
; 75   : #endif
; 76   : #ifdef NO_GZCOMPRESS
; 77   :     flags += 1L << 16;
; 78   : #endif
; 79   : #ifdef NO_GZIP
; 80   :     flags += 1L << 17;
; 81   : #endif
; 82   : #ifdef PKZIP_BUG_WORKAROUND
; 83   :     flags += 1L << 20;
; 84   : #endif
; 85   : #ifdef FASTEST
; 86   :     flags += 1L << 21;
; 87   : #endif
; 88   : #ifdef STDC
; 89   : #  ifdef NO_vsnprintf
; 90   :         flags += 1L << 25;
; 91   : #    ifdef HAS_vsprintf_void
; 92   :         flags += 1L << 26;
; 93   : #    endif
; 94   : #  else
; 95   : #    ifdef HAS_vsnprintf_void
; 96   :         flags += 1L << 26;
; 97   : #    endif
; 98   : #  endif
; 99   : #else
; 100  :         flags += 1L << 24;
; 101  : #  ifdef NO_snprintf
; 102  :         flags += 1L << 25;
; 103  : #    ifdef HAS_sprintf_void
; 104  :         flags += 1L << 26;
; 105  : #    endif
; 106  : #  else
; 107  : #    ifdef HAS_snprintf_void
; 108  :         flags += 1L << 26;
; 109  : #    endif
; 110  : #  endif
; 111  : #endif
; 112  :     return flags;

	mov	eax, DWORD PTR _flags$[ebp]

; 113  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_zlibCompileFlags@0 ENDP
_TEXT	ENDS
PUBLIC	_zError@4
; Function compile flags: /Odtp /ZI
;	COMDAT _zError@4
_TEXT	SEGMENT
_err$ = 8						; size = 4
_zError@4 PROC						; COMDAT

; 135  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 136  :     return ERR_MSG(err);

	mov	eax, 2
	sub	eax, DWORD PTR _err$[ebp]
	mov	eax, DWORD PTR _z_errmsg[eax*4]

; 137  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
_zError@4 ENDP
_TEXT	ENDS
PUBLIC	_zcalloc
EXTRN	_malloc:PROC
; Function compile flags: /Odtp /ZI
;	COMDAT _zcalloc
_TEXT	SEGMENT
_opaque$ = 8						; size = 4
_items$ = 12						; size = 4
_size$ = 16						; size = 4
_zcalloc PROC						; COMDAT

; 304  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 305  :     if (opaque) items += size - size; /* make compiler happy */

	cmp	DWORD PTR _opaque$[ebp], 0
	je	SHORT $LN1@zcalloc
	mov	eax, DWORD PTR _size$[ebp]
	sub	eax, DWORD PTR _size$[ebp]
	add	eax, DWORD PTR _items$[ebp]
	mov	DWORD PTR _items$[ebp], eax
$LN1@zcalloc:

; 306  :     return sizeof(uInt) > 2 ? (voidpf)malloc(items * size) :
; 307  :                               (voidpf)calloc(items, size);

	mov	eax, DWORD PTR _items$[ebp]
	imul	eax, DWORD PTR _size$[ebp]
	push	eax
	call	_malloc
	add	esp, 4

; 308  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_zcalloc ENDP
_TEXT	ENDS
PUBLIC	_zcfree
EXTRN	_free:PROC
; Function compile flags: /Odtp /ZI
;	COMDAT _zcfree
_TEXT	SEGMENT
_opaque$ = 8						; size = 4
_ptr$ = 12						; size = 4
_zcfree	PROC						; COMDAT

; 313  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 314  :     free(ptr);

	mov	eax, DWORD PTR _ptr$[ebp]
	push	eax
	call	_free
	add	esp, 4

; 315  :     if (opaque) return; /* make compiler happy */
; 316  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_zcfree	ENDP
_TEXT	ENDS
END
