; Listing generated by Microsoft (R) Optimizing Compiler Version 15.00.21022.08 

	TITLE	y:\asl\software\video_compressor\vid_reader\zlib\zlib-1.2.3\uncompr.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMTD
INCLUDELIB OLDNAMES

PUBLIC	??_C@_05GDHACFMB@1?42?43?$AA@			; `string'
PUBLIC	_uncompress@16
EXTRN	_inflateEnd@4:PROC
EXTRN	_inflate@8:PROC
EXTRN	_inflateInit_@12:PROC
;	COMDAT ??_C@_05GDHACFMB@1?42?43?$AA@
; File y:\asl\software\video_compressor\vid_reader\zlib\zlib-1.2.3\uncompr.c
CONST	SEGMENT
??_C@_05GDHACFMB@1?42?43?$AA@ DB '1.2.3', 00H		; `string'
; Function compile flags: /Odtp /ZI
CONST	ENDS
;	COMDAT _uncompress@16
_TEXT	SEGMENT
_err$ = -60						; size = 4
_stream$ = -56						; size = 56
_dest$ = 8						; size = 4
_destLen$ = 12						; size = 4
_source$ = 16						; size = 4
_sourceLen$ = 20					; size = 4
_uncompress@16 PROC					; COMDAT

; 31   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 124				; 0000007cH
	push	ebx
	push	esi
	push	edi

; 32   :     z_stream stream;
; 33   :     int err;
; 34   : 
; 35   :     stream.next_in = (Bytef*)source;

	mov	eax, DWORD PTR _source$[ebp]
	mov	DWORD PTR _stream$[ebp], eax

; 36   :     stream.avail_in = (uInt)sourceLen;

	mov	eax, DWORD PTR _sourceLen$[ebp]
	mov	DWORD PTR _stream$[ebp+4], eax

; 37   :     /* Check for source > 64K on 16-bit machine: */
; 38   :     if ((uLong)stream.avail_in != sourceLen) return Z_BUF_ERROR;

	mov	eax, DWORD PTR _stream$[ebp+4]
	cmp	eax, DWORD PTR _sourceLen$[ebp]
	je	SHORT $LN6@uncompress
	mov	eax, -5					; fffffffbH
	jmp	$LN7@uncompress
$LN6@uncompress:

; 39   : 
; 40   :     stream.next_out = dest;

	mov	eax, DWORD PTR _dest$[ebp]
	mov	DWORD PTR _stream$[ebp+12], eax

; 41   :     stream.avail_out = (uInt)*destLen;

	mov	eax, DWORD PTR _destLen$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _stream$[ebp+16], ecx

; 42   :     if ((uLong)stream.avail_out != *destLen) return Z_BUF_ERROR;

	mov	eax, DWORD PTR _destLen$[ebp]
	mov	ecx, DWORD PTR _stream$[ebp+16]
	cmp	ecx, DWORD PTR [eax]
	je	SHORT $LN5@uncompress
	mov	eax, -5					; fffffffbH
	jmp	SHORT $LN7@uncompress
$LN5@uncompress:

; 43   : 
; 44   :     stream.zalloc = (alloc_func)0;

	mov	DWORD PTR _stream$[ebp+32], 0

; 45   :     stream.zfree = (free_func)0;

	mov	DWORD PTR _stream$[ebp+36], 0

; 46   : 
; 47   :     err = inflateInit(&stream);

	push	56					; 00000038H
	push	OFFSET ??_C@_05GDHACFMB@1?42?43?$AA@
	lea	eax, DWORD PTR _stream$[ebp]
	push	eax
	call	_inflateInit_@12
	mov	DWORD PTR _err$[ebp], eax

; 48   :     if (err != Z_OK) return err;

	cmp	DWORD PTR _err$[ebp], 0
	je	SHORT $LN4@uncompress
	mov	eax, DWORD PTR _err$[ebp]
	jmp	SHORT $LN7@uncompress
$LN4@uncompress:

; 49   : 
; 50   :     err = inflate(&stream, Z_FINISH);

	push	4
	lea	eax, DWORD PTR _stream$[ebp]
	push	eax
	call	_inflate@8
	mov	DWORD PTR _err$[ebp], eax

; 51   :     if (err != Z_STREAM_END) {

	cmp	DWORD PTR _err$[ebp], 1
	je	SHORT $LN3@uncompress

; 52   :         inflateEnd(&stream);

	lea	eax, DWORD PTR _stream$[ebp]
	push	eax
	call	_inflateEnd@4

; 53   :         if (err == Z_NEED_DICT || (err == Z_BUF_ERROR && stream.avail_in == 0))

	cmp	DWORD PTR _err$[ebp], 2
	je	SHORT $LN1@uncompress
	cmp	DWORD PTR _err$[ebp], -5		; fffffffbH
	jne	SHORT $LN2@uncompress
	cmp	DWORD PTR _stream$[ebp+4], 0
	jne	SHORT $LN2@uncompress
$LN1@uncompress:

; 54   :             return Z_DATA_ERROR;

	mov	eax, -3					; fffffffdH
	jmp	SHORT $LN7@uncompress
$LN2@uncompress:

; 55   :         return err;

	mov	eax, DWORD PTR _err$[ebp]
	jmp	SHORT $LN7@uncompress
$LN3@uncompress:

; 56   :     }
; 57   :     *destLen = stream.total_out;

	mov	eax, DWORD PTR _destLen$[ebp]
	mov	ecx, DWORD PTR _stream$[ebp+20]
	mov	DWORD PTR [eax], ecx

; 58   : 
; 59   :     err = inflateEnd(&stream);

	lea	eax, DWORD PTR _stream$[ebp]
	push	eax
	call	_inflateEnd@4
	mov	DWORD PTR _err$[ebp], eax

; 60   :     return err;

	mov	eax, DWORD PTR _err$[ebp]
$LN7@uncompress:

; 61   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
_uncompress@16 ENDP
_TEXT	ENDS
END
