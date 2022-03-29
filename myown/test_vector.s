	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 11, 0	sdk_version 11, 3
	.globl	__ZN5mystl23lexicographical_compareEPKhS1_S1_S1_ ; -- Begin function _ZN5mystl23lexicographical_compareEPKhS1_S1_S1_
	.p2align	2
__ZN5mystl23lexicographical_compareEPKhS1_S1_S1_: ; @_ZN5mystl23lexicographical_compareEPKhS1_S1_S1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96                     ; =96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80                    ; =80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	add	x0, sp, #40                     ; =40
	str	x8, [sp, #40]
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	add	x1, sp, #32                     ; =32
	str	x8, [sp, #32]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-24]
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl3minIlEERKT_S3_S3_
	ldr	x2, [x0]
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	_memcmp
	str	w0, [sp, #28]
	ldr	w10, [sp, #28]
	cbz	w10, LBB0_2
; %bb.1:
	ldr	w8, [sp, #28]
	cmp	w8, #0                          ; =0
	cset	w8, lt
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB0_3
LBB0_2:
	ldr	x8, [sp, #40]
	ldr	x9, [sp, #32]
	subs	x8, x8, x9
	cset	w10, lt
	str	w10, [sp, #4]                   ; 4-byte Folded Spill
LBB0_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96                     ; =96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl3minIlEERKT_S3_S3_    ; -- Begin function _ZN5mystl3minIlEERKT_S3_S3_
	.weak_definition	__ZN5mystl3minIlEERKT_S3_S3_
	.p2align	2
__ZN5mystl3minIlEERKT_S3_S3_:           ; @_ZN5mystl3minIlEERKT_S3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	ldr	x9, [x9]
	subs	x8, x8, x9
	b.ge	LBB1_2
; %bb.1:
	ldr	x8, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB1_3
LBB1_2:
	ldr	x8, [sp, #24]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
LBB1_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z8printValRN5mystl6vectorIiEE ; -- Begin function _Z8printValRN5mystl6vectorIiEE
	.p2align	2
__Z8printValRN5mystl6vectorIiEE:        ; @_Z8printValRN5mystl6vectorIiEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	bl	__ZN5mystl6vectorIiE5beginEv
	str	x0, [sp, #16]
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE3endEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.eq	LBB2_4
; %bb.2:                                ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #16]
	ldr	w1, [x8]
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
; %bb.3:                                ;   in Loop: Header=BB2_1 Depth=1
	ldr	x8, [sp, #16]
	add	x8, x8, #4                      ; =4
	str	x8, [sp, #16]
	b	LBB2_1
LBB2_4:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x1, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x1, [x1, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5beginEv    ; -- Begin function _ZN5mystl6vectorIiE5beginEv
	.weak_definition	__ZN5mystl6vectorIiE5beginEv
	.p2align	2
__ZN5mystl6vectorIiE5beginEv:           ; @_ZN5mystl6vectorIiE5beginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE6_beginEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE3endEv      ; -- Begin function _ZN5mystl6vectorIiE3endEv
	.weak_definition	__ZN5mystl6vectorIiE3endEv
	.p2align	2
__ZN5mystl6vectorIiE3endEv:             ; @_ZN5mystl6vectorIiE3endEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE4_endEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x8
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE6lengthEPKc
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E: ; @_ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x8, [sp]
	blr	x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	mov	w10, #10
	sxtb	w1, w10
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	mov	x0, x8
	ldr	w1, [sp, #12]                   ; 4-byte Folded Reload
	sxtb	w1, w1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	ldur	x8, [x29, #-8]
	mov	x0, x8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	ldur	x8, [x29, #-8]
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z9printInfoRN5mystl6vectorIiEE ; -- Begin function _Z9printInfoRN5mystl6vectorIiEE
	.p2align	2
__Z9printInfoRN5mystl6vectorIiEE:       ; @_Z9printInfoRN5mystl6vectorIiEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96                     ; =96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80                    ; =80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	stur	x0, [x29, #-8]
	mov	x0, x8
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-8]
	stur	x0, [x29, #-24]                 ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldur	x1, [x29, #-24]                 ; 8-byte Folded Reload
	stur	x0, [x29, #-32]                 ; 8-byte Folded Spill
	mov	x0, x1
	ldur	x1, [x29, #-32]                 ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-8]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-8]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE5frontEv
	ldr	w1, [x0]
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-8]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE4backEv
	ldr	w1, [x0]
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.5@PAGE
	add	x1, x1, l_.str.5@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x8, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE4dataEv
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
	adrp	x1, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x1, [x1, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96                     ; =96
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE4sizeEv     ; -- Begin function _ZN5mystl6vectorIiE4sizeEv
	.weak_definition	__ZN5mystl6vectorIiE4sizeEv
	.p2align	2
__ZN5mystl6vectorIiE4sizeEv:            ; @_ZN5mystl6vectorIiE4sizeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE5_sizeEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE8capacityEv ; -- Begin function _ZN5mystl6vectorIiE8capacityEv
	.weak_definition	__ZN5mystl6vectorIiE8capacityEv
	.p2align	2
__ZN5mystl6vectorIiE8capacityEv:        ; @_ZN5mystl6vectorIiE8capacityEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE9_capacityEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5frontEv    ; -- Begin function _ZN5mystl6vectorIiE5frontEv
	.weak_definition	__ZN5mystl6vectorIiE5frontEv
	.p2align	2
__ZN5mystl6vectorIiE5frontEv:           ; @_ZN5mystl6vectorIiE5frontEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE6_frontEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE4backEv     ; -- Begin function _ZN5mystl6vectorIiE4backEv
	.weak_definition	__ZN5mystl6vectorIiE4backEv
	.p2align	2
__ZN5mystl6vectorIiE4backEv:            ; @_ZN5mystl6vectorIiE4backEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE5_backEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE4dataEv     ; -- Begin function _ZN5mystl6vectorIiE4dataEv
	.weak_definition	__ZN5mystl6vectorIiE4dataEv
	.p2align	2
__ZN5mystl6vectorIiE4dataEv:            ; @_ZN5mystl6vectorIiE4dataEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE5_dataEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16my_vector_test01v          ; -- Begin function _Z16my_vector_test01v
	.p2align	2
__Z16my_vector_test01v:                 ; @_Z16my_vector_test01v
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	sub	sp, sp, #496                    ; =496
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	sub	x0, x29, #88                    ; =88
	bl	__ZN5mystl6vectorIiEC1Ev
Ltmp1:
	sub	x8, x29, #112                   ; =112
	mov	x0, x8
	mov	x1, #10
	bl	__ZN5mystl6vectorIiEC1Em
Ltmp2:
	b	LBB14_1
LBB14_1:
Ltmp4:
	sub	x0, x29, #152                   ; =152
	sub	x1, x29, #112                   ; =112
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp5:
	b	LBB14_2
LBB14_2:
Ltmp6:
	sub	x0, x29, #152                   ; =152
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp7:
	b	LBB14_3
LBB14_3:
	sub	x0, x29, #152                   ; =152
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x2, x29, #180                   ; =180
	mov	w8, #1
	stur	w8, [x29, #-180]
Ltmp9:
	sub	x9, x29, #176                   ; =176
	mov	x0, x9
	mov	x1, #10
	bl	__ZN5mystl6vectorIiEC1EmRKi
Ltmp10:
	b	LBB14_4
LBB14_4:
Ltmp12:
	sub	x0, x29, #208                   ; =208
	sub	x1, x29, #176                   ; =176
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp13:
	b	LBB14_5
LBB14_5:
Ltmp14:
	sub	x0, x29, #208                   ; =208
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp15:
	b	LBB14_6
LBB14_6:
	sub	x0, x29, #208                   ; =208
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp17:
	sub	x8, x29, #176                   ; =176
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp18:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB14_7
LBB14_7:
Ltmp19:
	sub	x0, x29, #176                   ; =176
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp20:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB14_8
LBB14_8:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x2, x8, #12                     ; =12
Ltmp21:
	sub	x0, x29, #232                   ; =232
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1IPiLi0EEET_S4_
Ltmp22:
	b	LBB14_9
LBB14_9:
Ltmp24:
	add	x0, sp, #256                    ; =256
	sub	x1, x29, #232                   ; =232
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp25:
	b	LBB14_10
LBB14_10:
Ltmp26:
	add	x0, sp, #256                    ; =256
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp27:
	b	LBB14_11
LBB14_11:
	add	x0, sp, #256                    ; =256
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp29:
	add	x8, sp, #232                    ; =232
	mov	x0, x8
	sub	x1, x29, #232                   ; =232
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp30:
	b	LBB14_12
LBB14_12:
Ltmp32:
	add	x0, sp, #208                    ; =208
	add	x1, sp, #232                    ; =232
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp33:
	b	LBB14_13
LBB14_13:
Ltmp34:
	add	x0, sp, #208                    ; =208
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp35:
	b	LBB14_14
LBB14_14:
	add	x0, sp, #208                    ; =208
	bl	__ZN5mystl6vectorIiED1Ev
	add	x2, sp, #180                    ; =180
	mov	w8, #2
	str	w8, [sp, #180]
Ltmp37:
	add	x9, sp, #184                    ; =184
	mov	x0, x9
	mov	x1, #10
	bl	__ZN5mystl6vectorIiEC1EmRKi
Ltmp38:
	b	LBB14_15
LBB14_15:
Ltmp40:
	add	x0, sp, #152                    ; =152
	add	x1, sp, #184                    ; =184
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp41:
	b	LBB14_16
LBB14_16:
Ltmp42:
	add	x0, sp, #152                    ; =152
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp43:
	b	LBB14_17
LBB14_17:
	add	x0, sp, #152                    ; =152
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, l_constinit@PAGE
	add	x8, x8, l_constinit@PAGEOFF
	ldr	q0, [x8]
	sub	x9, x29, #48                    ; =48
	stur	q0, [x29, #-48]
	ldr	w10, [x8, #16]
	stur	w10, [x29, #-32]
	str	x9, [sp, #112]
	mov	x8, #5
	str	x8, [sp, #120]
	ldr	x1, [sp, #112]
	ldr	x2, [sp, #120]
Ltmp45:
	add	x8, sp, #128                    ; =128
	mov	x0, x8
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp46:
	b	LBB14_18
LBB14_18:
Ltmp48:
	add	x0, sp, #88                     ; =88
	add	x1, sp, #128                    ; =128
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp49:
	b	LBB14_19
LBB14_19:
Ltmp50:
	add	x0, sp, #88                     ; =88
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp51:
	b	LBB14_20
LBB14_20:
	add	x0, sp, #88                     ; =88
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #60                    ; =60
	mov	w9, #1
	stur	w9, [x29, #-60]
	mov	w9, #2
	stur	w9, [x29, #-56]
	mov	w9, #3
	stur	w9, [x29, #-52]
	str	x8, [sp, #48]
	mov	x8, #3
	str	x8, [sp, #56]
	ldr	x1, [sp, #48]
	ldr	x2, [sp, #56]
Ltmp53:
	add	x8, sp, #64                     ; =64
	mov	x0, x8
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp54:
	b	LBB14_21
LBB14_21:
Ltmp56:
	add	x0, sp, #24                     ; =24
	add	x1, sp, #64                     ; =64
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp57:
	b	LBB14_22
LBB14_22:
Ltmp59:
	add	x0, sp, #24                     ; =24
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp60:
	b	LBB14_23
LBB14_23:
	add	x0, sp, #24                     ; =24
	bl	__ZN5mystl6vectorIiED1Ev
	add	x8, sp, #64                     ; =64
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	add	x8, sp, #128                    ; =128
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	add	x8, sp, #184                    ; =184
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	add	x8, sp, #232                    ; =232
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #232                   ; =232
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #176                   ; =176
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #112                   ; =112
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #88                    ; =88
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	LBB14_49
; %bb.24:
	add	sp, sp, #496                    ; =496
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
LBB14_25:
Ltmp3:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_47
LBB14_26:
Ltmp11:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_46
LBB14_27:
Ltmp8:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	sub	x0, x29, #152                   ; =152
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB14_46
LBB14_28:
Ltmp23:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_45
LBB14_29:
Ltmp16:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	sub	x0, x29, #208                   ; =208
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB14_45
LBB14_30:
Ltmp31:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_44
LBB14_31:
Ltmp28:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	add	x0, sp, #256                    ; =256
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB14_44
LBB14_32:
Ltmp39:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_43
LBB14_33:
Ltmp36:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	add	x0, sp, #208                    ; =208
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB14_43
LBB14_34:
Ltmp47:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_42
LBB14_35:
Ltmp44:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	add	x0, sp, #152                    ; =152
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB14_42
LBB14_36:
Ltmp55:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_41
LBB14_37:
Ltmp52:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	add	x0, sp, #88                     ; =88
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB14_41
LBB14_38:
Ltmp58:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB14_40
LBB14_39:
Ltmp61:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	add	x0, sp, #24                     ; =24
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_40:
	add	x0, sp, #64                     ; =64
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_41:
	add	x0, sp, #128                    ; =128
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_42:
	add	x0, sp, #184                    ; =184
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_43:
	add	x0, sp, #232                    ; =232
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_44:
	sub	x0, x29, #232                   ; =232
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_45:
	sub	x0, x29, #176                   ; =176
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_46:
	sub	x0, x29, #112                   ; =112
	bl	__ZN5mystl6vectorIiED1Ev
LBB14_47:
	sub	x0, x29, #88                    ; =88
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.48:
	ldur	x0, [x29, #-120]
	bl	__Unwind_Resume
LBB14_49:
	bl	___stack_chk_fail
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table14:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp2-Ltmp1                    ;   Call between Ltmp1 and Ltmp2
	.uleb128 Ltmp3-Lfunc_begin0             ;     jumps to Ltmp3
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp4-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp5-Ltmp4                    ;   Call between Ltmp4 and Ltmp5
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp10-Ltmp9                   ;   Call between Ltmp9 and Ltmp10
	.uleb128 Ltmp11-Lfunc_begin0            ;     jumps to Ltmp11
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp15-Ltmp14                  ;   Call between Ltmp14 and Ltmp15
	.uleb128 Ltmp16-Lfunc_begin0            ;     jumps to Ltmp16
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Ltmp22-Ltmp17                  ;   Call between Ltmp17 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin0            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin0            ; >> Call Site 8 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp31-Lfunc_begin0            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin0            ; >> Call Site 9 <<
	.uleb128 Ltmp27-Ltmp26                  ;   Call between Ltmp26 and Ltmp27
	.uleb128 Ltmp28-Lfunc_begin0            ;     jumps to Ltmp28
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp29-Lfunc_begin0            ; >> Call Site 10 <<
	.uleb128 Ltmp30-Ltmp29                  ;   Call between Ltmp29 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin0            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin0            ; >> Call Site 11 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp39-Lfunc_begin0            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp34-Lfunc_begin0            ; >> Call Site 12 <<
	.uleb128 Ltmp35-Ltmp34                  ;   Call between Ltmp34 and Ltmp35
	.uleb128 Ltmp36-Lfunc_begin0            ;     jumps to Ltmp36
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin0            ; >> Call Site 13 <<
	.uleb128 Ltmp38-Ltmp37                  ;   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin0            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin0            ; >> Call Site 14 <<
	.uleb128 Ltmp41-Ltmp40                  ;   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp47-Lfunc_begin0            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp42-Lfunc_begin0            ; >> Call Site 15 <<
	.uleb128 Ltmp43-Ltmp42                  ;   Call between Ltmp42 and Ltmp43
	.uleb128 Ltmp44-Lfunc_begin0            ;     jumps to Ltmp44
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin0            ; >> Call Site 16 <<
	.uleb128 Ltmp46-Ltmp45                  ;   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin0            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin0            ; >> Call Site 17 <<
	.uleb128 Ltmp49-Ltmp48                  ;   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp55-Lfunc_begin0            ;     jumps to Ltmp55
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin0            ; >> Call Site 18 <<
	.uleb128 Ltmp51-Ltmp50                  ;   Call between Ltmp50 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin0            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin0            ; >> Call Site 19 <<
	.uleb128 Ltmp54-Ltmp53                  ;   Call between Ltmp53 and Ltmp54
	.uleb128 Ltmp55-Lfunc_begin0            ;     jumps to Ltmp55
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin0            ; >> Call Site 20 <<
	.uleb128 Ltmp57-Ltmp56                  ;   Call between Ltmp56 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin0            ;     jumps to Ltmp58
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin0            ; >> Call Site 21 <<
	.uleb128 Ltmp60-Ltmp59                  ;   Call between Ltmp59 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin0            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin0            ; >> Call Site 22 <<
	.uleb128 Lfunc_end0-Ltmp60              ;   Call between Ltmp60 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiEC1Ev        ; -- Begin function _ZN5mystl6vectorIiEC1Ev
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC1Ev
	.p2align	2
__ZN5mystl6vectorIiEC1Ev:               ; @_ZN5mystl6vectorIiEC1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC1Em        ; -- Begin function _ZN5mystl6vectorIiEC1Em
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC1Em
	.p2align	2
__ZN5mystl6vectorIiEC1Em:               ; @_ZN5mystl6vectorIiEC1Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC2Em
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z5printIN5mystl6vectorIiEEEvT_ ; -- Begin function _Z5printIN5mystl6vectorIiEEEvT_
	.weak_definition	__Z5printIN5mystl6vectorIiEEEvT_
	.p2align	2
__Z5printIN5mystl6vectorIiEEEvT_:       ; @_Z5printIN5mystl6vectorIiEEEvT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	stur	x0, [x29, #-8]                  ; 8-byte Folded Spill
	mov	x0, x8
	adrp	x1, l_.str.61@PAGE
	add	x1, x1, l_.str.61@PAGEOFF
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x8, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	mov	x1, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.62@PAGE
	add	x1, x1, l_.str.62@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	adrp	x8, _i@PAGE
	ldr	w9, [x8, _i@PAGEOFF]
	add	w10, w9, #1                     ; =1
	str	w10, [x8, _i@PAGEOFF]
	mov	x1, x9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	adrp	x1, l_.str.63@PAGE
	add	x1, x1, l_.str.63@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.64@PAGE
	add	x1, x1, l_.str.64@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-8]                  ; 8-byte Folded Reload
	mov	x0, x1
	bl	__Z9printInfoRN5mystl6vectorIiEE
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.65@PAGE
	add	x1, x1, l_.str.65@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	ldur	x1, [x29, #-8]                  ; 8-byte Folded Reload
	mov	x0, x1
	bl	__Z8printValRN5mystl6vectorIiEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC1ERS1_     ; -- Begin function _ZN5mystl6vectorIiEC1ERS1_
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC1ERS1_
	.p2align	2
__ZN5mystl6vectorIiEC1ERS1_:            ; @_ZN5mystl6vectorIiEC1ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC2ERS1_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiED1Ev        ; -- Begin function _ZN5mystl6vectorIiED1Ev
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiED1Ev
	.p2align	2
__ZN5mystl6vectorIiED1Ev:               ; @_ZN5mystl6vectorIiED1Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiED2Ev
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC1EmRKi     ; -- Begin function _ZN5mystl6vectorIiEC1EmRKi
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC1EmRKi
	.p2align	2
__ZN5mystl6vectorIiEC1EmRKi:            ; @_ZN5mystl6vectorIiEC1EmRKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC2EmRKi
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC1IPiLi0EEET_S4_ ; -- Begin function _ZN5mystl6vectorIiEC1IPiLi0EEET_S4_
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC1IPiLi0EEET_S4_
	.p2align	2
__ZN5mystl6vectorIiEC1IPiLi0EEET_S4_:   ; @_ZN5mystl6vectorIiEC1IPiLi0EEET_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC2IPiLi0EEET_S4_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE ; -- Begin function _ZN5mystl6vectorIiEC1ESt16initializer_listIiE
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
	.p2align	2
__ZN5mystl6vectorIiEC1ESt16initializer_listIiE: ; @_ZN5mystl6vectorIiEC1ESt16initializer_listIiE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x1, [sp, #16]
	str	x2, [sp, #24]
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC2ESt16initializer_listIiE
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16my_vector_test02v          ; -- Begin function _Z16my_vector_test02v
	.p2align	2
__Z16my_vector_test02v:                 ; @_Z16my_vector_test02v
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #208                    ; =208
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192                   ; =192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	sub	x8, x29, #20                    ; =20
	mov	w9, #1
	stur	w9, [x29, #-20]
	mov	w9, #2
	stur	w9, [x29, #-16]
	mov	w9, #3
	stur	w9, [x29, #-12]
	stur	x8, [x29, #-64]
	mov	x8, #3
	stur	x8, [x29, #-56]
	ldur	x1, [x29, #-64]
	ldur	x2, [x29, #-56]
	sub	x8, x29, #48                    ; =48
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp62:
	sub	x8, x29, #88                    ; =88
	mov	x0, x8
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp63:
	b	LBB23_1
LBB23_1:
Ltmp65:
	add	x0, sp, #64                     ; =64
	sub	x1, x29, #88                    ; =88
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp66:
	b	LBB23_2
LBB23_2:
Ltmp67:
	add	x0, sp, #64                     ; =64
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp68:
	b	LBB23_3
LBB23_3:
	add	x0, sp, #64                     ; =64
	bl	__ZN5mystl6vectorIiED1Ev
	add	x2, sp, #36                     ; =36
	mov	w8, #3
	str	w8, [sp, #36]
Ltmp70:
	add	x9, sp, #40                     ; =40
	mov	x0, x9
	mov	x1, #10
	bl	__ZN5mystl6vectorIiEC1EmRKi
Ltmp71:
	b	LBB23_4
LBB23_4:
Ltmp73:
	add	x0, sp, #8                      ; =8
	add	x1, sp, #40                     ; =40
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp74:
	b	LBB23_5
LBB23_5:
Ltmp76:
	add	x0, sp, #8                      ; =8
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp77:
	b	LBB23_6
LBB23_6:
	add	x0, sp, #8                      ; =8
	bl	__ZN5mystl6vectorIiED1Ev
	add	x8, sp, #40                     ; =40
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #88                    ; =88
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #48                    ; =48
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ne	LBB23_17
; %bb.7:
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #208                    ; =208
	ret
LBB23_8:
Ltmp64:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #96]
	str	w1, [sp, #92]
	b	LBB23_15
LBB23_9:
Ltmp72:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #96]
	str	w1, [sp, #92]
	b	LBB23_14
LBB23_10:
Ltmp69:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #96]
	str	w1, [sp, #92]
	add	x0, sp, #64                     ; =64
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB23_14
LBB23_11:
Ltmp75:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #96]
	str	w1, [sp, #92]
	b	LBB23_13
LBB23_12:
Ltmp78:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #96]
	str	w1, [sp, #92]
	add	x0, sp, #8                      ; =8
	bl	__ZN5mystl6vectorIiED1Ev
LBB23_13:
	add	x0, sp, #40                     ; =40
	bl	__ZN5mystl6vectorIiED1Ev
LBB23_14:
	sub	x0, x29, #88                    ; =88
	bl	__ZN5mystl6vectorIiED1Ev
LBB23_15:
	sub	x0, x29, #48                    ; =48
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.16:
	ldr	x0, [sp, #96]
	bl	__Unwind_Resume
LBB23_17:
	bl	___stack_chk_fail
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table23:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp62-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp62
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp63-Ltmp62                  ;   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin1            ;     jumps to Ltmp64
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Ltmp66-Ltmp65                  ;   Call between Ltmp65 and Ltmp66
	.uleb128 Ltmp72-Lfunc_begin1            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp67-Lfunc_begin1            ; >> Call Site 4 <<
	.uleb128 Ltmp68-Ltmp67                  ;   Call between Ltmp67 and Ltmp68
	.uleb128 Ltmp69-Lfunc_begin1            ;     jumps to Ltmp69
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp70-Lfunc_begin1            ; >> Call Site 5 <<
	.uleb128 Ltmp71-Ltmp70                  ;   Call between Ltmp70 and Ltmp71
	.uleb128 Ltmp72-Lfunc_begin1            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin1            ; >> Call Site 6 <<
	.uleb128 Ltmp74-Ltmp73                  ;   Call between Ltmp73 and Ltmp74
	.uleb128 Ltmp75-Lfunc_begin1            ;     jumps to Ltmp75
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp76-Lfunc_begin1            ; >> Call Site 7 <<
	.uleb128 Ltmp77-Ltmp76                  ;   Call between Ltmp76 and Ltmp77
	.uleb128 Ltmp78-Lfunc_begin1            ;     jumps to Ltmp78
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin1            ; >> Call Site 8 <<
	.uleb128 Lfunc_end1-Ltmp77              ;   Call between Ltmp77 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z16my_vector_test03v          ; -- Begin function _Z16my_vector_test03v
	.p2align	2
__Z16my_vector_test03v:                 ; @_Z16my_vector_test03v
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #400                    ; =400
	stp	x28, x27, [sp, #368]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #384]            ; 16-byte Folded Spill
	add	x29, sp, #384                   ; =384
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x9, [x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	stur	x10, [x29, #-24]
	adrp	x10, l_constinit.6@PAGE
	add	x10, x10, l_constinit.6@PAGEOFF
	ldr	q0, [x10]
	sub	x11, x29, #48                   ; =48
	stur	q0, [x29, #-48]
	ldr	x10, [x10, #16]
	stur	x10, [x29, #-32]
	stur	x11, [x29, #-88]
	mov	x10, #6
	stur	x10, [x29, #-80]
	ldur	x1, [x29, #-88]
	ldur	x2, [x29, #-80]
	sub	x10, x29, #72                   ; =72
	mov	x0, x10
	stur	x8, [x29, #-152]                ; 8-byte Folded Spill
	stur	x9, [x29, #-160]                ; 8-byte Folded Spill
	stur	x10, [x29, #-168]               ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp79:
	sub	x8, x29, #112                   ; =112
	mov	x0, x8
	ldur	x1, [x29, #-168]                ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp80:
	b	LBB24_1
LBB24_1:
Ltmp81:
	sub	x0, x29, #112                   ; =112
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp82:
	b	LBB24_2
LBB24_2:
	sub	x0, x29, #112                   ; =112
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp84:
	ldur	x8, [x29, #-152]                ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.7@PAGE
	add	x1, x1, l_.str.7@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp85:
	stur	x0, [x29, #-176]                ; 8-byte Folded Spill
	b	LBB24_3
LBB24_3:
Ltmp86:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp87:
	stur	x0, [x29, #-184]                ; 8-byte Folded Spill
	b	LBB24_4
LBB24_4:
Ltmp88:
	ldur	x0, [x29, #-176]                ; 8-byte Folded Reload
	ldur	x1, [x29, #-184]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp89:
	str	x0, [sp, #192]                  ; 8-byte Folded Spill
	b	LBB24_5
LBB24_5:
Ltmp90:
	ldr	x0, [sp, #192]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp91:
	b	LBB24_6
LBB24_6:
Ltmp92:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.8@PAGE
	add	x1, x1, l_.str.8@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp93:
	str	x0, [sp, #184]                  ; 8-byte Folded Spill
	b	LBB24_7
LBB24_7:
Ltmp94:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp95:
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
	b	LBB24_8
LBB24_8:
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp96:
	ldr	x0, [sp, #184]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp97:
	str	x0, [sp, #168]                  ; 8-byte Folded Spill
	b	LBB24_9
LBB24_9:
Ltmp98:
	ldr	x0, [sp, #168]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp99:
	b	LBB24_10
LBB24_10:
Ltmp100:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.9@PAGE
	add	x1, x1, l_.str.9@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp101:
	str	x0, [sp, #160]                  ; 8-byte Folded Spill
	b	LBB24_11
LBB24_11:
Ltmp102:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE3endEv
Ltmp103:
	str	x0, [sp, #152]                  ; 8-byte Folded Spill
	b	LBB24_12
LBB24_12:
Ltmp104:
	ldr	x0, [sp, #160]                  ; 8-byte Folded Reload
	ldr	x1, [sp, #152]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp105:
	str	x0, [sp, #144]                  ; 8-byte Folded Spill
	b	LBB24_13
LBB24_13:
Ltmp106:
	ldr	x0, [sp, #144]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp107:
	b	LBB24_14
LBB24_14:
Ltmp108:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.10@PAGE
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp109:
	str	x0, [sp, #136]                  ; 8-byte Folded Spill
	b	LBB24_15
LBB24_15:
Ltmp110:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE3endEv
Ltmp111:
	str	x0, [sp, #128]                  ; 8-byte Folded Spill
	b	LBB24_16
LBB24_16:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp112:
	ldr	x0, [sp, #136]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp113:
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
	b	LBB24_17
LBB24_17:
Ltmp114:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp115:
	b	LBB24_18
LBB24_18:
Ltmp116:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.11@PAGE
	add	x1, x1, l_.str.11@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp117:
	b	LBB24_19
LBB24_19:
Ltmp118:
	sub	x8, x29, #136                   ; =136
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE6rbeginEv
Ltmp119:
	b	LBB24_20
LBB24_20:
LBB24_21:                               ; =>This Inner Loop Header: Depth=1
Ltmp120:
	sub	x8, x29, #144                   ; =144
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE4rendEv
Ltmp121:
	b	LBB24_22
LBB24_22:                               ;   in Loop: Header=BB24_21 Depth=1
Ltmp122:
	sub	x0, x29, #136                   ; =136
	sub	x1, x29, #144                   ; =144
	bl	__ZN5mystlneIPiEEbRKNS_16reverse_iteratorIT_EES6_
Ltmp123:
	str	w0, [sp, #116]                  ; 4-byte Folded Spill
	b	LBB24_23
LBB24_23:                               ;   in Loop: Header=BB24_21 Depth=1
	ldr	w8, [sp, #116]                  ; 4-byte Folded Reload
	tbnz	w8, #0, LBB24_24
	b	LBB24_32
LBB24_24:                               ;   in Loop: Header=BB24_21 Depth=1
Ltmp158:
	sub	x0, x29, #136                   ; =136
	bl	__ZNK5mystl16reverse_iteratorIPiEdeEv
Ltmp159:
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	b	LBB24_25
LBB24_25:                               ;   in Loop: Header=BB24_21 Depth=1
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp160:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp161:
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	b	LBB24_26
LBB24_26:                               ;   in Loop: Header=BB24_21 Depth=1
Ltmp162:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp163:
	b	LBB24_27
LBB24_27:                               ;   in Loop: Header=BB24_21 Depth=1
; %bb.28:                               ;   in Loop: Header=BB24_21 Depth=1
Ltmp164:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl16reverse_iteratorIPiEppEv
Ltmp165:
	b	LBB24_29
LBB24_29:                               ;   in Loop: Header=BB24_21 Depth=1
	b	LBB24_21
LBB24_30:
Ltmp166:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB24_51
LBB24_31:
Ltmp83:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	sub	x0, x29, #112                   ; =112
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB24_51
LBB24_32:
Ltmp124:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp125:
	b	LBB24_33
LBB24_33:
Ltmp126:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.12@PAGE
	add	x1, x1, l_.str.12@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp127:
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	b	LBB24_34
LBB24_34:
Ltmp128:
	sub	x0, x29, #72                    ; =72
	bl	__ZNK5mystl6vectorIiE6cbeginEv
Ltmp129:
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	b	LBB24_35
LBB24_35:
Ltmp130:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp131:
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB24_36
LBB24_36:
Ltmp132:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp133:
	b	LBB24_37
LBB24_37:
Ltmp134:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.13@PAGE
	add	x1, x1, l_.str.13@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp135:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB24_38
LBB24_38:
Ltmp136:
	sub	x0, x29, #72                    ; =72
	bl	__ZNK5mystl6vectorIiE6cbeginEv
Ltmp137:
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	b	LBB24_39
LBB24_39:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp138:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp139:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB24_40
LBB24_40:
Ltmp140:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp141:
	b	LBB24_41
LBB24_41:
Ltmp142:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.14@PAGE
	add	x1, x1, l_.str.14@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp143:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB24_42
LBB24_42:
Ltmp144:
	sub	x0, x29, #72                    ; =72
	bl	__ZNK5mystl6vectorIiE4cendEv
Ltmp145:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB24_43
LBB24_43:
Ltmp146:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPKv
Ltmp147:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB24_44
LBB24_44:
Ltmp148:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp149:
	b	LBB24_45
LBB24_45:
Ltmp150:
	ldur	x0, [x29, #-152]                ; 8-byte Folded Reload
	adrp	x1, l_.str.15@PAGE
	add	x1, x1, l_.str.15@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp151:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB24_46
LBB24_46:
Ltmp152:
	sub	x0, x29, #72                    ; =72
	bl	__ZNK5mystl6vectorIiE4cendEv
Ltmp153:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB24_47
LBB24_47:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp154:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp155:
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB24_48
LBB24_48:
Ltmp156:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldur	x1, [x29, #-160]                ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp157:
	b	LBB24_49
LBB24_49:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	LBB24_53
; %bb.50:
	ldp	x29, x30, [sp, #384]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #368]            ; 16-byte Folded Reload
	add	sp, sp, #400                    ; =400
	ret
LBB24_51:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.52:
	ldur	x0, [x29, #-120]
	bl	__Unwind_Resume
LBB24_53:
	bl	___stack_chk_fail
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table24:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp79-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp79
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp79-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp80-Ltmp79                  ;   Call between Ltmp79 and Ltmp80
	.uleb128 Ltmp166-Lfunc_begin2           ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp82-Ltmp81                  ;   Call between Ltmp81 and Ltmp82
	.uleb128 Ltmp83-Lfunc_begin2            ;     jumps to Ltmp83
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp84-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp157-Ltmp84                 ;   Call between Ltmp84 and Ltmp157
	.uleb128 Ltmp166-Lfunc_begin2           ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp157-Lfunc_begin2           ; >> Call Site 5 <<
	.uleb128 Lfunc_end2-Ltmp157             ;   Call between Ltmp157 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE6rbeginEv   ; -- Begin function _ZN5mystl6vectorIiE6rbeginEv
	.weak_definition	__ZN5mystl6vectorIiE6rbeginEv
	.p2align	2
__ZN5mystl6vectorIiE6rbeginEv:          ; @_ZN5mystl6vectorIiE6rbeginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	bl	__ZN5mystl6vectorIiE7_rbeginEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystlneIPiEEbRKNS_16reverse_iteratorIT_EES6_ ; -- Begin function _ZN5mystlneIPiEEbRKNS_16reverse_iteratorIT_EES6_
	.weak_definition	__ZN5mystlneIPiEEbRKNS_16reverse_iteratorIT_EES6_
	.p2align	2
__ZN5mystlneIPiEEbRKNS_16reverse_iteratorIT_EES6_: ; @_ZN5mystlneIPiEEbRKNS_16reverse_iteratorIT_EES6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x0, [sp, #16]
	bl	__ZNK5mystl16reverse_iteratorIPiE4baseEv
	ldur	x8, [x29, #-8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZNK5mystl16reverse_iteratorIPiE4baseEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x8, x0
	cset	w10, ne
	and	w0, w10, #0x1
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE4rendEv     ; -- Begin function _ZN5mystl6vectorIiE4rendEv
	.weak_definition	__ZN5mystl6vectorIiE4rendEv
	.p2align	2
__ZN5mystl6vectorIiE4rendEv:            ; @_ZN5mystl6vectorIiE4rendEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x8, [sp, #8]
	str	x0, [sp]
	ldr	x0, [sp]
	bl	__ZN5mystl6vectorIiE5_rendEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl16reverse_iteratorIPiEdeEv ; -- Begin function _ZNK5mystl16reverse_iteratorIPiEdeEv
	.weak_definition	__ZNK5mystl16reverse_iteratorIPiEdeEv
	.p2align	2
__ZNK5mystl16reverse_iteratorIPiEdeEv:  ; @_ZNK5mystl16reverse_iteratorIPiEdeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	str	x8, [sp]
	ldr	x8, [sp]
	subs	x8, x8, #4                      ; =4
	str	x8, [sp]
	mov	x0, x8
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl16reverse_iteratorIPiEppEv ; -- Begin function _ZN5mystl16reverse_iteratorIPiEppEv
	.weak_definition	__ZN5mystl16reverse_iteratorIPiEppEv
	.p2align	2
__ZN5mystl16reverse_iteratorIPiEppEv:   ; @_ZN5mystl16reverse_iteratorIPiEppEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	subs	x9, x9, #4                      ; =4
	str	x9, [x8]
	mov	x0, x8
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE6cbeginEv  ; -- Begin function _ZNK5mystl6vectorIiE6cbeginEv
	.weak_definition	__ZNK5mystl6vectorIiE6cbeginEv
	.p2align	2
__ZNK5mystl6vectorIiE6cbeginEv:         ; @_ZNK5mystl6vectorIiE6cbeginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNK5mystl6vectorIiE7_cbeginEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE4cendEv    ; -- Begin function _ZNK5mystl6vectorIiE4cendEv
	.weak_definition	__ZNK5mystl6vectorIiE4cendEv
	.p2align	2
__ZNK5mystl6vectorIiE4cendEv:           ; @_ZNK5mystl6vectorIiE4cendEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNK5mystl6vectorIiE5_cendEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16my_vector_test04v          ; -- Begin function _Z16my_vector_test04v
	.p2align	2
__Z16my_vector_test04v:                 ; @_Z16my_vector_test04v
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #272                    ; =272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256                   ; =256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x9, [x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	stur	x10, [x29, #-24]
	adrp	x10, l_constinit.16@PAGE
	add	x10, x10, l_constinit.16@PAGEOFF
	ldr	q0, [x10]
	sub	x11, x29, #48                   ; =48
	stur	q0, [x29, #-48]
	ldr	w12, [x10, #16]
	stur	w12, [x29, #-32]
	stur	x11, [x29, #-88]
	mov	x10, #5
	stur	x10, [x29, #-80]
	ldur	x1, [x29, #-88]
	ldur	x2, [x29, #-80]
	sub	x10, x29, #72                   ; =72
	mov	x0, x10
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	str	x9, [sp, #112]                  ; 8-byte Folded Spill
	str	x10, [sp, #104]                 ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp169:
	sub	x8, x29, #112                   ; =112
	mov	x0, x8
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp170:
	b	LBB32_1
LBB32_1:
Ltmp171:
	sub	x0, x29, #112                   ; =112
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp172:
	b	LBB32_2
LBB32_2:
	sub	x0, x29, #112                   ; =112
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp174:
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.17@PAGE
	add	x1, x1, l_.str.17@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp175:
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	b	LBB32_3
LBB32_3:
Ltmp176:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE5emptyEv
Ltmp177:
	str	w0, [sp, #92]                   ; 4-byte Folded Spill
	b	LBB32_4
LBB32_4:
Ltmp178:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #92]                   ; 4-byte Folded Reload
	and	w1, w1, #0x1
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEb
Ltmp179:
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	b	LBB32_5
LBB32_5:
Ltmp180:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp181:
	b	LBB32_6
LBB32_6:
Ltmp182:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.18@PAGE
	add	x1, x1, l_.str.18@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp183:
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB32_7
LBB32_7:
Ltmp184:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE4sizeEv
Ltmp185:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB32_8
LBB32_8:
Ltmp186:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp187:
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	b	LBB32_9
LBB32_9:
Ltmp188:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp189:
	b	LBB32_10
LBB32_10:
Ltmp190:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.19@PAGE
	add	x1, x1, l_.str.19@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp191:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB32_11
LBB32_11:
Ltmp192:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE8max_sizeEv
Ltmp193:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB32_12
LBB32_12:
Ltmp194:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp195:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB32_13
LBB32_13:
Ltmp196:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp197:
	b	LBB32_14
LBB32_14:
Ltmp198:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.20@PAGE
	add	x1, x1, l_.str.20@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp199:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB32_15
LBB32_15:
Ltmp200:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE8capacityEv
Ltmp201:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB32_16
LBB32_16:
Ltmp202:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEm
Ltmp203:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB32_17
LBB32_17:
Ltmp204:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp205:
	b	LBB32_18
LBB32_18:
Ltmp206:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.21@PAGE
	add	x1, x1, l_.str.21@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp207:
	b	LBB32_19
LBB32_19:
Ltmp208:
	sub	x0, x29, #72                    ; =72
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp209:
	b	LBB32_20
LBB32_20:
Ltmp210:
	sub	x0, x29, #72                    ; =72
	mov	x1, #15
	bl	__ZN5mystl6vectorIiE7reserveEm
Ltmp211:
	b	LBB32_21
LBB32_21:
Ltmp212:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.22@PAGE
	add	x1, x1, l_.str.22@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp213:
	b	LBB32_22
LBB32_22:
Ltmp214:
	sub	x0, x29, #72                    ; =72
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp215:
	b	LBB32_23
LBB32_23:
Ltmp216:
	sub	x0, x29, #72                    ; =72
	mov	x1, #17
	bl	__ZN5mystl6vectorIiE7reserveEm
Ltmp217:
	b	LBB32_24
LBB32_24:
Ltmp218:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.23@PAGE
	add	x1, x1, l_.str.23@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp219:
	b	LBB32_25
LBB32_25:
Ltmp220:
	sub	x0, x29, #72                    ; =72
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp221:
	b	LBB32_26
LBB32_26:
Ltmp222:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiE13shrink_to_fitEv
Ltmp223:
	b	LBB32_27
LBB32_27:
Ltmp224:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.24@PAGE
	add	x1, x1, l_.str.24@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp225:
	b	LBB32_28
LBB32_28:
Ltmp226:
	sub	x0, x29, #72                    ; =72
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp227:
	b	LBB32_29
LBB32_29:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	LBB32_35
; %bb.30:
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272                    ; =272
	ret
LBB32_31:
Ltmp228:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	b	LBB32_33
LBB32_32:
Ltmp173:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-120]
	stur	w1, [x29, #-124]
	sub	x0, x29, #112                   ; =112
	bl	__ZN5mystl6vectorIiED1Ev
LBB32_33:
	sub	x0, x29, #72                    ; =72
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.34:
	ldur	x0, [x29, #-120]
	bl	__Unwind_Resume
LBB32_35:
	bl	___stack_chk_fail
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table32:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp169-Lfunc_begin3           ;   Call between Lfunc_begin3 and Ltmp169
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp169-Lfunc_begin3           ; >> Call Site 2 <<
	.uleb128 Ltmp170-Ltmp169                ;   Call between Ltmp169 and Ltmp170
	.uleb128 Ltmp228-Lfunc_begin3           ;     jumps to Ltmp228
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp171-Lfunc_begin3           ; >> Call Site 3 <<
	.uleb128 Ltmp172-Ltmp171                ;   Call between Ltmp171 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin3           ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin3           ; >> Call Site 4 <<
	.uleb128 Ltmp227-Ltmp174                ;   Call between Ltmp174 and Ltmp227
	.uleb128 Ltmp228-Lfunc_begin3           ;     jumps to Ltmp228
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp227-Lfunc_begin3           ; >> Call Site 5 <<
	.uleb128 Lfunc_end3-Ltmp227             ;   Call between Ltmp227 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE5emptyEv    ; -- Begin function _ZN5mystl6vectorIiE5emptyEv
	.weak_definition	__ZN5mystl6vectorIiE5emptyEv
	.p2align	2
__ZN5mystl6vectorIiE5emptyEv:           ; @_ZN5mystl6vectorIiE5emptyEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE6_emptyEv
	and	w0, w0, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE8max_sizeEv ; -- Begin function _ZN5mystl6vectorIiE8max_sizeEv
	.weak_definition	__ZN5mystl6vectorIiE8max_sizeEv
	.p2align	2
__ZN5mystl6vectorIiE8max_sizeEv:        ; @_ZN5mystl6vectorIiE8max_sizeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE9_max_sizeEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7reserveEm  ; -- Begin function _ZN5mystl6vectorIiE7reserveEm
	.weak_definition	__ZN5mystl6vectorIiE7reserveEm
	.p2align	2
__ZN5mystl6vectorIiE7reserveEm:         ; @_ZN5mystl6vectorIiE7reserveEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiE8_reserveEm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE13shrink_to_fitEv ; -- Begin function _ZN5mystl6vectorIiE13shrink_to_fitEv
	.weak_definition	__ZN5mystl6vectorIiE13shrink_to_fitEv
	.p2align	2
__ZN5mystl6vectorIiE13shrink_to_fitEv:  ; @_ZN5mystl6vectorIiE13shrink_to_fitEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE14_shrink_to_fitEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16my_vector_test05v          ; -- Begin function _Z16my_vector_test05v
	.p2align	2
__Z16my_vector_test05v:                 ; @_Z16my_vector_test05v
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #224                    ; =224
	stp	x29, x30, [sp, #208]            ; 16-byte Folded Spill
	add	x29, sp, #208                   ; =208
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x9, [x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	stur	x10, [x29, #-8]
	adrp	x10, l_constinit.25@PAGE
	add	x10, x10, l_constinit.25@PAGEOFF
	ldr	q0, [x10]
	sub	x11, x29, #32                   ; =32
	stur	q0, [x29, #-32]
	ldr	w12, [x10, #16]
	stur	w12, [x29, #-16]
	stur	x11, [x29, #-72]
	mov	x10, #5
	stur	x10, [x29, #-64]
	ldur	x1, [x29, #-72]
	ldur	x2, [x29, #-64]
	sub	x10, x29, #56                   ; =56
	mov	x0, x10
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	str	x9, [sp, #80]                   ; 8-byte Folded Spill
	str	x10, [sp, #72]                  ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp229:
	sub	x8, x29, #96                    ; =96
	mov	x0, x8
	ldr	x1, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp230:
	b	LBB37_1
LBB37_1:
Ltmp231:
	sub	x0, x29, #96                    ; =96
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp232:
	b	LBB37_2
LBB37_2:
	sub	x0, x29, #96                    ; =96
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp234:
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.26@PAGE
	add	x1, x1, l_.str.26@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp235:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB37_3
LBB37_3:
Ltmp236:
	sub	x0, x29, #56                    ; =56
	mov	x1, #1
	bl	__ZN5mystl6vectorIiE2atEm
Ltmp237:
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	b	LBB37_4
LBB37_4:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp238:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp239:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB37_5
LBB37_5:
Ltmp240:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp241:
	b	LBB37_6
LBB37_6:
Ltmp242:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.27@PAGE
	add	x1, x1, l_.str.27@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp243:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB37_7
LBB37_7:
Ltmp244:
	sub	x0, x29, #56                    ; =56
	mov	x1, #1
	bl	__ZN5mystl6vectorIiEixEm
Ltmp245:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB37_8
LBB37_8:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp246:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp247:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB37_9
LBB37_9:
Ltmp248:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp249:
	b	LBB37_10
LBB37_10:
Ltmp250:
	ldr	x0, [sp, #88]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.28@PAGE
	add	x1, x1, l_.str.28@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp251:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB37_11
LBB37_11:
Ltmp252:
	sub	x0, x29, #56                    ; =56
	bl	__ZN5mystl6vectorIiE4dataEv
Ltmp253:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB37_12
LBB37_12:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	w1, [x8]
Ltmp254:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp255:
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB37_13
LBB37_13:
Ltmp256:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldr	x1, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp257:
	b	LBB37_14
LBB37_14:
	sub	x0, x29, #56                    ; =56
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	b.ne	LBB37_20
; %bb.15:
	ldp	x29, x30, [sp, #208]            ; 16-byte Folded Reload
	add	sp, sp, #224                    ; =224
	ret
LBB37_16:
Ltmp258:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #104]
	str	w1, [sp, #100]
	b	LBB37_18
LBB37_17:
Ltmp233:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #104]
	str	w1, [sp, #100]
	sub	x0, x29, #96                    ; =96
	bl	__ZN5mystl6vectorIiED1Ev
LBB37_18:
	sub	x0, x29, #56                    ; =56
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.19:
	ldr	x0, [sp, #104]
	bl	__Unwind_Resume
LBB37_20:
	bl	___stack_chk_fail
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table37:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp229-Lfunc_begin4           ;   Call between Lfunc_begin4 and Ltmp229
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp229-Lfunc_begin4           ; >> Call Site 2 <<
	.uleb128 Ltmp230-Ltmp229                ;   Call between Ltmp229 and Ltmp230
	.uleb128 Ltmp258-Lfunc_begin4           ;     jumps to Ltmp258
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp231-Lfunc_begin4           ; >> Call Site 3 <<
	.uleb128 Ltmp232-Ltmp231                ;   Call between Ltmp231 and Ltmp232
	.uleb128 Ltmp233-Lfunc_begin4           ;     jumps to Ltmp233
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp234-Lfunc_begin4           ; >> Call Site 4 <<
	.uleb128 Ltmp257-Ltmp234                ;   Call between Ltmp234 and Ltmp257
	.uleb128 Ltmp258-Lfunc_begin4           ;     jumps to Ltmp258
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp257-Lfunc_begin4           ; >> Call Site 5 <<
	.uleb128 Lfunc_end4-Ltmp257             ;   Call between Ltmp257 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE2atEm       ; -- Begin function _ZN5mystl6vectorIiE2atEm
	.weak_definition	__ZN5mystl6vectorIiE2atEm
	.p2align	2
__ZN5mystl6vectorIiE2atEm:              ; @_ZN5mystl6vectorIiE2atEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiEixEm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEixEm        ; -- Begin function _ZN5mystl6vectorIiEixEm
	.weak_definition	__ZN5mystl6vectorIiEixEm
	.p2align	2
__ZN5mystl6vectorIiEixEm:               ; @_ZN5mystl6vectorIiEixEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiE3_atEm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16my_vector_test06v          ; -- Begin function _Z16my_vector_test06v
	.p2align	2
__Z16my_vector_test06v:                 ; @_Z16my_vector_test06v
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #288                    ; =288
	stp	x28, x27, [sp, #256]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #272]            ; 16-byte Folded Spill
	add	x29, sp, #272                   ; =272
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x9, [x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	stur	x10, [x29, #-24]
	sub	x10, x29, #36                   ; =36
	mov	w11, #1
	stur	w11, [x29, #-36]
	mov	w11, #2
	stur	w11, [x29, #-32]
	mov	w11, #3
	stur	w11, [x29, #-28]
	stur	x10, [x29, #-112]
	mov	x10, #3
	stur	x10, [x29, #-104]
	ldur	x1, [x29, #-112]
	ldur	x2, [x29, #-104]
	sub	x10, x29, #96                   ; =96
	mov	x0, x10
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
	str	x10, [sp, #56]                  ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp259:
	add	x8, sp, #136                    ; =136
	mov	x0, x8
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp260:
	b	LBB40_1
LBB40_1:
Ltmp261:
	add	x0, sp, #136                    ; =136
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp262:
	b	LBB40_2
LBB40_2:
	add	x0, sp, #136                    ; =136
	bl	__ZN5mystl6vectorIiED1Ev
	add	x2, sp, #120                    ; =120
	mov	w8, #1
	str	w8, [sp, #120]
Ltmp264:
	sub	x9, x29, #96                    ; =96
	mov	x0, x9
	mov	x1, #1
	bl	__ZN5mystl6vectorIiE6assignEmRKi
Ltmp265:
	b	LBB40_3
LBB40_3:
Ltmp266:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.29@PAGE
	add	x1, x1, l_.str.29@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp267:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB40_4
LBB40_4:
Ltmp268:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp269:
	b	LBB40_5
LBB40_5:
Ltmp270:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp271:
	b	LBB40_6
LBB40_6:
Ltmp272:
	sub	x0, x29, #96                    ; =96
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp273:
	b	LBB40_7
LBB40_7:
Ltmp274:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp275:
	b	LBB40_8
LBB40_8:
Ltmp276:
	sub	x0, x29, #96                    ; =96
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp277:
	b	LBB40_9
LBB40_9:
Ltmp278:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.32@PAGE
	add	x1, x1, l_.str.32@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp279:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB40_10
LBB40_10:
Ltmp280:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp281:
	b	LBB40_11
LBB40_11:
Ltmp282:
	add	x0, sp, #96                     ; =96
	mov	x1, #1
	bl	__ZN5mystl6vectorIiEC1Em
Ltmp283:
	b	LBB40_12
LBB40_12:
Ltmp285:
	add	x0, sp, #96                     ; =96
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp286:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB40_13
LBB40_13:
Ltmp287:
	add	x0, sp, #96                     ; =96
	bl	__ZN5mystl6vectorIiE3endEv
Ltmp288:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB40_14
LBB40_14:
Ltmp289:
	sub	x0, x29, #96                    ; =96
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE6assignIPiLi0EEEvT_S4_
Ltmp290:
	b	LBB40_15
LBB40_15:
Ltmp291:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp292:
	b	LBB40_16
LBB40_16:
Ltmp293:
	sub	x0, x29, #96                    ; =96
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp294:
	b	LBB40_17
LBB40_17:
Ltmp295:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp296:
	b	LBB40_18
LBB40_18:
Ltmp297:
	sub	x0, x29, #96                    ; =96
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp298:
	b	LBB40_19
LBB40_19:
Ltmp299:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.33@PAGE
	add	x1, x1, l_.str.33@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp300:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB40_20
LBB40_20:
Ltmp301:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #64]                   ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp302:
	b	LBB40_21
LBB40_21:
	sub	x8, x29, #72                    ; =72
	mov	x0, x8
	adrp	x1, l_constinit.34@PAGE
	add	x1, x1, l_constinit.34@PAGEOFF
	mov	x2, #36
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	_memcpy
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #80]
	mov	x9, #9
	str	x9, [sp, #88]
	ldr	x1, [sp, #80]
	ldr	x2, [sp, #88]
Ltmp303:
	sub	x0, x29, #96                    ; =96
	bl	__ZN5mystl6vectorIiE6assignESt16initializer_listIiE
Ltmp304:
	b	LBB40_22
LBB40_22:
Ltmp305:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.30@PAGE
	add	x1, x1, l_.str.30@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp306:
	b	LBB40_23
LBB40_23:
Ltmp307:
	sub	x0, x29, #96                    ; =96
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp308:
	b	LBB40_24
LBB40_24:
Ltmp309:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	adrp	x1, l_.str.31@PAGE
	add	x1, x1, l_.str.31@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp310:
	b	LBB40_25
LBB40_25:
Ltmp311:
	sub	x0, x29, #96                    ; =96
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp312:
	b	LBB40_26
LBB40_26:
	add	x0, sp, #96                     ; =96
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #96                    ; =96
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	LBB40_33
; %bb.27:
	ldp	x29, x30, [sp, #272]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #256]            ; 16-byte Folded Reload
	add	sp, sp, #288                    ; =288
	ret
LBB40_28:
Ltmp284:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #128]
	str	w1, [sp, #124]
	b	LBB40_31
LBB40_29:
Ltmp263:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #128]
	str	w1, [sp, #124]
	add	x0, sp, #136                    ; =136
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB40_31
LBB40_30:
Ltmp313:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #128]
	str	w1, [sp, #124]
	add	x0, sp, #96                     ; =96
	bl	__ZN5mystl6vectorIiED1Ev
LBB40_31:
	sub	x0, x29, #96                    ; =96
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.32:
	ldr	x0, [sp, #128]
	bl	__Unwind_Resume
LBB40_33:
	bl	___stack_chk_fail
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table40:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp259-Lfunc_begin5           ;   Call between Lfunc_begin5 and Ltmp259
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp259-Lfunc_begin5           ; >> Call Site 2 <<
	.uleb128 Ltmp260-Ltmp259                ;   Call between Ltmp259 and Ltmp260
	.uleb128 Ltmp284-Lfunc_begin5           ;     jumps to Ltmp284
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp261-Lfunc_begin5           ; >> Call Site 3 <<
	.uleb128 Ltmp262-Ltmp261                ;   Call between Ltmp261 and Ltmp262
	.uleb128 Ltmp263-Lfunc_begin5           ;     jumps to Ltmp263
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp264-Lfunc_begin5           ; >> Call Site 4 <<
	.uleb128 Ltmp283-Ltmp264                ;   Call between Ltmp264 and Ltmp283
	.uleb128 Ltmp284-Lfunc_begin5           ;     jumps to Ltmp284
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp285-Lfunc_begin5           ; >> Call Site 5 <<
	.uleb128 Ltmp302-Ltmp285                ;   Call between Ltmp285 and Ltmp302
	.uleb128 Ltmp313-Lfunc_begin5           ;     jumps to Ltmp313
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp302-Lfunc_begin5           ; >> Call Site 6 <<
	.uleb128 Ltmp303-Ltmp302                ;   Call between Ltmp302 and Ltmp303
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp303-Lfunc_begin5           ; >> Call Site 7 <<
	.uleb128 Ltmp312-Ltmp303                ;   Call between Ltmp303 and Ltmp312
	.uleb128 Ltmp313-Lfunc_begin5           ;     jumps to Ltmp313
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp312-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Lfunc_end5-Ltmp312             ;   Call between Ltmp312 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE6assignEmRKi ; -- Begin function _ZN5mystl6vectorIiE6assignEmRKi
	.weak_definition	__ZN5mystl6vectorIiE6assignEmRKi
	.p2align	2
__ZN5mystl6vectorIiE6assignEmRKi:       ; @_ZN5mystl6vectorIiE6assignEmRKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl6vectorIiE7_assignEmRKi
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6assignIPiLi0EEEvT_S4_ ; -- Begin function _ZN5mystl6vectorIiE6assignIPiLi0EEEvT_S4_
	.weak_definition	__ZN5mystl6vectorIiE6assignIPiLi0EEEvT_S4_
	.p2align	2
__ZN5mystl6vectorIiE6assignIPiLi0EEEvT_S4_: ; @_ZN5mystl6vectorIiE6assignIPiLi0EEEvT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sub	x0, x29, #16                    ; =16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl17iterator_categoryIPiEENS_15iterator_traitsIT_E17iterator_categoryERKS3_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE7_assignIPiEEvT_S4_NS_20forward_iterator_tagE
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6assignESt16initializer_listIiE ; -- Begin function _ZN5mystl6vectorIiE6assignESt16initializer_listIiE
	.weak_definition	__ZN5mystl6vectorIiE6assignESt16initializer_listIiE
	.p2align	2
__ZN5mystl6vectorIiE6assignESt16initializer_listIiE: ; @_ZN5mystl6vectorIiE6assignESt16initializer_listIiE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	str	x0, [sp, #24]
	ldr	x0, [sp, #24]
	ldur	q0, [x29, #-16]
	str	q0, [sp]
	ldr	x1, [sp]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl6vectorIiE7_assignESt16initializer_listIiE
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16my_vector_test07v          ; -- Begin function _Z16my_vector_test07v
	.p2align	2
__Z16my_vector_test07v:                 ; @_Z16my_vector_test07v
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #320                    ; =320
	stp	x28, x27, [sp, #288]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #304]            ; 16-byte Folded Spill
	add	x29, sp, #304                   ; =304
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x9, [x9, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	adrp	x10, ___stack_chk_guard@GOTPAGE
	ldr	x10, [x10, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x10, [x10]
	stur	x10, [x29, #-24]
	sub	x10, x29, #36                   ; =36
	mov	w11, #1
	stur	w11, [x29, #-36]
	mov	w11, #2
	stur	w11, [x29, #-32]
	mov	w11, #3
	stur	w11, [x29, #-28]
	stur	x10, [x29, #-80]
	mov	x10, #3
	stur	x10, [x29, #-72]
	ldur	x1, [x29, #-80]
	ldur	x2, [x29, #-72]
	sub	x10, x29, #64                   ; =64
	mov	x0, x10
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	str	x9, [sp, #104]                  ; 8-byte Folded Spill
	str	x10, [sp, #96]                  ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp314:
	sub	x8, x29, #104                   ; =104
	mov	x0, x8
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp315:
	b	LBB44_1
LBB44_1:
Ltmp316:
	sub	x0, x29, #104                   ; =104
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp317:
	b	LBB44_2
LBB44_2:
	sub	x0, x29, #104                   ; =104
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp319:
	sub	x8, x29, #64                    ; =64
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp320:
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	b	LBB44_3
LBB44_3:
	sub	x2, x29, #120                   ; =120
	mov	w8, #4
	stur	w8, [x29, #-120]
Ltmp321:
	sub	x0, x29, #64                    ; =64
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE7emplaceIJiEEEPiPKiDpOT_
Ltmp322:
	b	LBB44_4
LBB44_4:
Ltmp323:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.35@PAGE
	add	x1, x1, l_.str.35@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp324:
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	b	LBB44_5
LBB44_5:
Ltmp325:
	ldr	x0, [sp, #80]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp326:
	b	LBB44_6
LBB44_6:
Ltmp327:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp328:
	b	LBB44_7
LBB44_7:
Ltmp329:
	sub	x0, x29, #64                    ; =64
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp330:
	b	LBB44_8
LBB44_8:
Ltmp331:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp332:
	b	LBB44_9
LBB44_9:
Ltmp333:
	sub	x0, x29, #64                    ; =64
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp334:
	b	LBB44_10
LBB44_10:
	sub	x1, x29, #124                   ; =124
	mov	w8, #5
	stur	w8, [x29, #-124]
Ltmp335:
	sub	x0, x29, #64                    ; =64
	bl	__ZN5mystl6vectorIiE12emplace_backIJiEEEvDpOT_
Ltmp336:
	b	LBB44_11
LBB44_11:
Ltmp337:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.38@PAGE
	add	x1, x1, l_.str.38@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp338:
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB44_12
LBB44_12:
Ltmp339:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp340:
	b	LBB44_13
LBB44_13:
Ltmp341:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp342:
	b	LBB44_14
LBB44_14:
Ltmp343:
	sub	x0, x29, #64                    ; =64
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp344:
	b	LBB44_15
LBB44_15:
Ltmp345:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp346:
	b	LBB44_16
LBB44_16:
Ltmp347:
	sub	x0, x29, #64                    ; =64
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp348:
	b	LBB44_17
LBB44_17:
	sub	x1, x29, #128                   ; =128
	mov	w8, #6
	stur	w8, [x29, #-128]
Ltmp349:
	sub	x0, x29, #64                    ; =64
	bl	__ZN5mystl6vectorIiE9push_backEOi
Ltmp350:
	b	LBB44_18
LBB44_18:
Ltmp351:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.39@PAGE
	add	x1, x1, l_.str.39@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp352:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB44_19
LBB44_19:
Ltmp353:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp354:
	b	LBB44_20
LBB44_20:
Ltmp355:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp356:
	b	LBB44_21
LBB44_21:
Ltmp357:
	sub	x0, x29, #64                    ; =64
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp358:
	b	LBB44_22
LBB44_22:
Ltmp359:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp360:
	b	LBB44_23
LBB44_23:
Ltmp361:
	sub	x0, x29, #64                    ; =64
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp362:
	b	LBB44_24
LBB44_24:
Ltmp363:
	sub	x0, x29, #64                    ; =64
	bl	__ZN5mystl6vectorIiE8pop_backEv
Ltmp364:
	b	LBB44_25
LBB44_25:
Ltmp365:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.40@PAGE
	add	x1, x1, l_.str.40@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp366:
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	b	LBB44_26
LBB44_26:
Ltmp367:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp368:
	b	LBB44_27
LBB44_27:
Ltmp369:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp370:
	b	LBB44_28
LBB44_28:
Ltmp371:
	sub	x0, x29, #64                    ; =64
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp372:
	b	LBB44_29
LBB44_29:
Ltmp373:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp374:
	b	LBB44_30
LBB44_30:
Ltmp375:
	sub	x0, x29, #64                    ; =64
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp376:
	b	LBB44_31
LBB44_31:
Ltmp377:
	add	x0, sp, #152                    ; =152
	sub	x1, x29, #64                    ; =64
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp378:
	b	LBB44_32
LBB44_32:
Ltmp380:
	add	x0, sp, #128                    ; =128
	add	x1, sp, #152                    ; =152
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp381:
	b	LBB44_33
LBB44_33:
Ltmp382:
	add	x0, sp, #128                    ; =128
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp383:
	b	LBB44_34
LBB44_34:
	add	x0, sp, #128                    ; =128
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp385:
	add	x8, sp, #152                    ; =152
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp386:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB44_35
LBB44_35:
	add	x2, sp, #124                    ; =124
	mov	w8, #3
	str	w8, [sp, #124]
Ltmp387:
	add	x0, sp, #152                    ; =152
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE6insertEPKiOi
Ltmp388:
	b	LBB44_36
LBB44_36:
Ltmp389:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.41@PAGE
	add	x1, x1, l_.str.41@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp390:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB44_37
LBB44_37:
Ltmp391:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp392:
	b	LBB44_38
LBB44_38:
Ltmp393:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.42@PAGE
	add	x1, x1, l_.str.42@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp394:
	b	LBB44_39
LBB44_39:
Ltmp395:
	add	x0, sp, #152                    ; =152
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp396:
	b	LBB44_40
LBB44_40:
Ltmp397:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.43@PAGE
	add	x1, x1, l_.str.43@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp398:
	b	LBB44_41
LBB44_41:
Ltmp399:
	add	x0, sp, #152                    ; =152
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp400:
	b	LBB44_42
LBB44_42:
Ltmp401:
	add	x0, sp, #152                    ; =152
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp402:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB44_43
LBB44_43:
Ltmp403:
	sub	x0, x29, #64                    ; =64
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp404:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB44_44
LBB44_44:
Ltmp405:
	sub	x0, x29, #64                    ; =64
	bl	__ZN5mystl6vectorIiE3endEv
Ltmp406:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB44_45
LBB44_45:
Ltmp407:
	add	x0, sp, #152                    ; =152
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE6insertIPiLi0EEEvPKiT_S6_
Ltmp408:
	b	LBB44_46
LBB44_46:
Ltmp409:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.44@PAGE
	add	x1, x1, l_.str.44@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp410:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB44_47
LBB44_47:
Ltmp411:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp412:
	b	LBB44_48
LBB44_48:
Ltmp413:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.36@PAGE
	add	x1, x1, l_.str.36@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp414:
	b	LBB44_49
LBB44_49:
Ltmp415:
	sub	x0, x29, #64                    ; =64
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp416:
	b	LBB44_50
LBB44_50:
Ltmp417:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.37@PAGE
	add	x1, x1, l_.str.37@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp418:
	b	LBB44_51
LBB44_51:
Ltmp419:
	sub	x0, x29, #64                    ; =64
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp420:
	b	LBB44_52
LBB44_52:
Ltmp421:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.42@PAGE
	add	x1, x1, l_.str.42@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp422:
	b	LBB44_53
LBB44_53:
Ltmp423:
	add	x0, sp, #152                    ; =152
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp424:
	b	LBB44_54
LBB44_54:
Ltmp425:
	ldr	x0, [sp, #112]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.43@PAGE
	add	x1, x1, l_.str.43@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp426:
	b	LBB44_55
LBB44_55:
Ltmp427:
	add	x0, sp, #152                    ; =152
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp428:
	b	LBB44_56
LBB44_56:
	add	x0, sp, #152                    ; =152
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #64                    ; =64
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	LBB44_65
; %bb.57:
	ldp	x29, x30, [sp, #304]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #288]            ; 16-byte Folded Reload
	add	sp, sp, #320                    ; =320
	ret
LBB44_58:
Ltmp379:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
	b	LBB44_63
LBB44_59:
Ltmp318:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
	sub	x0, x29, #104                   ; =104
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB44_63
LBB44_60:
Ltmp429:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
	b	LBB44_62
LBB44_61:
Ltmp384:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
	add	x0, sp, #128                    ; =128
	bl	__ZN5mystl6vectorIiED1Ev
LBB44_62:
	add	x0, sp, #152                    ; =152
	bl	__ZN5mystl6vectorIiED1Ev
LBB44_63:
	sub	x0, x29, #64                    ; =64
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.64:
	ldur	x0, [x29, #-112]
	bl	__Unwind_Resume
LBB44_65:
	bl	___stack_chk_fail
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table44:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp314-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp314
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp314-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp315-Ltmp314                ;   Call between Ltmp314 and Ltmp315
	.uleb128 Ltmp379-Lfunc_begin6           ;     jumps to Ltmp379
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp316-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Ltmp317-Ltmp316                ;   Call between Ltmp316 and Ltmp317
	.uleb128 Ltmp318-Lfunc_begin6           ;     jumps to Ltmp318
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp319-Lfunc_begin6           ; >> Call Site 4 <<
	.uleb128 Ltmp378-Ltmp319                ;   Call between Ltmp319 and Ltmp378
	.uleb128 Ltmp379-Lfunc_begin6           ;     jumps to Ltmp379
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp380-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp381-Ltmp380                ;   Call between Ltmp380 and Ltmp381
	.uleb128 Ltmp429-Lfunc_begin6           ;     jumps to Ltmp429
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp382-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp383-Ltmp382                ;   Call between Ltmp382 and Ltmp383
	.uleb128 Ltmp384-Lfunc_begin6           ;     jumps to Ltmp384
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp385-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Ltmp428-Ltmp385                ;   Call between Ltmp385 and Ltmp428
	.uleb128 Ltmp429-Lfunc_begin6           ;     jumps to Ltmp429
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp428-Lfunc_begin6           ; >> Call Site 8 <<
	.uleb128 Lfunc_end6-Ltmp428             ;   Call between Ltmp428 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE7emplaceIJiEEEPiPKiDpOT_ ; -- Begin function _ZN5mystl6vectorIiE7emplaceIJiEEEPiPKiDpOT_
	.weak_definition	__ZN5mystl6vectorIiE7emplaceIJiEEEPiPKiDpOT_
	.p2align	2
__ZN5mystl6vectorIiE7emplaceIJiEEEPiPKiDpOT_: ; @_ZN5mystl6vectorIiE7emplaceIJiEEEPiPKiDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE12emplace_backIJiEEEvDpOT_ ; -- Begin function _ZN5mystl6vectorIiE12emplace_backIJiEEEvDpOT_
	.weak_definition	__ZN5mystl6vectorIiE12emplace_backIJiEEEvDpOT_
	.p2align	2
__ZN5mystl6vectorIiE12emplace_backIJiEEEvDpOT_: ; @_ZN5mystl6vectorIiE12emplace_backIJiEEEvDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiE13_emplace_backIJRiEEEvDpOT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE9push_backEOi ; -- Begin function _ZN5mystl6vectorIiE9push_backEOi
	.weak_definition	__ZN5mystl6vectorIiE9push_backEOi
	.p2align	2
__ZN5mystl6vectorIiE9push_backEOi:      ; @_ZN5mystl6vectorIiE9push_backEOi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiE10_push_backERKi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE8pop_backEv ; -- Begin function _ZN5mystl6vectorIiE8pop_backEv
	.weak_definition	__ZN5mystl6vectorIiE8pop_backEv
	.p2align	2
__ZN5mystl6vectorIiE8pop_backEv:        ; @_ZN5mystl6vectorIiE8pop_backEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE9_pop_backEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6insertEPKiOi ; -- Begin function _ZN5mystl6vectorIiE6insertEPKiOi
	.weak_definition	__ZN5mystl6vectorIiE6insertEPKiOi
	.p2align	2
__ZN5mystl6vectorIiE6insertEPKiOi:      ; @_ZN5mystl6vectorIiE6insertEPKiOi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl6vectorIiE7_insertEPKiRS2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6insertIPiLi0EEEvPKiT_S6_ ; -- Begin function _ZN5mystl6vectorIiE6insertIPiLi0EEEvPKiT_S6_
	.weak_definition	__ZN5mystl6vectorIiE6insertIPiLi0EEEvPKiT_S6_
	.p2align	2
__ZN5mystl6vectorIiE6insertIPiLi0EEEvPKiT_S6_: ; @_ZN5mystl6vectorIiE6insertIPiLi0EEEvPKiT_S6_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	bl	__ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z16my_vector_test08v          ; -- Begin function _Z16my_vector_test08v
	.p2align	2
__Z16my_vector_test08v:                 ; @_Z16my_vector_test08v
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	sub	sp, sp, #496                    ; =496
	stp	x28, x27, [sp, #464]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #480]            ; 16-byte Folded Spill
	add	x29, sp, #480                   ; =480
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	x8, x29, #184                   ; =184
	adrp	x9, __ZNSt3__14coutE@GOTPAGE
	ldr	x9, [x9, __ZNSt3__14coutE@GOTPAGEOFF]
	adrp	x10, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGE
	ldr	x10, [x10, __ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_@GOTPAGEOFF]
	adrp	x11, ___stack_chk_guard@GOTPAGE
	ldr	x11, [x11, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x11, [x11]
	stur	x11, [x29, #-24]
	adrp	x11, l_constinit.45@PAGE
	add	x11, x11, l_constinit.45@PAGEOFF
	ldr	q0, [x11]
	sub	x12, x29, #48                   ; =48
	stur	q0, [x8, #136]
	ldr	w13, [x11, #16]
	stur	w13, [x29, #-32]
	str	x12, [x8, #32]
	mov	x11, #5
	str	x11, [x8, #40]
	ldr	x1, [x8, #32]
	ldr	x2, [x8, #40]
	sub	x11, x29, #136                  ; =136
	mov	x0, x11
	str	x8, [sp, #136]                  ; 8-byte Folded Spill
	str	x9, [sp, #128]                  ; 8-byte Folded Spill
	str	x10, [sp, #120]                 ; 8-byte Folded Spill
	str	x11, [sp, #112]                 ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp430:
	sub	x8, x29, #176                   ; =176
	mov	x0, x8
	ldr	x1, [sp, #112]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp431:
	b	LBB51_1
LBB51_1:
Ltmp432:
	sub	x0, x29, #176                   ; =176
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp433:
	b	LBB51_2
LBB51_2:
	sub	x0, x29, #176                   ; =176
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp435:
	sub	x8, x29, #136                   ; =136
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE3endEv
Ltmp436:
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	b	LBB51_3
LBB51_3:
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	subs	x1, x8, #4                      ; =4
Ltmp437:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiE5eraseEPKi
Ltmp438:
	b	LBB51_4
LBB51_4:
Ltmp439:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.46@PAGE
	add	x1, x1, l_.str.46@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp440:
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	b	LBB51_5
LBB51_5:
Ltmp441:
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp442:
	b	LBB51_6
LBB51_6:
Ltmp443:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp444:
	b	LBB51_7
LBB51_7:
Ltmp445:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp446:
	b	LBB51_8
LBB51_8:
Ltmp447:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp448:
	b	LBB51_9
LBB51_9:
Ltmp449:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp450:
	b	LBB51_10
LBB51_10:
Ltmp451:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp452:
	str	x0, [sp, #88]                   ; 8-byte Folded Spill
	b	LBB51_11
LBB51_11:
Ltmp453:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp454:
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	b	LBB51_12
LBB51_12:
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	add	x2, x8, #8                      ; =8
Ltmp455:
	sub	x0, x29, #136                   ; =136
	ldr	x1, [sp, #88]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE5eraseEPKiS3_
Ltmp456:
	b	LBB51_13
LBB51_13:
Ltmp457:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.49@PAGE
	add	x1, x1, l_.str.49@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp458:
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	b	LBB51_14
LBB51_14:
Ltmp459:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp460:
	b	LBB51_15
LBB51_15:
Ltmp461:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp462:
	b	LBB51_16
LBB51_16:
Ltmp463:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp464:
	b	LBB51_17
LBB51_17:
Ltmp465:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp466:
	b	LBB51_18
LBB51_18:
Ltmp467:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp468:
	b	LBB51_19
LBB51_19:
Ltmp469:
	sub	x0, x29, #216                   ; =216
	sub	x1, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp470:
	b	LBB51_20
LBB51_20:
Ltmp471:
	sub	x0, x29, #216                   ; =216
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp472:
	b	LBB51_21
LBB51_21:
	sub	x0, x29, #216                   ; =216
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp474:
	sub	x8, x29, #136                   ; =136
	mov	x0, x8
	mov	x1, #20
	bl	__ZN5mystl6vectorIiE6resizeEm
Ltmp475:
	b	LBB51_22
LBB51_22:
Ltmp476:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.50@PAGE
	add	x1, x1, l_.str.50@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp477:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB51_23
LBB51_23:
Ltmp478:
	ldr	x0, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp479:
	b	LBB51_24
LBB51_24:
Ltmp480:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp481:
	b	LBB51_25
LBB51_25:
Ltmp482:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp483:
	b	LBB51_26
LBB51_26:
Ltmp484:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp485:
	b	LBB51_27
LBB51_27:
Ltmp486:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp487:
	b	LBB51_28
LBB51_28:
	sub	x1, x29, #220                   ; =220
	mov	w8, #1
	stur	w8, [x29, #-220]
Ltmp488:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiE9push_backEOi
Ltmp489:
	b	LBB51_29
LBB51_29:
Ltmp490:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp491:
	b	LBB51_30
LBB51_30:
Ltmp492:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp493:
	b	LBB51_31
LBB51_31:
Ltmp494:
	sub	x0, x29, #136                   ; =136
	mov	x1, #1
	bl	__ZN5mystl6vectorIiE6resizeEm
Ltmp495:
	b	LBB51_32
LBB51_32:
Ltmp496:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.51@PAGE
	add	x1, x1, l_.str.51@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp497:
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	b	LBB51_33
LBB51_33:
Ltmp498:
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp499:
	b	LBB51_34
LBB51_34:
Ltmp500:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp501:
	b	LBB51_35
LBB51_35:
Ltmp502:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp503:
	b	LBB51_36
LBB51_36:
Ltmp504:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp505:
	b	LBB51_37
LBB51_37:
Ltmp506:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp507:
	b	LBB51_38
LBB51_38:
Ltmp508:
	add	x0, sp, #232                    ; =232
	sub	x1, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp509:
	b	LBB51_39
LBB51_39:
Ltmp510:
	add	x0, sp, #232                    ; =232
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp511:
	b	LBB51_40
LBB51_40:
	add	x0, sp, #232                    ; =232
	bl	__ZN5mystl6vectorIiED1Ev
Ltmp513:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	mov	x0, x8
	adrp	x1, l_.str.52@PAGE
	add	x1, x1, l_.str.52@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp514:
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	b	LBB51_41
LBB51_41:
Ltmp515:
	ldr	x0, [sp, #48]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp516:
	b	LBB51_42
LBB51_42:
	adrp	x8, l_constinit.53@PAGE
	add	x8, x8, l_constinit.53@PAGEOFF
	ldr	q0, [x8]
	sub	x9, x29, #80                    ; =80
	ldr	x10, [sp, #136]                 ; 8-byte Folded Reload
	stur	q0, [x10, #104]
	ldr	w11, [x8, #16]
	stur	w11, [x29, #-64]
	str	x9, [sp, #216]
	mov	x8, #5
	str	x8, [sp, #224]
	ldr	x1, [sp, #216]
	ldr	x2, [sp, #224]
Ltmp517:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiE6assignESt16initializer_listIiE
Ltmp518:
	b	LBB51_43
LBB51_43:
Ltmp519:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp520:
	b	LBB51_44
LBB51_44:
Ltmp521:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp522:
	b	LBB51_45
LBB51_45:
Ltmp523:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp524:
	b	LBB51_46
LBB51_46:
Ltmp525:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp526:
	b	LBB51_47
LBB51_47:
Ltmp527:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiE7reverseEv
Ltmp528:
	b	LBB51_48
LBB51_48:
Ltmp529:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.54@PAGE
	add	x1, x1, l_.str.54@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp530:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB51_49
LBB51_49:
Ltmp531:
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp532:
	b	LBB51_50
LBB51_50:
Ltmp533:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp534:
	b	LBB51_51
LBB51_51:
Ltmp535:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp536:
	b	LBB51_52
LBB51_52:
Ltmp537:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp538:
	b	LBB51_53
LBB51_53:
Ltmp539:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp540:
	b	LBB51_54
LBB51_54:
Ltmp541:
	add	x0, sp, #192                    ; =192
	sub	x1, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiEC1ERS1_
Ltmp542:
	b	LBB51_55
LBB51_55:
Ltmp543:
	add	x0, sp, #192                    ; =192
	bl	__Z5printIN5mystl6vectorIiEEEvT_
Ltmp544:
	b	LBB51_56
LBB51_56:
	add	x0, sp, #192                    ; =192
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, l_constinit.55@PAGE
	add	x8, x8, l_constinit.55@PAGEOFF
	ldr	q0, [x8]
	sub	x9, x29, #112                   ; =112
	ldr	x10, [sp, #136]                 ; 8-byte Folded Reload
	stur	q0, [x10, #72]
	ldr	w11, [x8, #16]
	stur	w11, [x29, #-96]
	str	x9, [sp, #152]
	mov	x8, #5
	str	x8, [sp, #160]
	ldr	x1, [sp, #152]
	ldr	x2, [sp, #160]
Ltmp546:
	add	x8, sp, #168                    ; =168
	mov	x0, x8
	bl	__ZN5mystl6vectorIiEC1ESt16initializer_listIiE
Ltmp547:
	b	LBB51_57
LBB51_57:
Ltmp549:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.56@PAGE
	add	x1, x1, l_.str.56@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp550:
	b	LBB51_58
LBB51_58:
Ltmp551:
	add	x0, sp, #168                    ; =168
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp552:
	b	LBB51_59
LBB51_59:
Ltmp553:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.57@PAGE
	add	x1, x1, l_.str.57@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp554:
	b	LBB51_60
LBB51_60:
Ltmp555:
	add	x0, sp, #168                    ; =168
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp556:
	b	LBB51_61
LBB51_61:
	sub	x0, x29, #136                   ; =136
	add	x1, sp, #168                    ; =168
	bl	__ZN5mystl6vectorIiE4swapERS1_
Ltmp557:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.58@PAGE
	add	x1, x1, l_.str.58@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp558:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB51_62
LBB51_62:
Ltmp559:
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #120]                  ; 8-byte Folded Reload
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEPFRS3_S4_E
Ltmp560:
	b	LBB51_63
LBB51_63:
Ltmp561:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp562:
	b	LBB51_64
LBB51_64:
Ltmp563:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp564:
	b	LBB51_65
LBB51_65:
Ltmp565:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp566:
	b	LBB51_66
LBB51_66:
Ltmp567:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp568:
	b	LBB51_67
LBB51_67:
Ltmp569:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.56@PAGE
	add	x1, x1, l_.str.56@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp570:
	b	LBB51_68
LBB51_68:
Ltmp571:
	add	x0, sp, #168                    ; =168
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp572:
	b	LBB51_69
LBB51_69:
Ltmp573:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.57@PAGE
	add	x1, x1, l_.str.57@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp574:
	b	LBB51_70
LBB51_70:
Ltmp575:
	add	x0, sp, #168                    ; =168
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp576:
	b	LBB51_71
LBB51_71:
	add	x2, sp, #148                    ; =148
	mov	w8, #10
	str	w8, [sp, #148]
Ltmp577:
	sub	x0, x29, #136                   ; =136
	mov	x1, #10
	bl	__ZN5mystl6vectorIiE6assignEmRKi
Ltmp578:
	b	LBB51_72
LBB51_72:
Ltmp579:
	add	x0, sp, #168                    ; =168
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp580:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB51_73
LBB51_73:
Ltmp581:
	add	x0, sp, #168                    ; =168
	bl	__ZN5mystl6vectorIiE3endEv
Ltmp582:
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	b	LBB51_74
LBB51_74:
Ltmp583:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiE5beginEv
Ltmp584:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB51_75
LBB51_75:
Ltmp585:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl10swap_rangeIPiS1_EET0_T_S3_S2_
Ltmp586:
	b	LBB51_76
LBB51_76:
Ltmp587:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.47@PAGE
	add	x1, x1, l_.str.47@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp588:
	b	LBB51_77
LBB51_77:
Ltmp589:
	sub	x0, x29, #136                   ; =136
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp590:
	b	LBB51_78
LBB51_78:
Ltmp591:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.48@PAGE
	add	x1, x1, l_.str.48@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp592:
	b	LBB51_79
LBB51_79:
Ltmp593:
	sub	x0, x29, #136                   ; =136
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp594:
	b	LBB51_80
LBB51_80:
Ltmp595:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.56@PAGE
	add	x1, x1, l_.str.56@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp596:
	b	LBB51_81
LBB51_81:
Ltmp597:
	add	x0, sp, #168                    ; =168
	bl	__Z9printInfoRN5mystl6vectorIiEE
Ltmp598:
	b	LBB51_82
LBB51_82:
Ltmp599:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	adrp	x1, l_.str.57@PAGE
	add	x1, x1, l_.str.57@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
Ltmp600:
	b	LBB51_83
LBB51_83:
Ltmp601:
	add	x0, sp, #168                    ; =168
	bl	__Z8printValRN5mystl6vectorIiEE
Ltmp602:
	b	LBB51_84
LBB51_84:
	add	x0, sp, #168                    ; =168
	bl	__ZN5mystl6vectorIiED1Ev
	sub	x8, x29, #136                   ; =136
	mov	x0, x8
	bl	__ZN5mystl6vectorIiED1Ev
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.ne	LBB51_94
; %bb.85:
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #464]            ; 16-byte Folded Reload
	add	sp, sp, #496                    ; =496
	ret
LBB51_86:
Ltmp548:
                                        ; kill: def $w1 killed $w1 killed $x1
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x0, [x8]
	stur	w1, [x29, #-188]
	b	LBB51_92
LBB51_87:
Ltmp434:
                                        ; kill: def $w1 killed $w1 killed $x1
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x0, [x8]
	stur	w1, [x29, #-188]
	sub	x0, x29, #176                   ; =176
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB51_92
LBB51_88:
Ltmp473:
                                        ; kill: def $w1 killed $w1 killed $x1
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x0, [x8]
	stur	w1, [x29, #-188]
	sub	x0, x29, #216                   ; =216
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB51_92
LBB51_89:
Ltmp512:
                                        ; kill: def $w1 killed $w1 killed $x1
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x0, [x8]
	stur	w1, [x29, #-188]
	add	x0, sp, #232                    ; =232
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB51_92
LBB51_90:
Ltmp545:
                                        ; kill: def $w1 killed $w1 killed $x1
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x0, [x8]
	stur	w1, [x29, #-188]
	add	x0, sp, #192                    ; =192
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB51_92
LBB51_91:
Ltmp603:
                                        ; kill: def $w1 killed $w1 killed $x1
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	str	x0, [x8]
	stur	w1, [x29, #-188]
	add	x0, sp, #168                    ; =168
	bl	__ZN5mystl6vectorIiED1Ev
LBB51_92:
	sub	x0, x29, #136                   ; =136
	bl	__ZN5mystl6vectorIiED1Ev
; %bb.93:
	ldr	x8, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x0, [x8]
	bl	__Unwind_Resume
LBB51_94:
	bl	___stack_chk_fail
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table51:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Lfunc_begin7-Lfunc_begin7      ; >> Call Site 1 <<
	.uleb128 Ltmp430-Lfunc_begin7           ;   Call between Lfunc_begin7 and Ltmp430
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp430-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp431-Ltmp430                ;   Call between Ltmp430 and Ltmp431
	.uleb128 Ltmp548-Lfunc_begin7           ;     jumps to Ltmp548
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp432-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Ltmp433-Ltmp432                ;   Call between Ltmp432 and Ltmp433
	.uleb128 Ltmp434-Lfunc_begin7           ;     jumps to Ltmp434
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp435-Lfunc_begin7           ; >> Call Site 4 <<
	.uleb128 Ltmp470-Ltmp435                ;   Call between Ltmp435 and Ltmp470
	.uleb128 Ltmp548-Lfunc_begin7           ;     jumps to Ltmp548
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp471-Lfunc_begin7           ; >> Call Site 5 <<
	.uleb128 Ltmp472-Ltmp471                ;   Call between Ltmp471 and Ltmp472
	.uleb128 Ltmp473-Lfunc_begin7           ;     jumps to Ltmp473
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp474-Lfunc_begin7           ; >> Call Site 6 <<
	.uleb128 Ltmp509-Ltmp474                ;   Call between Ltmp474 and Ltmp509
	.uleb128 Ltmp548-Lfunc_begin7           ;     jumps to Ltmp548
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp510-Lfunc_begin7           ; >> Call Site 7 <<
	.uleb128 Ltmp511-Ltmp510                ;   Call between Ltmp510 and Ltmp511
	.uleb128 Ltmp512-Lfunc_begin7           ;     jumps to Ltmp512
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp513-Lfunc_begin7           ; >> Call Site 8 <<
	.uleb128 Ltmp542-Ltmp513                ;   Call between Ltmp513 and Ltmp542
	.uleb128 Ltmp548-Lfunc_begin7           ;     jumps to Ltmp548
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp543-Lfunc_begin7           ; >> Call Site 9 <<
	.uleb128 Ltmp544-Ltmp543                ;   Call between Ltmp543 and Ltmp544
	.uleb128 Ltmp545-Lfunc_begin7           ;     jumps to Ltmp545
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp546-Lfunc_begin7           ; >> Call Site 10 <<
	.uleb128 Ltmp547-Ltmp546                ;   Call between Ltmp546 and Ltmp547
	.uleb128 Ltmp548-Lfunc_begin7           ;     jumps to Ltmp548
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp549-Lfunc_begin7           ; >> Call Site 11 <<
	.uleb128 Ltmp602-Ltmp549                ;   Call between Ltmp549 and Ltmp602
	.uleb128 Ltmp603-Lfunc_begin7           ;     jumps to Ltmp603
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp602-Lfunc_begin7           ; >> Call Site 12 <<
	.uleb128 Lfunc_end7-Ltmp602             ;   Call between Ltmp602 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE5eraseEPKi  ; -- Begin function _ZN5mystl6vectorIiE5eraseEPKi
	.weak_definition	__ZN5mystl6vectorIiE5eraseEPKi
	.p2align	2
__ZN5mystl6vectorIiE5eraseEPKi:         ; @_ZN5mystl6vectorIiE5eraseEPKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiE6_eraseEPKi
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5eraseEPKiS3_ ; -- Begin function _ZN5mystl6vectorIiE5eraseEPKiS3_
	.weak_definition	__ZN5mystl6vectorIiE5eraseEPKiS3_
	.p2align	2
__ZN5mystl6vectorIiE5eraseEPKiS3_:      ; @_ZN5mystl6vectorIiE5eraseEPKiS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl6vectorIiE6_eraseEPKiS3_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6resizeEm   ; -- Begin function _ZN5mystl6vectorIiE6resizeEm
	.weak_definition	__ZN5mystl6vectorIiE6resizeEm
	.p2align	2
__ZN5mystl6vectorIiE6resizeEm:          ; @_ZN5mystl6vectorIiE6resizeEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiE7_resizeEm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7reverseEv  ; -- Begin function _ZN5mystl6vectorIiE7reverseEv
	.weak_definition	__ZN5mystl6vectorIiE7reverseEv
	.p2align	2
__ZN5mystl6vectorIiE7reverseEv:         ; @_ZN5mystl6vectorIiE7reverseEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl6vectorIiE8_reverseEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE4swapERS1_  ; -- Begin function _ZN5mystl6vectorIiE4swapERS1_
	.weak_definition	__ZN5mystl6vectorIiE4swapERS1_
	.p2align	2
__ZN5mystl6vectorIiE4swapERS1_:         ; @_ZN5mystl6vectorIiE4swapERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl6vectorIiE5_swapERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl10swap_rangeIPiS1_EET0_T_S3_S2_ ; -- Begin function _ZN5mystl10swap_rangeIPiS1_EET0_T_S3_S2_
	.weak_definition	__ZN5mystl10swap_rangeIPiS1_EET0_T_S3_S2_
	.p2align	2
__ZN5mystl10swap_rangeIPiS1_EET0_T_S3_S2_: ; @_ZN5mystl10swap_rangeIPiS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZNSt3__1L11swap_rangesIPiS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__Z16my_vector_test01v
	bl	__Z16my_vector_test02v
	bl	__Z16my_vector_test03v
	bl	__Z16my_vector_test04v
	bl	__Z16my_vector_test05v
	bl	__Z16my_vector_test06v
	bl	__Z16my_vector_test07v
	bl	__Z16my_vector_test08v
	mov	w8, #0
	mov	x0, x8
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6_beginEv   ; -- Begin function _ZN5mystl6vectorIiE6_beginEv
	.weak_definition	__ZN5mystl6vectorIiE6_beginEv
	.p2align	2
__ZN5mystl6vectorIiE6_beginEv:          ; @_ZN5mystl6vectorIiE6_beginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE4_endEv     ; -- Begin function _ZN5mystl6vectorIiE4_endEv
	.weak_definition	__ZN5mystl6vectorIiE4_endEv
	.p2align	2
__ZN5mystl6vectorIiE4_endEv:            ; @_ZN5mystl6vectorIiE4_endEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	sub	sp, sp, #160                    ; =160
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144                   ; =144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x1, [x29, #-8]
Ltmp606:
	sub	x0, x29, #40                    ; =40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp607:
	b	LBB61_1
LBB61_1:
Ltmp609:
	sub	x0, x29, #40                    ; =40
	bl	__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
Ltmp610:
	str	w0, [sp, #68]                   ; 4-byte Folded Spill
	b	LBB61_2
LBB61_2:
	ldr	w8, [sp, #68]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB61_3
	b	LBB61_18
LBB61_3:
	ldur	x1, [x29, #-8]
	add	x0, sp, #72                     ; =72
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	ldur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
Ltmp611:
	mov	x0, x8
	str	x1, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base5flagsEv
Ltmp612:
	str	w0, [sp, #52]                   ; 4-byte Folded Spill
	b	LBB61_4
LBB61_4:
	mov	w8, #176
	ldr	w9, [sp, #52]                   ; 4-byte Folded Reload
	and	w8, w9, w8
	cmp	w8, #32                         ; =32
	b.ne	LBB61_6
; %bb.5:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	add	x8, x8, x9
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB61_7
LBB61_6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
LBB61_7:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x9, [x29, #-16]
	ldur	x10, [x29, #-24]
	add	x3, x9, x10
	ldur	x9, [x29, #-8]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x4, x9, x10
	ldur	x9, [x29, #-8]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x0, x9, x10
Ltmp613:
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	str	x3, [sp, #24]                   ; 8-byte Folded Spill
	str	x4, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
Ltmp614:
	str	w0, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB61_8
LBB61_8:
	ldr	x0, [sp, #72]
Ltmp615:
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x4, [sp, #16]                   ; 8-byte Folded Reload
	ldr	w5, [sp, #12]                   ; 4-byte Folded Reload
	sxtb	w5, w5
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp616:
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB61_9
LBB61_9:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	sub	x8, x29, #64                    ; =64
	stur	x0, [x29, #-64]
	mov	x0, x8
	bl	__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	tbnz	w0, #0, LBB61_10
	b	LBB61_17
LBB61_10:
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
Ltmp617:
	mov	w1, #5
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
Ltmp618:
	b	LBB61_11
LBB61_11:
	b	LBB61_17
LBB61_12:
Ltmp608:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-48]
	stur	w1, [x29, #-52]
	b	LBB61_14
LBB61_13:
Ltmp619:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-48]
	stur	w1, [x29, #-52]
	sub	x0, x29, #40                    ; =40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB61_14:
	ldur	x0, [x29, #-48]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x8, x8, x9
Ltmp620:
	mov	x0, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp621:
	b	LBB61_15
LBB61_15:
	bl	___cxa_end_catch
LBB61_16:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	add	sp, sp, #160                    ; =160
	ret
LBB61_17:
LBB61_18:
	sub	x0, x29, #40                    ; =40
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB61_16
LBB61_19:
Ltmp622:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-48]
	stur	w1, [x29, #-52]
Ltmp623:
	bl	___cxa_end_catch
Ltmp624:
	b	LBB61_20
LBB61_20:
; %bb.21:
	ldur	x0, [x29, #-48]
	bl	__Unwind_Resume
LBB61_22:
Ltmp625:
	bl	___clang_call_terminate
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table61:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Ltmp606-Lfunc_begin8           ; >> Call Site 1 <<
	.uleb128 Ltmp607-Ltmp606                ;   Call between Ltmp606 and Ltmp607
	.uleb128 Ltmp608-Lfunc_begin8           ;     jumps to Ltmp608
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp609-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp618-Ltmp609                ;   Call between Ltmp609 and Ltmp618
	.uleb128 Ltmp619-Lfunc_begin8           ;     jumps to Ltmp619
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp618-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Ltmp620-Ltmp618                ;   Call between Ltmp618 and Ltmp620
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp620-Lfunc_begin8           ; >> Call Site 4 <<
	.uleb128 Ltmp621-Ltmp620                ;   Call between Ltmp620 and Ltmp621
	.uleb128 Ltmp622-Lfunc_begin8           ;     jumps to Ltmp622
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp621-Lfunc_begin8           ; >> Call Site 5 <<
	.uleb128 Ltmp623-Ltmp621                ;   Call between Ltmp621 and Ltmp623
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp623-Lfunc_begin8           ; >> Call Site 6 <<
	.uleb128 Ltmp624-Ltmp623                ;   Call between Ltmp623 and Ltmp624
	.uleb128 Ltmp625-Lfunc_begin8           ;     jumps to Ltmp625
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp624-Lfunc_begin8           ; >> Call Site 7 <<
	.uleb128 Lfunc_end8-Ltmp624             ;   Call between Ltmp624 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__111char_traitsIcE6lengthEPKc ; -- Begin function _ZNSt3__111char_traitsIcE6lengthEPKc
	.weak_definition	__ZNSt3__111char_traitsIcE6lengthEPKc
	.p2align	2
__ZNSt3__111char_traitsIcE6lengthEPKc:  ; @_ZNSt3__111char_traitsIcE6lengthEPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	_strlen
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv: ; @_ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldrb	w9, [x8]
	and	w0, w9, #0x1
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #176                    ; =176
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160                   ; =160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	stur	x4, [x29, #-48]
	sturb	w5, [x29, #-49]
	ldur	x8, [x29, #-16]
	cbnz	x8, LBB64_2
; %bb.1:
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB64_23
LBB64_2:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-48]
	bl	__ZNKSt3__18ios_base5widthEv
	stur	x0, [x29, #-72]
	ldur	x8, [x29, #-72]
	ldur	x9, [x29, #-64]
	subs	x8, x8, x9
	b.le	LBB64_4
; %bb.3:
	ldur	x8, [x29, #-64]
	ldur	x9, [x29, #-72]
	subs	x8, x9, x8
	stur	x8, [x29, #-72]
	b	LBB64_5
LBB64_4:
	stur	xzr, [x29, #-72]
LBB64_5:
	ldur	x8, [x29, #-32]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	cmp	x8, #0                          ; =0
	cset	w10, le
	tbnz	w10, #0, LBB64_9
; %bb.6:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-24]
	ldr	x2, [sp, #80]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	ldr	x8, [sp, #80]
	subs	x8, x0, x8
	b.eq	LBB64_8
; %bb.7:
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB64_23
LBB64_8:
LBB64_9:
	ldur	x8, [x29, #-72]
	cmp	x8, #0                          ; =0
	cset	w9, le
	tbnz	w9, #0, LBB64_18
; %bb.10:
	ldur	x1, [x29, #-72]
	ldursb	w2, [x29, #-49]
	add	x8, sp, #56                     ; =56
	mov	x0, x8
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #32]                   ; 8-byte Folded Reload
	mov	x0, x9
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	ldur	x2, [x29, #-72]
Ltmp627:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
Ltmp628:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB64_11
LBB64_11:
	ldur	x8, [x29, #-72]
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	subs	x8, x9, x8
	b.eq	LBB64_14
; %bb.12:
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	mov	w9, #1
	str	w9, [sp, #40]
	b	LBB64_15
LBB64_13:
Ltmp629:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #48]
	str	w1, [sp, #44]
	add	x0, sp, #56                     ; =56
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	b	LBB64_24
LBB64_14:
	str	wzr, [sp, #40]
LBB64_15:
	add	x0, sp, #56                     ; =56
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	ldr	w8, [sp, #40]
	cbz	w8, LBB64_17
	b	LBB64_16
LBB64_16:
	b	LBB64_23
LBB64_17:
LBB64_18:
	ldur	x8, [x29, #-40]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	str	x8, [sp, #80]
	ldr	x8, [sp, #80]
	cmp	x8, #0                          ; =0
	cset	w10, le
	tbnz	w10, #0, LBB64_22
; %bb.19:
	ldur	x0, [x29, #-16]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #80]
	bl	__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	ldr	x8, [sp, #80]
	subs	x8, x0, x8
	b.eq	LBB64_21
; %bb.20:
	stur	xzr, [x29, #-16]
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
	b	LBB64_23
LBB64_21:
LBB64_22:
	ldur	x0, [x29, #-48]
	mov	x8, #0
	mov	x1, x8
	bl	__ZNSt3__18ios_base5widthEl
	ldur	x8, [x29, #-16]
	stur	x8, [x29, #-8]
LBB64_23:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	add	sp, sp, #176                    ; =176
	ret
LBB64_24:
	ldr	x0, [sp, #48]
	bl	__Unwind_Resume
; %bb.25:
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table64:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ; >> Call Site 1 <<
	.uleb128 Ltmp627-Lfunc_begin9           ;   Call between Lfunc_begin9 and Ltmp627
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp627-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp628-Ltmp627                ;   Call between Ltmp627 and Ltmp628
	.uleb128 Ltmp629-Lfunc_begin9           ;     jumps to Ltmp629
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp628-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp628             ;   Call between Ltmp628 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1ERNS_13basic_ostreamIcS2_EE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__18ios_base5flagsEv
__ZNKSt3__18ios_base5flagsEv:           ; @_ZNKSt3__18ios_base5flagsEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	w0, [x8, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__111char_traitsIcE3eofEv
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w1, [x8, #144]
	bl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	tbnz	w0, #0, LBB67_1
	b	LBB67_2
LBB67_1:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	mov	w8, #32
	sxtb	w1, w8
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
	sxtb	w8, w0
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	w8, [x9, #144]
LBB67_2:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	w9, [x8, #144]
	sxtb	w0, w9
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv: ; @_ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	cmp	x8, #0                          ; =0
	cset	w9, eq
	and	w0, w9, #0x1
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj: ; @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateEj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x0, [sp, #8]
	ldr	w1, [sp, #4]
	bl	__ZNSt3__18ios_base8setstateEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__18ios_base5widthEv
__ZNKSt3__18ios_base5widthEv:           ; @_ZNKSt3__18ios_base5widthEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #24]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl: ; @_ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnEPKcl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x9, [x8]
	ldr	x9, [x9, #96]
	mov	x0, x8
	blr	x9
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	bl	__ZNSt3__1L12__to_addressIKcEEPT_S3_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__18ios_base5widthEl
__ZNSt3__18ios_base5widthEl:            ; @_ZNSt3__18ios_base5widthEl
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [x8, #24]
	str	x9, [sp, #8]
	ldr	x9, [sp, #16]
	str	x9, [x8, #24]
	ldr	x0, [sp, #8]
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc: ; @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2Emc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	strb	w2, [sp, #15]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	add	x1, sp, #14                     ; =14
	add	x2, sp, #13                     ; =13
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x1, [sp, #16]
	ldrsb	w2, [sp, #15]
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_: ; @_ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2INS_18__default_init_tagESA_EEOT_OT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	ldur	x0, [x29, #-16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	bl	__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
	ldr	x8, [sp, #24]
	mov	x0, x8
	bl	__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	bl	__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
__ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE: ; @_ZNSt3__1L7forwardINS_18__default_init_tagEEEOT_RNS_16remove_referenceIS2_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	ldr	x0, [sp]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE: ; @_ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2ENS_18__default_init_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x8, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt3__19allocatorIcEC2Ev
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__19allocatorIcEC2Ev
__ZNSt3__19allocatorIcEC2Ev:            ; @_ZNSt3__19allocatorIcEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L12__to_addressIKcEEPT_S3_
__ZNSt3__1L12__to_addressIKcEEPT_S3_:   ; @_ZNSt3__1L12__to_addressIKcEEPT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	mov	x0, x8
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	tbnz	w0, #0, LBB84_1
	b	LBB84_2
LBB84_1:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB84_3
LBB84_2:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
LBB84_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldrb	w8, [x0, #23]
	mov	x9, x8
	tst	x9, #0x80
	cset	w8, ne
	and	w0, w8, #0x1
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	ldr	x0, [x0]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	bl	__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv: ; @_ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv: ; @_ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
__ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_: ; @_ZNSt3__114pointer_traitsIPKcE10pointer_toERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNSt3__1L9addressofIKcEEPT_RS2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L9addressofIKcEEPT_RS2_
__ZNSt3__1L9addressofIKcEEPT_RS2_:      ; @_ZNSt3__1L9addressofIKcEEPT_RS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE: ; @_ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2ERNS_13basic_ostreamIcS2_EE
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	ldr	x10, [x9]
	ldur	x10, [x10, #-24]
	add	x0, x9, x10
Ltmp640:
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
Ltmp641:
	str	x0, [sp]                        ; 8-byte Folded Spill
	b	LBB92_1
LBB92_1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x9]
	mov	x0, x9
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
LBB92_2:
Ltmp642:
	bl	___clang_call_terminate
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table92:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase1-Lttbaseref1
Lttbaseref1:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp640-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp641-Ltmp640                ;   Call between Ltmp640 and Ltmp641
	.uleb128 Ltmp642-Lfunc_begin10          ;     jumps to Ltmp642
	.byte	1                               ;   On action: 1
Lcst_end10:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNKSt3__18ios_base5rdbufEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__18ios_base5rdbufEv
__ZNKSt3__18ios_base5rdbufEv:           ; @_ZNKSt3__18ios_base5rdbufEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #40]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii ; -- Begin function _ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	2
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ; @_ZNSt3__111char_traitsIcE11eq_int_typeEii
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	w0, [sp, #12]
	str	w1, [sp, #8]
	ldr	w8, [sp, #12]
	ldr	w9, [sp, #8]
	subs	w8, w8, w9
	cset	w9, eq
	and	w0, w9, #0x1
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__111char_traitsIcE3eofEv ; -- Begin function _ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	2
__ZNSt3__111char_traitsIcE3eofEv:       ; @_ZNSt3__111char_traitsIcE3eofEv
	.cfi_startproc
; %bb.0:
	mov	w0, #-1
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc: ; @_ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenEc
Lfunc_begin11:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception11
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sturb	w1, [x29, #-9]
	ldur	x0, [x29, #-8]
	sub	x8, x29, #24                    ; =24
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp645:
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
Ltmp646:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB97_1
LBB97_1:
	ldursb	w1, [x29, #-9]
Ltmp647:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZNKSt3__15ctypeIcE5widenEc
Ltmp648:
	str	w0, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB97_2
LBB97_2:
	sub	x0, x29, #24                    ; =24
	bl	__ZNSt3__16localeD1Ev
	ldr	w1, [sp, #4]                    ; 4-byte Folded Reload
	sxtb	w8, w1
	mov	x0, x8
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
LBB97_3:
Ltmp649:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #32]
	str	w1, [sp, #28]
	sub	x0, x29, #24                    ; =24
	bl	__ZNSt3__16localeD1Ev
; %bb.4:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
Lfunc_end11:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table97:
Lexception11:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end11-Lcst_begin11
Lcst_begin11:
	.uleb128 Lfunc_begin11-Lfunc_begin11    ; >> Call Site 1 <<
	.uleb128 Ltmp645-Lfunc_begin11          ;   Call between Lfunc_begin11 and Ltmp645
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp645-Lfunc_begin11          ; >> Call Site 2 <<
	.uleb128 Ltmp648-Ltmp645                ;   Call between Ltmp645 and Ltmp648
	.uleb128 Ltmp649-Lfunc_begin11          ;     jumps to Ltmp649
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp648-Lfunc_begin11          ; >> Call Site 3 <<
	.uleb128 Lfunc_end11-Ltmp648            ;   Call between Ltmp648 and Lfunc_end11
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end11:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
__ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE: ; @_ZNSt3__1L9use_facetINS_5ctypeIcEEEERKT_RKNS_6localeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt3__15ctypeIcE5widenEc
__ZNKSt3__15ctypeIcE5widenEc:           ; @_ZNKSt3__15ctypeIcE5widenEc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	strb	w1, [sp, #7]
	ldr	x8, [sp, #8]
	ldrsb	w1, [sp, #7]
	ldr	x9, [x8]
	ldr	x9, [x9, #56]
	mov	x0, x8
	blr	x9
	sxtb	w0, w0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__18ios_base8setstateEj
__ZNSt3__18ios_base8setstateEj:         ; @_ZNSt3__18ios_base8setstateEj
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	w1, [sp, #4]
	ldr	x8, [sp, #8]
	ldr	w9, [x8, #32]
	ldr	w10, [sp, #4]
	orr	w1, w9, w10
	mov	x0, x8
	bl	__ZNSt3__18ios_base5clearEj
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5_sizeEv    ; -- Begin function _ZN5mystl6vectorIiE5_sizeEv
	.weak_definition	__ZN5mystl6vectorIiE5_sizeEv
	.p2align	2
__ZN5mystl6vectorIiE5_sizeEv:           ; @_ZN5mystl6vectorIiE5_sizeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #8]
	ldr	x8, [x8]
	subs	x8, x9, x8
	mov	x9, #4
	sdiv	x0, x8, x9
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE9_capacityEv ; -- Begin function _ZN5mystl6vectorIiE9_capacityEv
	.weak_definition	__ZN5mystl6vectorIiE9_capacityEv
	.p2align	2
__ZN5mystl6vectorIiE9_capacityEv:       ; @_ZN5mystl6vectorIiE9_capacityEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8, #16]
	ldr	x8, [x8]
	subs	x8, x9, x8
	mov	x9, #4
	sdiv	x0, x8, x9
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6_frontEv   ; -- Begin function _ZN5mystl6vectorIiE6_frontEv
	.weak_definition	__ZN5mystl6vectorIiE6_frontEv
	.p2align	2
__ZN5mystl6vectorIiE6_frontEv:          ; @_ZN5mystl6vectorIiE6_frontEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldr	x10, [x8, #8]
	subs	x9, x9, x10
	cset	w11, ne
	eor	w11, w11, #0x1
	str	x8, [sp]                        ; 8-byte Folded Spill
	tbnz	w11, #0, LBB103_1
	b	LBB103_2
LBB103_1:
	adrp	x0, l___func__._ZN5mystl6vectorIiE6_frontEv@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE6_frontEv@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #517
	adrp	x3, l_.str.60@PAGE
	add	x3, x3, l_.str.60@PAGEOFF
	bl	___assert_rtn
LBB103_2:
; %bb.3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5_backEv    ; -- Begin function _ZN5mystl6vectorIiE5_backEv
	.weak_definition	__ZN5mystl6vectorIiE5_backEv
	.p2align	2
__ZN5mystl6vectorIiE5_backEv:           ; @_ZN5mystl6vectorIiE5_backEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldr	x10, [x8, #8]
	subs	x9, x9, x10
	cset	w11, ne
	eor	w11, w11, #0x1
	str	x8, [sp]                        ; 8-byte Folded Spill
	tbnz	w11, #0, LBB104_1
	b	LBB104_2
LBB104_1:
	adrp	x0, l___func__._ZN5mystl6vectorIiE5_backEv@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE5_backEv@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #532
	adrp	x3, l_.str.60@PAGE
	add	x3, x3, l_.str.60@PAGEOFF
	bl	___assert_rtn
LBB104_2:
; %bb.3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x0, x9, #4                      ; =4
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5_dataEv    ; -- Begin function _ZN5mystl6vectorIiE5_dataEv
	.weak_definition	__ZN5mystl6vectorIiE5_dataEv
	.p2align	2
__ZN5mystl6vectorIiE5_dataEv:           ; @_ZN5mystl6vectorIiE5_dataEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC2Ev        ; -- Begin function _ZN5mystl6vectorIiEC2Ev
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC2Ev
	.p2align	2
__ZN5mystl6vectorIiEC2Ev:               ; @_ZN5mystl6vectorIiEC2Ev
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE18_init_with_nothingEv
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE18_init_with_nothingEv ; -- Begin function _ZN5mystl6vectorIiE18_init_with_nothingEv
	.weak_definition	__ZN5mystl6vectorIiE18_init_with_nothingEv
	.p2align	2
__ZN5mystl6vectorIiE18_init_with_nothingEv: ; @_ZN5mystl6vectorIiE18_init_with_nothingEv
Lfunc_begin12:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception12
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
Ltmp653:
	mov	x0, #16
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN5mystl9allocatorIiE8allocateEm
Ltmp654:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB107_1
LBB107_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x10, [x9]
	str	x10, [x9, #8]
	ldr	x10, [x9]
	add	x10, x10, #64                   ; =64
	str	x10, [x9, #16]
	b	LBB107_5
LBB107_2:
Ltmp655:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-16]
	stur	w1, [x29, #-20]
; %bb.3:
	ldur	x0, [x29, #-16]
	bl	___cxa_begin_catch
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
Ltmp656:
	bl	___cxa_end_catch
Ltmp657:
	b	LBB107_4
LBB107_4:
LBB107_5:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
LBB107_6:
Ltmp658:
	bl	___clang_call_terminate
Lfunc_end12:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table107:
Lexception12:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase2-Lttbaseref2
Lttbaseref2:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end12-Lcst_begin12
Lcst_begin12:
	.uleb128 Ltmp653-Lfunc_begin12          ; >> Call Site 1 <<
	.uleb128 Ltmp654-Ltmp653                ;   Call between Ltmp653 and Ltmp654
	.uleb128 Ltmp655-Lfunc_begin12          ;     jumps to Ltmp655
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp654-Lfunc_begin12          ; >> Call Site 2 <<
	.uleb128 Ltmp656-Ltmp654                ;   Call between Ltmp654 and Ltmp656
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp656-Lfunc_begin12          ; >> Call Site 3 <<
	.uleb128 Ltmp657-Ltmp656                ;   Call between Ltmp656 and Ltmp657
	.uleb128 Ltmp658-Lfunc_begin12          ;     jumps to Ltmp658
	.byte	1                               ;   On action: 1
Lcst_end12:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl9allocatorIiE8allocateEm ; -- Begin function _ZN5mystl9allocatorIiE8allocateEm
	.weak_definition	__ZN5mystl9allocatorIiE8allocateEm
	.p2align	2
__ZN5mystl9allocatorIiE8allocateEm:     ; @_ZN5mystl9allocatorIiE8allocateEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	cbnz	x8, LBB108_2
; %bb.1:
	mov	x8, #0
	str	x8, [sp]                        ; 8-byte Folded Spill
	b	LBB108_3
LBB108_2:
	ldr	x8, [sp, #8]
	lsl	x0, x8, #2
	bl	__Znwm
	str	x0, [sp]                        ; 8-byte Folded Spill
LBB108_3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiED2Ev        ; -- Begin function _ZN5mystl6vectorIiED2Ev
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiED2Ev
	.p2align	2
__ZN5mystl6vectorIiED2Ev:               ; @_ZN5mystl6vectorIiED2Ev
Lfunc_begin13:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception13
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
Ltmp659:
	mov	x0, x8
	stur	x8, [x29, #-16]                 ; 8-byte Folded Spill
	str	x1, [sp, #24]                   ; 8-byte Folded Spill
	str	x2, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
Ltmp660:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB109_1
LBB109_1:
Ltmp661:
	ldur	x0, [x29, #-16]                 ; 8-byte Folded Reload
	ldr	x1, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
Ltmp662:
	b	LBB109_2
LBB109_2:
	ldur	x8, [x29, #-16]                 ; 8-byte Folded Reload
	str	xzr, [x8, #16]
	str	xzr, [x8, #8]
	str	xzr, [x8]
	mov	x0, x8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
LBB109_3:
Ltmp663:
	bl	___clang_call_terminate
Lfunc_end13:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table109:
Lexception13:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase3-Lttbaseref3
Lttbaseref3:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end13-Lcst_begin13
Lcst_begin13:
	.uleb128 Ltmp659-Lfunc_begin13          ; >> Call Site 1 <<
	.uleb128 Ltmp662-Ltmp659                ;   Call between Ltmp659 and Ltmp662
	.uleb128 Ltmp663-Lfunc_begin13          ;     jumps to Ltmp663
	.byte	1                               ;   On action: 1
Lcst_end13:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m ; -- Begin function _ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	.weak_definition	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	.p2align	2
__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m: ; @_ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZN5mystl9allocatorIiE7destroyEPiS2_
	ldr	x0, [sp, #16]
	ldr	x1, [sp]
	bl	__ZN5mystl9allocatorIiE10deallocateEPim
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl9allocatorIiE7destroyEPiS2_ ; -- Begin function _ZN5mystl9allocatorIiE7destroyEPiS2_
	.weak_definition	__ZN5mystl9allocatorIiE7destroyEPiS2_
	.p2align	2
__ZN5mystl9allocatorIiE7destroyEPiS2_:  ; @_ZN5mystl9allocatorIiE7destroyEPiS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	bl	__ZN5mystl7destroyIPiEEvT_S2_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl9allocatorIiE10deallocateEPim ; -- Begin function _ZN5mystl9allocatorIiE10deallocateEPim
	.weak_definition	__ZN5mystl9allocatorIiE10deallocateEPim
	.p2align	2
__ZN5mystl9allocatorIiE10deallocateEPim: ; @_ZN5mystl9allocatorIiE10deallocateEPim
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	cbz	x8, LBB112_2
; %bb.1:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB112_2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl7destroyIPiEEvT_S2_   ; -- Begin function _ZN5mystl7destroyIPiEEvT_S2_
	.weak_definition	__ZN5mystl7destroyIPiEEvT_S2_
	.p2align	2
__ZN5mystl7destroyIPiEEvT_S2_:          ; @_ZN5mystl7destroyIPiEEvT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__ZN5mystl12_destroy_catIPiEEvT_S2_NSt3__117integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl12_destroy_catIPiEEvT_S2_NSt3__117integral_constantIbLb1EEE ; -- Begin function _ZN5mystl12_destroy_catIPiEEvT_S2_NSt3__117integral_constantIbLb1EEE
	.weak_definition	__ZN5mystl12_destroy_catIPiEEvT_S2_NSt3__117integral_constantIbLb1EEE
	.p2align	2
__ZN5mystl12_destroy_catIPiEEvT_S2_NSt3__117integral_constantIbLb1EEE: ; @_ZN5mystl12_destroy_catIPiEEvT_S2_NSt3__117integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC2Em        ; -- Begin function _ZN5mystl6vectorIiEC2Em
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC2Em
	.p2align	2
__ZN5mystl6vectorIiEC2Em:               ; @_ZN5mystl6vectorIiEC2Em
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE15_init_with_sizeEm
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE15_init_with_sizeEm ; -- Begin function _ZN5mystl6vectorIiE15_init_with_sizeEm
	.weak_definition	__ZN5mystl6vectorIiE15_init_with_sizeEm
	.p2align	2
__ZN5mystl6vectorIiE15_init_with_sizeEm: ; @_ZN5mystl6vectorIiE15_init_with_sizeEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x0, [sp, #8]
	ldr	x1, [sp]
	ldr	x2, [sp]
	bl	__ZN5mystl6vectorIiE23_init_with_size_and_capEmm
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE23_init_with_size_and_capEmm ; -- Begin function _ZN5mystl6vectorIiE23_init_with_size_and_capEmm
	.weak_definition	__ZN5mystl6vectorIiE23_init_with_size_and_capEmm
	.p2align	2
__ZN5mystl6vectorIiE23_init_with_size_and_capEmm: ; @_ZN5mystl6vectorIiE23_init_with_size_and_capEmm
Lfunc_begin14:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception14
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldur	x0, [x29, #-24]
Ltmp665:
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN5mystl9allocatorIiE8allocateEm
Ltmp666:
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	b	LBB117_1
LBB117_1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x10, [x9]
	ldur	x11, [x29, #-16]
	add	x10, x10, x11, lsl #2
	str	x10, [x9, #8]
	ldr	x10, [x9]
	ldur	x11, [x29, #-24]
	add	x10, x10, x11, lsl #2
	str	x10, [x9, #16]
	b	LBB117_6
LBB117_2:
Ltmp667:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #32]
	str	w1, [sp, #28]
; %bb.3:
	ldr	x0, [sp, #32]
	bl	___cxa_begin_catch
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	str	xzr, [x8]
	str	xzr, [x8, #8]
	str	xzr, [x8, #16]
Ltmp668:
	bl	___cxa_rethrow
Ltmp669:
	b	LBB117_9
LBB117_4:
Ltmp670:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #32]
	str	w1, [sp, #28]
Ltmp671:
	bl	___cxa_end_catch
Ltmp672:
	b	LBB117_5
LBB117_5:
	b	LBB117_7
LBB117_6:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
LBB117_7:
	ldr	x0, [sp, #32]
	bl	__Unwind_Resume
LBB117_8:
Ltmp673:
	bl	___clang_call_terminate
LBB117_9:
Lfunc_end14:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table117:
Lexception14:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase4-Lttbaseref4
Lttbaseref4:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end14-Lcst_begin14
Lcst_begin14:
	.uleb128 Ltmp665-Lfunc_begin14          ; >> Call Site 1 <<
	.uleb128 Ltmp666-Ltmp665                ;   Call between Ltmp665 and Ltmp666
	.uleb128 Ltmp667-Lfunc_begin14          ;     jumps to Ltmp667
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp666-Lfunc_begin14          ; >> Call Site 2 <<
	.uleb128 Ltmp668-Ltmp666                ;   Call between Ltmp666 and Ltmp668
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp668-Lfunc_begin14          ; >> Call Site 3 <<
	.uleb128 Ltmp669-Ltmp668                ;   Call between Ltmp668 and Ltmp669
	.uleb128 Ltmp670-Lfunc_begin14          ;     jumps to Ltmp670
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp671-Lfunc_begin14          ; >> Call Site 4 <<
	.uleb128 Ltmp672-Ltmp671                ;   Call between Ltmp671 and Ltmp672
	.uleb128 Ltmp673-Lfunc_begin14          ;     jumps to Ltmp673
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp672-Lfunc_begin14          ; >> Call Site 5 <<
	.uleb128 Lfunc_end14-Ltmp672            ;   Call between Ltmp672 and Lfunc_end14
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end14:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiEC2ERS1_     ; -- Begin function _ZN5mystl6vectorIiEC2ERS1_
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC2ERS1_
	.p2align	2
__ZN5mystl6vectorIiEC2ERS1_:            ; @_ZN5mystl6vectorIiEC2ERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE17_init_with_vectorERS1_
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE17_init_with_vectorERS1_ ; -- Begin function _ZN5mystl6vectorIiE17_init_with_vectorERS1_
	.weak_definition	__ZN5mystl6vectorIiE17_init_with_vectorERS1_
	.p2align	2
__ZN5mystl6vectorIiE17_init_with_vectorERS1_: ; @_ZN5mystl6vectorIiE17_init_with_vectorERS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x8, [x29, #-16]
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE5beginEv
	ldur	x8, [x29, #-16]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE3endEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE15_init_with_iterIPiEEvT_S4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE15_init_with_iterIPiEEvT_S4_ ; -- Begin function _ZN5mystl6vectorIiE15_init_with_iterIPiEEvT_S4_
	.weak_definition	__ZN5mystl6vectorIiE15_init_with_iterIPiEEvT_S4_
	.p2align	2
__ZN5mystl6vectorIiE15_init_with_iterIPiEEvT_S4_: ; @_ZN5mystl6vectorIiE15_init_with_iterIPiEEvT_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]
	ldur	x10, [x29, #-16]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	str	x9, [sp, #16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE23_init_with_size_and_capEmm
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [x8]
	bl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_ ; -- Begin function _ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	.weak_definition	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	.p2align	2
__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_: ; @_ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl22_unchecked_uninit_copyIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl22_unchecked_uninit_copyIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE ; -- Begin function _ZN5mystl22_unchecked_uninit_copyIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	.weak_definition	__ZN5mystl22_unchecked_uninit_copyIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	.p2align	2
__ZN5mystl22_unchecked_uninit_copyIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE: ; @_ZN5mystl22_unchecked_uninit_copyIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZN5mystl4copyIPiS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl4copyIPiS1_EET0_T_S3_S2_ ; -- Begin function _ZN5mystl4copyIPiS1_EET0_T_S3_S2_
	.weak_definition	__ZN5mystl4copyIPiS1_EET0_T_S3_S2_
	.p2align	2
__ZN5mystl4copyIPiS1_EET0_T_S3_S2_:     ; @_ZN5mystl4copyIPiS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl14unchecked_copyIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl14unchecked_copyIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_ ; -- Begin function _ZN5mystl14unchecked_copyIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	.weak_definition	__ZN5mystl14unchecked_copyIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	.p2align	2
__ZN5mystl14unchecked_copyIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_: ; @_ZN5mystl14unchecked_copyIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	str	x8, [sp]
	ldr	x8, [sp]
	cbz	x8, LBB124_2
; %bb.1:
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	x8, [sp]
	lsl	x2, x8, #2
	bl	_memmove
LBB124_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC2EmRKi     ; -- Begin function _ZN5mystl6vectorIiEC2EmRKi
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC2EmRKi
	.p2align	2
__ZN5mystl6vectorIiEC2EmRKi:            ; @_ZN5mystl6vectorIiEC2EmRKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE25_init_with_size_and_valueEmRKi
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE25_init_with_size_and_valueEmRKi ; -- Begin function _ZN5mystl6vectorIiE25_init_with_size_and_valueEmRKi
	.weak_definition	__ZN5mystl6vectorIiE25_init_with_size_and_valueEmRKi
	.p2align	2
__ZN5mystl6vectorIiE25_init_with_size_and_valueEmRKi: ; @_ZN5mystl6vectorIiE25_init_with_size_and_valueEmRKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #16]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE23_init_with_size_and_capEmm
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_ ; -- Begin function _ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
	.weak_definition	__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
	.p2align	2
__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_: ; @_ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl24_unchecked_uninit_fill_nIPimiEET_S2_T0_RKT1_NSt3__117integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl24_unchecked_uninit_fill_nIPimiEET_S2_T0_RKT1_NSt3__117integral_constantIbLb1EEE ; -- Begin function _ZN5mystl24_unchecked_uninit_fill_nIPimiEET_S2_T0_RKT1_NSt3__117integral_constantIbLb1EEE
	.weak_definition	__ZN5mystl24_unchecked_uninit_fill_nIPimiEET_S2_T0_RKT1_NSt3__117integral_constantIbLb1EEE
	.p2align	2
__ZN5mystl24_unchecked_uninit_fill_nIPimiEET_S2_T0_RKT1_NSt3__117integral_constantIbLb1EEE: ; @_ZN5mystl24_unchecked_uninit_fill_nIPimiEET_S2_T0_RKT1_NSt3__117integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_ ; -- Begin function _ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_
	.weak_definition	__ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_
	.p2align	2
__ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_:  ; @_ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl16unchecked_fill_nIPimiEET_S2_T0_RKT1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl16unchecked_fill_nIPimiEET_S2_T0_RKT1_ ; -- Begin function _ZN5mystl16unchecked_fill_nIPimiEET_S2_T0_RKT1_
	.weak_definition	__ZN5mystl16unchecked_fill_nIPimiEET_S2_T0_RKT1_
	.p2align	2
__ZN5mystl16unchecked_fill_nIPimiEET_S2_T0_RKT1_: ; @_ZN5mystl16unchecked_fill_nIPimiEET_S2_T0_RKT1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
LBB130_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	cmp	x8, #0                          ; =0
	cset	w9, ls
	tbnz	w9, #0, LBB130_4
; %bb.2:                                ;   in Loop: Header=BB130_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	w9, [x8]
	ldr	x8, [sp, #24]
	str	w9, [x8]
; %bb.3:                                ;   in Loop: Header=BB130_1 Depth=1
	ldr	x8, [sp, #16]
	subs	x8, x8, #1                      ; =1
	str	x8, [sp, #16]
	ldr	x8, [sp, #24]
	add	x8, x8, #4                      ; =4
	str	x8, [sp, #24]
	b	LBB130_1
LBB130_4:
	ldr	x0, [sp, #24]
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC2IPiLi0EEET_S4_ ; -- Begin function _ZN5mystl6vectorIiEC2IPiLi0EEET_S4_
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC2IPiLi0EEET_S4_
	.p2align	2
__ZN5mystl6vectorIiEC2IPiLi0EEET_S4_:   ; @_ZN5mystl6vectorIiEC2IPiLi0EEET_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE15_init_with_iterIPiEEvT_S4_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC2ESt16initializer_listIiE ; -- Begin function _ZN5mystl6vectorIiEC2ESt16initializer_listIiE
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC2ESt16initializer_listIiE
	.p2align	2
__ZN5mystl6vectorIiEC2ESt16initializer_listIiE: ; @_ZN5mystl6vectorIiEC2ESt16initializer_listIiE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldur	q0, [x29, #-16]
	str	q0, [sp, #16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #24]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE27_init_with_initializer_listESt16initializer_listIiE
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE27_init_with_initializer_listESt16initializer_listIiE ; -- Begin function _ZN5mystl6vectorIiE27_init_with_initializer_listESt16initializer_listIiE
	.weak_definition	__ZN5mystl6vectorIiE27_init_with_initializer_listESt16initializer_listIiE
	.p2align	2
__ZN5mystl6vectorIiE27_init_with_initializer_listESt16initializer_listIiE: ; @_ZN5mystl6vectorIiE27_init_with_initializer_listESt16initializer_listIiE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #16                    ; =16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x0, x8
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIiE5beginEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZNKSt16initializer_listIiE3endEv
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE15_init_with_iterIPKiEEvT_S5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE15_init_with_iterIPKiEEvT_S5_ ; -- Begin function _ZN5mystl6vectorIiE15_init_with_iterIPKiEEvT_S5_
	.weak_definition	__ZN5mystl6vectorIiE15_init_with_iterIPKiEEvT_S5_
	.p2align	2
__ZN5mystl6vectorIiE15_init_with_iterIPKiEEvT_S5_: ; @_ZN5mystl6vectorIiE15_init_with_iterIPKiEEvT_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	str	x2, [sp, #24]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #24]
	ldur	x10, [x29, #-16]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	str	x9, [sp, #16]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE23_init_with_size_and_capEmm
	ldur	x0, [x29, #-16]
	ldr	x1, [sp, #24]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [x8]
	bl	__ZN5mystl18uninitialized_copyIPKiPiEET0_T_S5_S4_
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt16initializer_listIiE5beginEv
__ZNKSt16initializer_listIiE5beginEv:   ; @_ZNKSt16initializer_listIiE5beginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNKSt16initializer_listIiE3endEv
__ZNKSt16initializer_listIiE3endEv:     ; @_ZNKSt16initializer_listIiE3endEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldr	x8, [x8, #8]
	add	x0, x9, x8, lsl #2
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl18uninitialized_copyIPKiPiEET0_T_S5_S4_ ; -- Begin function _ZN5mystl18uninitialized_copyIPKiPiEET0_T_S5_S4_
	.weak_definition	__ZN5mystl18uninitialized_copyIPKiPiEET0_T_S5_S4_
	.p2align	2
__ZN5mystl18uninitialized_copyIPKiPiEET0_T_S5_S4_: ; @_ZN5mystl18uninitialized_copyIPKiPiEET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl22_unchecked_uninit_copyIPKiPiEET0_T_S5_S4_NSt3__117integral_constantIbLb0EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl22_unchecked_uninit_copyIPKiPiEET0_T_S5_S4_NSt3__117integral_constantIbLb0EEE ; -- Begin function _ZN5mystl22_unchecked_uninit_copyIPKiPiEET0_T_S5_S4_NSt3__117integral_constantIbLb0EEE
	.weak_definition	__ZN5mystl22_unchecked_uninit_copyIPKiPiEET0_T_S5_S4_NSt3__117integral_constantIbLb0EEE
	.p2align	2
__ZN5mystl22_unchecked_uninit_copyIPKiPiEET0_T_S5_S4_NSt3__117integral_constantIbLb0EEE: ; @_ZN5mystl22_unchecked_uninit_copyIPKiPiEET0_T_S5_S4_NSt3__117integral_constantIbLb0EEE
Lfunc_begin15:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception15
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	str	x2, [sp, #32]
	ldr	x8, [sp, #32]
	str	x8, [sp, #24]
LBB138_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	b.eq	LBB138_11
; %bb.2:                                ;   in Loop: Header=BB138_1 Depth=1
	ldr	x0, [sp, #24]
	ldur	x1, [x29, #-16]
Ltmp677:
	bl	__ZN5mystl9constructIiiEEvPT_RKT0_
Ltmp678:
	b	LBB138_3
LBB138_3:                               ;   in Loop: Header=BB138_1 Depth=1
; %bb.4:                                ;   in Loop: Header=BB138_1 Depth=1
	ldur	x8, [x29, #-16]
	add	x8, x8, #4                      ; =4
	stur	x8, [x29, #-16]
	ldr	x8, [sp, #24]
	add	x8, x8, #4                      ; =4
	str	x8, [sp, #24]
	b	LBB138_1
LBB138_5:
Ltmp679:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #16]
	str	w1, [sp, #12]
; %bb.6:
	ldr	x0, [sp, #16]
	bl	___cxa_begin_catch
LBB138_7:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	b.eq	LBB138_13
; %bb.8:                                ;   in Loop: Header=BB138_7 Depth=1
	ldr	x0, [sp, #32]
Ltmp680:
	bl	__ZN5mystl7destroyIiEEvPT_
Ltmp681:
	b	LBB138_9
LBB138_9:                               ;   in Loop: Header=BB138_7 Depth=1
; %bb.10:                               ;   in Loop: Header=BB138_7 Depth=1
	ldr	x8, [sp, #32]
	add	x8, x8, #4                      ; =4
	str	x8, [sp, #32]
	b	LBB138_7
LBB138_11:
	b	LBB138_14
LBB138_12:
Ltmp682:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #16]
	str	w1, [sp, #12]
Ltmp683:
	bl	___cxa_end_catch
Ltmp684:
	b	LBB138_15
LBB138_13:
	bl	___cxa_end_catch
LBB138_14:
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
LBB138_15:
; %bb.16:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
LBB138_17:
Ltmp685:
	bl	___clang_call_terminate
Lfunc_end15:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table138:
Lexception15:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase5-Lttbaseref5
Lttbaseref5:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end15-Lcst_begin15
Lcst_begin15:
	.uleb128 Ltmp677-Lfunc_begin15          ; >> Call Site 1 <<
	.uleb128 Ltmp678-Ltmp677                ;   Call between Ltmp677 and Ltmp678
	.uleb128 Ltmp679-Lfunc_begin15          ;     jumps to Ltmp679
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp678-Lfunc_begin15          ; >> Call Site 2 <<
	.uleb128 Ltmp680-Ltmp678                ;   Call between Ltmp678 and Ltmp680
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp680-Lfunc_begin15          ; >> Call Site 3 <<
	.uleb128 Ltmp681-Ltmp680                ;   Call between Ltmp680 and Ltmp681
	.uleb128 Ltmp682-Lfunc_begin15          ;     jumps to Ltmp682
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp683-Lfunc_begin15          ; >> Call Site 4 <<
	.uleb128 Ltmp684-Ltmp683                ;   Call between Ltmp683 and Ltmp684
	.uleb128 Ltmp685-Lfunc_begin15          ;     jumps to Ltmp685
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp684-Lfunc_begin15          ; >> Call Site 5 <<
	.uleb128 Lfunc_end15-Ltmp684            ;   Call between Ltmp684 and Lfunc_end15
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end15:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase5:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl9constructIiiEEvPT_RKT0_ ; -- Begin function _ZN5mystl9constructIiiEEvPT_RKT0_
	.weak_definition	__ZN5mystl9constructIiiEEvPT_RKT0_
	.p2align	2
__ZN5mystl9constructIiiEEvPT_RKT0_:     ; @_ZN5mystl9constructIiiEEvPT_RKT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	ldr	w10, [x9]
	str	w10, [x8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl7destroyIiEEvPT_      ; -- Begin function _ZN5mystl7destroyIiEEvPT_
	.weak_definition	__ZN5mystl7destroyIiEEvPT_
	.p2align	2
__ZN5mystl7destroyIiEEvPT_:             ; @_ZN5mystl7destroyIiEEvPT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl12_destroy_oneIiEEvPT_NSt3__117integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl12_destroy_oneIiEEvPT_NSt3__117integral_constantIbLb1EEE ; -- Begin function _ZN5mystl12_destroy_oneIiEEvPT_NSt3__117integral_constantIbLb1EEE
	.weak_definition	__ZN5mystl12_destroy_oneIiEEvPT_NSt3__117integral_constantIbLb1EEE
	.p2align	2
__ZN5mystl12_destroy_oneIiEEvPT_NSt3__117integral_constantIbLb1EEE: ; @_ZN5mystl12_destroy_oneIiEEvPT_NSt3__117integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_rbeginEv  ; -- Begin function _ZN5mystl6vectorIiE7_rbeginEv
	.weak_definition	__ZN5mystl6vectorIiE7_rbeginEv
	.p2align	2
__ZN5mystl6vectorIiE7_rbeginEv:         ; @_ZN5mystl6vectorIiE7_rbeginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x8, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE3endEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl16reverse_iteratorIPiEC1ES1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl16reverse_iteratorIPiEC1ES1_ ; -- Begin function _ZN5mystl16reverse_iteratorIPiEC1ES1_
	.weak_def_can_be_hidden	__ZN5mystl16reverse_iteratorIPiEC1ES1_
	.p2align	2
__ZN5mystl16reverse_iteratorIPiEC1ES1_: ; @_ZN5mystl16reverse_iteratorIPiEC1ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl16reverse_iteratorIPiEC2ES1_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl16reverse_iteratorIPiEC2ES1_ ; -- Begin function _ZN5mystl16reverse_iteratorIPiEC2ES1_
	.weak_def_can_be_hidden	__ZN5mystl16reverse_iteratorIPiEC2ES1_
	.p2align	2
__ZN5mystl16reverse_iteratorIPiEC2ES1_: ; @_ZN5mystl16reverse_iteratorIPiEC2ES1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	str	x1, [sp]
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	str	x9, [x8]
	mov	x0, x8
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5_rendEv    ; -- Begin function _ZN5mystl6vectorIiE5_rendEv
	.weak_definition	__ZN5mystl6vectorIiE5_rendEv
	.p2align	2
__ZN5mystl6vectorIiE5_rendEv:           ; @_ZN5mystl6vectorIiE5_rendEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x8, [x29, #-8]
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE5beginEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl16reverse_iteratorIPiEC1ES1_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl16reverse_iteratorIPiE4baseEv ; -- Begin function _ZNK5mystl16reverse_iteratorIPiE4baseEv
	.weak_definition	__ZNK5mystl16reverse_iteratorIPiE4baseEv
	.p2align	2
__ZNK5mystl16reverse_iteratorIPiE4baseEv: ; @_ZNK5mystl16reverse_iteratorIPiE4baseEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE7_cbeginEv ; -- Begin function _ZNK5mystl6vectorIiE7_cbeginEv
	.weak_definition	__ZNK5mystl6vectorIiE7_cbeginEv
	.p2align	2
__ZNK5mystl6vectorIiE7_cbeginEv:        ; @_ZNK5mystl6vectorIiE7_cbeginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNK5mystl6vectorIiE5beginEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE5beginEv   ; -- Begin function _ZNK5mystl6vectorIiE5beginEv
	.weak_definition	__ZNK5mystl6vectorIiE5beginEv
	.p2align	2
__ZNK5mystl6vectorIiE5beginEv:          ; @_ZNK5mystl6vectorIiE5beginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNK5mystl6vectorIiE6_beginEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE6_beginEv  ; -- Begin function _ZNK5mystl6vectorIiE6_beginEv
	.weak_definition	__ZNK5mystl6vectorIiE6_beginEv
	.p2align	2
__ZNK5mystl6vectorIiE6_beginEv:         ; @_ZNK5mystl6vectorIiE6_beginEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE5_cendEv   ; -- Begin function _ZNK5mystl6vectorIiE5_cendEv
	.weak_definition	__ZNK5mystl6vectorIiE5_cendEv
	.p2align	2
__ZNK5mystl6vectorIiE5_cendEv:          ; @_ZNK5mystl6vectorIiE5_cendEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNK5mystl6vectorIiE3endEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE3endEv     ; -- Begin function _ZNK5mystl6vectorIiE3endEv
	.weak_definition	__ZNK5mystl6vectorIiE3endEv
	.p2align	2
__ZNK5mystl6vectorIiE3endEv:            ; @_ZNK5mystl6vectorIiE3endEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZNK5mystl6vectorIiE4_endEv
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNK5mystl6vectorIiE4_endEv    ; -- Begin function _ZNK5mystl6vectorIiE4_endEv
	.weak_definition	__ZNK5mystl6vectorIiE4_endEv
	.p2align	2
__ZNK5mystl6vectorIiE4_endEv:           ; @_ZNK5mystl6vectorIiE4_endEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x0, [x8, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6_emptyEv   ; -- Begin function _ZN5mystl6vectorIiE6_emptyEv
	.weak_definition	__ZN5mystl6vectorIiE6_emptyEv
	.p2align	2
__ZN5mystl6vectorIiE6_emptyEv:          ; @_ZN5mystl6vectorIiE6_emptyEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [x8]
	ldr	x8, [x8, #8]
	subs	x8, x9, x8
	cset	w10, eq
	and	w0, w10, #0x1
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE9_max_sizeEv ; -- Begin function _ZN5mystl6vectorIiE9_max_sizeEv
	.weak_definition	__ZN5mystl6vectorIiE9_max_sizeEv
	.p2align	2
__ZN5mystl6vectorIiE9_max_sizeEv:       ; @_ZN5mystl6vectorIiE9_max_sizeEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	mov	x0, #4611686018427387903
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE8_reserveEm ; -- Begin function _ZN5mystl6vectorIiE8_reserveEm
	.weak_definition	__ZN5mystl6vectorIiE8_reserveEm
	.p2align	2
__ZN5mystl6vectorIiE8_reserveEm:        ; @_ZN5mystl6vectorIiE8_reserveEm
Lfunc_begin16:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception16
; %bb.0:
	sub	sp, sp, #96                     ; =96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80                    ; =80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	mov	x0, x8
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x9, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB155_6
; %bb.1:
	ldur	x8, [x29, #-16]
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8max_sizeEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB155_5
; %bb.2:
	mov	x0, #16
	bl	___cxa_allocate_exception
Ltmp694:
	str	x0, [sp]                        ; 8-byte Folded Spill
	adrp	x1, l_.str.66@PAGE
	add	x1, x1, l_.str.66@PAGEOFF
	bl	__ZNSt12out_of_rangeC1EPKc
Ltmp695:
	b	LBB155_3
LBB155_3:
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	adrp	x1, __ZTISt12out_of_range@GOTPAGE
	ldr	x1, [x1, __ZTISt12out_of_range@GOTPAGEOFF]
	adrp	x2, __ZNSt12out_of_rangeD1Ev@GOTPAGE
	ldr	x2, [x2, __ZNSt12out_of_rangeD1Ev@GOTPAGEOFF]
	bl	___cxa_throw
LBB155_4:
Ltmp696:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-24]
	stur	w1, [x29, #-28]
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	___cxa_free_exception
	b	LBB155_7
LBB155_5:
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4sizeEv
	str	x0, [sp, #40]
	ldur	x0, [x29, #-16]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	str	x0, [sp, #32]
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	ldr	x2, [sp, #32]
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [x9]
	ldr	x10, [sp, #40]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-16]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #16]
LBB155_6:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96                     ; =96
	ret
LBB155_7:
	ldur	x0, [x29, #-24]
	bl	__Unwind_Resume
Lfunc_end16:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table155:
Lexception16:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end16-Lcst_begin16
Lcst_begin16:
	.uleb128 Lfunc_begin16-Lfunc_begin16    ; >> Call Site 1 <<
	.uleb128 Ltmp694-Lfunc_begin16          ;   Call between Lfunc_begin16 and Ltmp694
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp694-Lfunc_begin16          ; >> Call Site 2 <<
	.uleb128 Ltmp695-Ltmp694                ;   Call between Ltmp694 and Ltmp695
	.uleb128 Ltmp696-Lfunc_begin16          ;     jumps to Ltmp696
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp695-Lfunc_begin16          ; >> Call Site 3 <<
	.uleb128 Lfunc_end16-Ltmp695            ;   Call between Ltmp695 and Lfunc_end16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end16:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2                               ; -- Begin function _ZNSt12out_of_rangeC1EPKc
__ZNSt12out_of_rangeC1EPKc:             ; @_ZNSt12out_of_rangeC1EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZNSt12out_of_rangeC2EPKc
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_ ; -- Begin function _ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
	.weak_definition	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
	.p2align	2
__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_: ; @_ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl22_unchecked_uninit_moveIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt12out_of_rangeC2EPKc
__ZNSt12out_of_rangeC2EPKc:             ; @_ZNSt12out_of_rangeC2EPKc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, __ZTVSt12out_of_range@GOTPAGE
	ldr	x8, [x8, __ZTVSt12out_of_range@GOTPAGEOFF]
	add	x8, x8, #16                     ; =16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	x1, [sp, #16]
	mov	x0, x9
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	x9, [sp]                        ; 8-byte Folded Spill
	bl	__ZNSt11logic_errorC2EPKc
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x8, [x9]
	mov	x0, x9
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl22_unchecked_uninit_moveIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE ; -- Begin function _ZN5mystl22_unchecked_uninit_moveIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	.weak_definition	__ZN5mystl22_unchecked_uninit_moveIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	.p2align	2
__ZN5mystl22_unchecked_uninit_moveIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE: ; @_ZN5mystl22_unchecked_uninit_moveIPiS1_EET0_T_S3_S2_NSt3__117integral_constantIbLb1EEE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	str	x2, [sp]
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	ldr	x2, [sp]
	bl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_ ; -- Begin function _ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	.weak_definition	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	.p2align	2
__ZN5mystl4moveIPiS1_EET0_T_S3_S2_:     ; @_ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl14unchecked_moveIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl14unchecked_moveIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_ ; -- Begin function _ZN5mystl14unchecked_moveIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	.weak_definition	__ZN5mystl14unchecked_moveIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	.p2align	2
__ZN5mystl14unchecked_moveIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_: ; @_ZN5mystl14unchecked_moveIiiEENSt3__19enable_ifIXaasr3std7is_sameINS1_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_move_assignableIS7_EE5valueEPS7_E4typeEPS4_SB_S8_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	str	x8, [sp]
	ldr	x8, [sp]
	cbz	x8, LBB161_2
; %bb.1:
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	x8, [sp]
	lsl	x2, x8, #2
	bl	_memmove
LBB161_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE14_shrink_to_fitEv ; -- Begin function _ZN5mystl6vectorIiE14_shrink_to_fitEv
	.weak_definition	__ZN5mystl6vectorIiE14_shrink_to_fitEv
	.p2align	2
__ZN5mystl6vectorIiE14_shrink_to_fitEv: ; @_ZN5mystl6vectorIiE14_shrink_to_fitEv
Lfunc_begin17:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception17
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #8]
	ldr	x10, [x8, #16]
	subs	x9, x9, x10
	str	x8, [sp]                        ; 8-byte Folded Spill
	b.hs	LBB162_8
; %bb.1:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldr	x10, [x8]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	stur	x9, [x29, #-16]
	ldur	x0, [x29, #-16]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	str	x0, [sp, #24]
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldr	x1, [x8, #8]
	ldr	x2, [sp, #24]
Ltmp697:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp698:
	b	LBB162_2
LBB162_2:
	b	LBB162_7
LBB162_3:
Ltmp699:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #16]
	str	w1, [sp, #12]
; %bb.4:
	ldr	x0, [sp, #16]
	bl	___cxa_begin_catch
	ldr	x8, [sp, #24]
	ldur	x1, [x29, #-16]
	mov	x0, x8
	bl	__ZN5mystl9allocatorIiE10deallocateEPim
Ltmp700:
	bl	___cxa_rethrow
Ltmp701:
	b	LBB162_11
LBB162_5:
Ltmp702:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #16]
	str	w1, [sp, #12]
Ltmp703:
	bl	___cxa_end_catch
Ltmp704:
	b	LBB162_6
LBB162_6:
	b	LBB162_9
LBB162_7:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x1, [x29, #-16]
	bl	__ZN5mystl9allocatorIiE10deallocateEPim
	ldr	x8, [sp, #24]
	ldr	x9, [sp]                        ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [x9]
	ldur	x10, [x29, #-16]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #8]
	ldr	x8, [x9, #8]
	str	x8, [x9, #16]
LBB162_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
LBB162_9:
	ldr	x0, [sp, #16]
	bl	__Unwind_Resume
LBB162_10:
Ltmp705:
	bl	___clang_call_terminate
LBB162_11:
Lfunc_end17:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table162:
Lexception17:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase6-Lttbaseref6
Lttbaseref6:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end17-Lcst_begin17
Lcst_begin17:
	.uleb128 Lfunc_begin17-Lfunc_begin17    ; >> Call Site 1 <<
	.uleb128 Ltmp697-Lfunc_begin17          ;   Call between Lfunc_begin17 and Ltmp697
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp697-Lfunc_begin17          ; >> Call Site 2 <<
	.uleb128 Ltmp698-Ltmp697                ;   Call between Ltmp697 and Ltmp698
	.uleb128 Ltmp699-Lfunc_begin17          ;     jumps to Ltmp699
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp698-Lfunc_begin17          ; >> Call Site 3 <<
	.uleb128 Ltmp700-Ltmp698                ;   Call between Ltmp698 and Ltmp700
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp700-Lfunc_begin17          ; >> Call Site 4 <<
	.uleb128 Ltmp701-Ltmp700                ;   Call between Ltmp700 and Ltmp701
	.uleb128 Ltmp702-Lfunc_begin17          ;     jumps to Ltmp702
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp703-Lfunc_begin17          ; >> Call Site 5 <<
	.uleb128 Ltmp704-Ltmp703                ;   Call between Ltmp703 and Ltmp704
	.uleb128 Ltmp705-Lfunc_begin17          ;     jumps to Ltmp705
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp704-Lfunc_begin17          ; >> Call Site 6 <<
	.uleb128 Lfunc_end17-Ltmp704            ;   Call between Ltmp704 and Lfunc_end17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end17:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase6:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE3_atEm      ; -- Begin function _ZN5mystl6vectorIiE3_atEm
	.weak_definition	__ZN5mystl6vectorIiE3_atEm
	.p2align	2
__ZN5mystl6vectorIiE3_atEm:             ; @_ZN5mystl6vectorIiE3_atEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	ldr	x10, [x8, #8]
	ldr	x11, [x8]
	subs	x10, x10, x11
	mov	x11, #4
	sdiv	x10, x10, x11
	mov	w12, #0
	subs	x9, x9, x10
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	w12, [sp, #4]                   ; 4-byte Folded Spill
	b.hs	LBB163_2
; %bb.1:
	ldr	x8, [sp, #16]
	cmp	x8, #0                          ; =0
	cset	w9, hs
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
LBB163_2:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	eor	w8, w8, #0x1
	tbnz	w8, #0, LBB163_3
	b	LBB163_4
LBB163_3:
	adrp	x0, l___func__._ZN5mystl6vectorIiE3_atEm@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE3_atEm@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #502
	adrp	x3, l_.str.67@PAGE
	add	x3, x3, l_.str.67@PAGEOFF
	bl	___assert_rtn
LBB163_4:
; %bb.5:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldr	x10, [sp, #16]
	add	x0, x9, x10, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_assignEmRKi ; -- Begin function _ZN5mystl6vectorIiE7_assignEmRKi
	.weak_definition	__ZN5mystl6vectorIiE7_assignEmRKi
	.p2align	2
__ZN5mystl6vectorIiE7_assignEmRKi:      ; @_ZN5mystl6vectorIiE7_assignEmRKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144                    ; =144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128                   ; =128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	mov	x0, x8
	stur	x8, [x29, #-56]                 ; 8-byte Folded Spill
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB164_2
; %bb.1:
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	sub	x8, x29, #48                    ; =48
	mov	x0, x8
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1EmRKi
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4swapERS1_
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB164_6
LBB164_2:
	ldur	x8, [x29, #-16]
	ldur	x0, [x29, #-56]                 ; 8-byte Folded Reload
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB164_4
; %bb.3:
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldr	x0, [x8]
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldur	x2, [x29, #-24]
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #32]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldur	x10, [x29, #-16]
	mov	x0, x8
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	str	x10, [sp, #16]                  ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	subs	x1, x8, x0
	ldur	x2, [x29, #-24]
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	str	x0, [x8, #8]
	b	LBB164_5
LBB164_4:
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	bl	__ZN5mystl6fill_nIPimiEET_S2_T0_RKT1_
	ldur	x8, [x29, #-56]                 ; 8-byte Folded Reload
	ldr	x2, [x8, #8]
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE5eraseEPKiS3_
LBB164_5:
LBB164_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144                    ; =144
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_assignIPiEEvT_S4_NS_20forward_iterator_tagE ; -- Begin function _ZN5mystl6vectorIiE7_assignIPiEEvT_S4_NS_20forward_iterator_tagE
	.weak_definition	__ZN5mystl6vectorIiE7_assignIPiEEvT_S4_NS_20forward_iterator_tagE
	.p2align	2
__ZN5mystl6vectorIiE7_assignIPiEEvT_S4_NS_20forward_iterator_tagE: ; @_ZN5mystl6vectorIiE7_assignIPiEEvT_S4_NS_20forward_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144                    ; =144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128                   ; =128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZN5mystl8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB165_2
; %bb.1:
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	add	x8, sp, #64                     ; =64
	mov	x0, x8
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1IPiLi0EEET_S4_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4swapERS1_
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB165_6
LBB165_2:
	ldur	x8, [x29, #-40]
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB165_4
; %bb.3:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x9
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, x0, lsl #2
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x9]
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN5mystl4copyIPiS1_EET0_T_S3_S2_
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	mov	x0, x9
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, x0, lsl #2
	ldur	x1, [x29, #-32]
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x9, #8]
	bl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-40]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #8]
	b	LBB165_5
LBB165_4:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x8]
	bl	__ZN5mystl4copyIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x8, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE5eraseEPKiS3_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-40]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #8]
LBB165_5:
LBB165_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144                    ; =144
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl17iterator_categoryIPiEENS_15iterator_traitsIT_E17iterator_categoryERKS3_ ; -- Begin function _ZN5mystl17iterator_categoryIPiEENS_15iterator_traitsIT_E17iterator_categoryERKS3_
	.weak_definition	__ZN5mystl17iterator_categoryIPiEENS_15iterator_traitsIT_E17iterator_categoryERKS3_
	.p2align	2
__ZN5mystl17iterator_categoryIPiEENS_15iterator_traitsIT_E17iterator_categoryERKS3_: ; @_ZN5mystl17iterator_categoryIPiEENS_15iterator_traitsIT_E17iterator_categoryERKS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_ ; -- Begin function _ZN5mystl8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	.weak_definition	__ZN5mystl8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	.p2align	2
__ZN5mystl8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_: ; @_ZN5mystl8distanceIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #8                     ; =8
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl17iterator_categoryIPiEENS_15iterator_traitsIT_E17iterator_categoryERKS3_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl17distance_dispatchIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl17distance_dispatchIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE ; -- Begin function _ZN5mystl17distance_dispatchIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	.weak_definition	__ZN5mystl17distance_dispatchIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	.p2align	2
__ZN5mystl17distance_dispatchIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE: ; @_ZN5mystl17distance_dispatchIPiEENS_15iterator_traitsIT_E15difference_typeES3_S3_NS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x0, x8, x9
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_assignESt16initializer_listIiE ; -- Begin function _ZN5mystl6vectorIiE7_assignESt16initializer_listIiE
	.weak_definition	__ZN5mystl6vectorIiE7_assignESt16initializer_listIiE
	.p2align	2
__ZN5mystl6vectorIiE7_assignESt16initializer_listIiE: ; @_ZN5mystl6vectorIiE7_assignESt16initializer_listIiE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #16                    ; =16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-8]
	stur	x0, [x29, #-24]
	ldur	x0, [x29, #-24]
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	mov	x0, x8
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZNKSt16initializer_listIiE5beginEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZNKSt16initializer_listIiE3endEv
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE6assignIPKiLi0EEEvT_S5_
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6assignIPKiLi0EEEvT_S5_ ; -- Begin function _ZN5mystl6vectorIiE6assignIPKiLi0EEEvT_S5_
	.weak_definition	__ZN5mystl6vectorIiE6assignIPKiLi0EEEvT_S5_
	.p2align	2
__ZN5mystl6vectorIiE6assignIPKiLi0EEEvT_S5_: ; @_ZN5mystl6vectorIiE6assignIPKiLi0EEEvT_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	sub	x0, x29, #16                    ; =16
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldur	x1, [x29, #-16]
	ldur	x2, [x29, #-24]
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl17iterator_categoryIPKiEENS_15iterator_traitsIT_E17iterator_categoryERKS4_
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE7_assignIPKiEEvT_S5_NS_20forward_iterator_tagE
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_assignIPKiEEvT_S5_NS_20forward_iterator_tagE ; -- Begin function _ZN5mystl6vectorIiE7_assignIPKiEEvT_S5_NS_20forward_iterator_tagE
	.weak_definition	__ZN5mystl6vectorIiE7_assignIPKiEEvT_S5_NS_20forward_iterator_tagE
	.p2align	2
__ZN5mystl6vectorIiE7_assignIPKiEEvT_S5_NS_20forward_iterator_tagE: ; @_ZN5mystl6vectorIiE7_assignIPKiEEvT_S5_NS_20forward_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #144                    ; =144
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128                   ; =128
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	ldur	x8, [x29, #-16]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	bl	__ZN5mystl8distanceIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	stur	x0, [x29, #-40]
	ldur	x8, [x29, #-40]
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB171_2
; %bb.1:
	ldur	x1, [x29, #-24]
	ldur	x2, [x29, #-32]
	add	x8, sp, #64                     ; =64
	mov	x0, x8
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC1IPKiLi0EEET_S5_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	mov	x0, x8
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4swapERS1_
	ldr	x0, [sp, #40]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiED1Ev
	b	LBB171_6
LBB171_2:
	ldur	x8, [x29, #-40]
	ldr	x0, [sp, #56]                   ; 8-byte Folded Reload
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.ls	LBB171_4
; %bb.3:
	ldur	x0, [x29, #-24]
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x9
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	add	x1, x8, x0, lsl #2
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x9]
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN5mystl4copyIPKiPiEET0_T_S5_S4_
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	mov	x0, x9
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, x0, lsl #2
	ldur	x1, [x29, #-32]
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x9, #8]
	bl	__ZN5mystl18uninitialized_copyIPKiPiEET0_T_S5_S4_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-40]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #8]
	b	LBB171_5
LBB171_4:
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x8]
	bl	__ZN5mystl4copyIPKiPiEET0_T_S5_S4_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x2, [x8, #8]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE5eraseEPKiS3_
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-40]
	add	x9, x9, x10, lsl #2
	str	x9, [x8, #8]
LBB171_5:
LBB171_6:
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	add	sp, sp, #144                    ; =144
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl17iterator_categoryIPKiEENS_15iterator_traitsIT_E17iterator_categoryERKS4_ ; -- Begin function _ZN5mystl17iterator_categoryIPKiEENS_15iterator_traitsIT_E17iterator_categoryERKS4_
	.weak_definition	__ZN5mystl17iterator_categoryIPKiEENS_15iterator_traitsIT_E17iterator_categoryERKS4_
	.p2align	2
__ZN5mystl17iterator_categoryIPKiEENS_15iterator_traitsIT_E17iterator_categoryERKS4_: ; @_ZN5mystl17iterator_categoryIPKiEENS_15iterator_traitsIT_E17iterator_categoryERKS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl8distanceIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_ ; -- Begin function _ZN5mystl8distanceIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.weak_definition	__ZN5mystl8distanceIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.p2align	2
__ZN5mystl8distanceIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_: ; @_ZN5mystl8distanceIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	sub	x8, x29, #8                     ; =8
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x0, [x29, #-8]
	ldur	x1, [x29, #-16]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	str	x1, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl17iterator_categoryIPKiEENS_15iterator_traitsIT_E17iterator_categoryERKS4_
	ldr	x0, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl17distance_dispatchIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC1IPKiLi0EEET_S5_ ; -- Begin function _ZN5mystl6vectorIiEC1IPKiLi0EEET_S5_
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC1IPKiLi0EEET_S5_
	.p2align	2
__ZN5mystl6vectorIiEC1IPKiLi0EEET_S5_:  ; @_ZN5mystl6vectorIiEC1IPKiLi0EEET_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiEC2IPKiLi0EEET_S5_
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	mov	x0, x8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl4copyIPKiPiEET0_T_S5_S4_ ; -- Begin function _ZN5mystl4copyIPKiPiEET0_T_S5_S4_
	.weak_definition	__ZN5mystl4copyIPKiPiEET0_T_S5_S4_
	.p2align	2
__ZN5mystl4copyIPKiPiEET0_T_S5_S4_:     ; @_ZN5mystl4copyIPKiPiEET0_T_S5_S4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl14unchecked_copyIKiiEENSt3__19enable_ifIXaasr3std7is_sameINS2_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl17distance_dispatchIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE ; -- Begin function _ZN5mystl17distance_dispatchIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.weak_definition	__ZN5mystl17distance_dispatchIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.p2align	2
__ZN5mystl17distance_dispatchIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE: ; @_ZN5mystl17distance_dispatchIPKiEENS_15iterator_traitsIT_E15difference_typeES4_S4_NS_26random_access_iterator_tagE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #16]
	str	x1, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x0, x8, x9
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiEC2IPKiLi0EEET_S5_ ; -- Begin function _ZN5mystl6vectorIiEC2IPKiLi0EEET_S5_
	.weak_def_can_be_hidden	__ZN5mystl6vectorIiEC2IPKiLi0EEET_S5_
	.p2align	2
__ZN5mystl6vectorIiEC2IPKiLi0EEET_S5_:  ; @_ZN5mystl6vectorIiEC2IPKiLi0EEET_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x8, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE15_init_with_iterIPKiEEvT_S5_
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl14unchecked_copyIKiiEENSt3__19enable_ifIXaasr3std7is_sameINS2_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_ ; -- Begin function _ZN5mystl14unchecked_copyIKiiEENSt3__19enable_ifIXaasr3std7is_sameINS2_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_
	.weak_definition	__ZN5mystl14unchecked_copyIKiiEENSt3__19enable_ifIXaasr3std7is_sameINS2_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_
	.p2align	2
__ZN5mystl14unchecked_copyIKiiEENSt3__19enable_ifIXaasr3std7is_sameINS2_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_: ; @_ZN5mystl14unchecked_copyIKiiEENSt3__19enable_ifIXaasr3std7is_sameINS2_12remove_constIT_E4typeET0_EE5valuesr3std28is_trivially_copy_assignableIS8_EE5valueEPS8_E4typeEPS5_SC_S9_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldr	x8, [sp, #16]
	ldur	x9, [x29, #-8]
	subs	x8, x8, x9
	mov	x9, #4
	sdiv	x8, x8, x9
	str	x8, [sp]
	ldr	x8, [sp]
	cbz	x8, LBB178_2
; %bb.1:
	ldr	x0, [sp, #8]
	ldur	x1, [x29, #-8]
	ldr	x8, [sp]
	lsl	x2, x8, #2
	bl	_memmove
LBB178_2:
	ldr	x8, [sp, #8]
	ldr	x9, [sp]
	add	x0, x8, x9, lsl #2
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_ ; -- Begin function _ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_
	.weak_definition	__ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_
	.p2align	2
__ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_: ; @_ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_
Lfunc_begin18:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception18
; %bb.0:
	sub	sp, sp, #272                    ; =272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256                   ; =256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	stur	x9, [x29, #-48]
	ldur	x9, [x29, #-48]
	ldr	x10, [x8]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	stur	x9, [x29, #-56]
	ldur	x9, [x29, #-32]
	ldr	x10, [x8]
	mov	w11, #0
	subs	x9, x9, x10
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	str	w11, [sp, #124]                 ; 4-byte Folded Spill
	b.lo	LBB179_2
; %bb.1:
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x10, [x9, #8]
	subs	x8, x8, x10
	cset	w11, ls
	str	w11, [sp, #124]                 ; 4-byte Folded Spill
LBB179_2:
	ldr	w8, [sp, #124]                  ; 4-byte Folded Reload
	eor	w8, w8, #0x1
	tbnz	w8, #0, LBB179_3
	b	LBB179_4
LBB179_3:
	adrp	x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #652
	adrp	x3, l_.str.68@PAGE
	add	x3, x3, l_.str.68@PAGEOFF
	bl	___assert_rtn
LBB179_4:
; %bb.5:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldr	x10, [x8, #16]
	subs	x9, x9, x10
	b.ne	LBB179_21
; %bb.6:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	cbnz	x0, LBB179_8
; %bb.7:
	mov	x8, #1
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-72]
	ldur	x8, [x29, #-40]
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZN5mystl9constructIiJRiEEEvPT_DpOT0_
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	mov	x0, x8
	str	x1, [sp, #96]                   ; 8-byte Folded Spill
	str	x2, [sp, #88]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	ldur	x8, [x29, #-72]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [x9]
	ldur	x10, [x29, #-64]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #8]
	ldr	x8, [x9, #8]
	str	x8, [x9, #16]
	b	LBB179_20
LBB179_8:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE8max_sizeEv
	mov	x8, #2
	udiv	x8, x0, x8
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	subs	x8, x9, x8
	cset	w10, lo
	eor	w10, w10, #0x1
	tbnz	w10, #0, LBB179_9
	b	LBB179_10
LBB179_9:
	adrp	x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #665
	adrp	x3, l_.str.69@PAGE
	add	x3, x3, l_.str.69@PAGEOFF
	bl	___assert_rtn
LBB179_10:
; %bb.11:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	mov	x8, #2
	mul	x8, x8, x0
	stur	x8, [x29, #-80]
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4sizeEv
	add	x8, x0, #1                      ; =1
	stur	x8, [x29, #-88]
	ldur	x0, [x29, #-88]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	stur	x0, [x29, #-96]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-96]
Ltmp710:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp711:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB179_12
LBB179_12:
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-104]
	ldur	x0, [x29, #-104]
	ldur	x9, [x29, #-40]
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x0, x9
	bl	__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
Ltmp712:
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZN5mystl9constructIiJRiEEEvPT_DpOT0_
Ltmp713:
	b	LBB179_13
LBB179_13:
	ldur	x8, [x29, #-104]
	add	x8, x8, #4                      ; =4
	stur	x8, [x29, #-104]
	ldur	x0, [x29, #-48]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-104]
Ltmp714:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp715:
	b	LBB179_14
LBB179_14:
	b	LBB179_19
LBB179_15:
Ltmp716:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
; %bb.16:
	ldur	x0, [x29, #-112]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-96]
	ldur	x1, [x29, #-88]
	mov	x0, x8
	bl	__ZN5mystl9allocatorIiE10deallocateEPim
Ltmp717:
	bl	___cxa_rethrow
Ltmp718:
	b	LBB179_28
LBB179_17:
Ltmp719:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
Ltmp720:
	bl	___cxa_end_catch
Ltmp721:
	b	LBB179_18
LBB179_18:
	b	LBB179_26
LBB179_19:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	mov	x0, x8
	str	x1, [sp, #40]                   ; 8-byte Folded Spill
	str	x2, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	ldur	x8, [x29, #-96]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [x9]
	ldur	x10, [x29, #-88]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-80]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #16]
LBB179_20:
	b	LBB179_25
LBB179_21:
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x10, [x9, #8]
	subs	x8, x8, x10
	b.ne	LBB179_23
; %bb.22:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	bl	__ZN5mystl10address_ofIiEEPT_RS1_
	ldur	x8, [x29, #-40]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl9constructIiJRiEEEvPT_DpOT0_
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	add	x9, x9, #4                      ; =4
	str	x9, [x8, #8]
	b	LBB179_24
LBB179_23:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	bl	__ZN5mystl10address_ofIiEEPT_RS1_
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x1, x9, #4                      ; =4
	bl	__ZN5mystl9constructIiJRiEEEvPT_DpOT0_
	ldur	x0, [x29, #-48]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x1, x9, #4                      ; =4
	ldur	x9, [x29, #-48]
	add	x2, x9, #4                      ; =4
	bl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	ldur	x8, [x29, #-40]
	mov	x0, x8
	bl	__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
	ldr	w10, [x0]
	ldur	x8, [x29, #-48]
	str	w10, [x8]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	add	x9, x9, #4                      ; =4
	str	x9, [x8, #8]
LBB179_24:
LBB179_25:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-56]
	add	x0, x9, x10, lsl #2
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272                    ; =272
	ret
LBB179_26:
	ldur	x0, [x29, #-112]
	bl	__Unwind_Resume
LBB179_27:
Ltmp722:
	bl	___clang_call_terminate
LBB179_28:
Lfunc_end18:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table179:
Lexception18:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase7-Lttbaseref7
Lttbaseref7:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end18-Lcst_begin18
Lcst_begin18:
	.uleb128 Lfunc_begin18-Lfunc_begin18    ; >> Call Site 1 <<
	.uleb128 Ltmp710-Lfunc_begin18          ;   Call between Lfunc_begin18 and Ltmp710
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp710-Lfunc_begin18          ; >> Call Site 2 <<
	.uleb128 Ltmp715-Ltmp710                ;   Call between Ltmp710 and Ltmp715
	.uleb128 Ltmp716-Lfunc_begin18          ;     jumps to Ltmp716
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp715-Lfunc_begin18          ; >> Call Site 3 <<
	.uleb128 Ltmp717-Ltmp715                ;   Call between Ltmp715 and Ltmp717
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp717-Lfunc_begin18          ; >> Call Site 4 <<
	.uleb128 Ltmp718-Ltmp717                ;   Call between Ltmp717 and Ltmp718
	.uleb128 Ltmp719-Lfunc_begin18          ;     jumps to Ltmp719
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp720-Lfunc_begin18          ; >> Call Site 5 <<
	.uleb128 Ltmp721-Ltmp720                ;   Call between Ltmp720 and Ltmp721
	.uleb128 Ltmp722-Lfunc_begin18          ;     jumps to Ltmp722
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp721-Lfunc_begin18          ; >> Call Site 6 <<
	.uleb128 Lfunc_end18-Ltmp721            ;   Call between Ltmp721 and Lfunc_end18
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end18:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase7:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl9constructIiJRiEEEvPT_DpOT0_ ; -- Begin function _ZN5mystl9constructIiJRiEEEvPT_DpOT0_
	.weak_definition	__ZN5mystl9constructIiJRiEEEvPT_DpOT0_
	.p2align	2
__ZN5mystl9constructIiJRiEEEvPT_DpOT0_: ; @_ZN5mystl9constructIiJRiEEEvPT_DpOT0_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x0, [sp, #16]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
	ldr	w9, [x0]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	w9, [x8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE ; -- Begin function _ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
	.weak_definition	__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
	.p2align	2
__ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE: ; @_ZN5mystl7forwardIRiEEOT_RNSt3__116remove_referenceIS2_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl10address_ofIiEEPT_RS1_ ; -- Begin function _ZN5mystl10address_ofIiEEPT_RS1_
	.weak_definition	__ZN5mystl10address_ofIiEEPT_RS1_
	.p2align	2
__ZN5mystl10address_ofIiEEPT_RS1_:      ; @_ZN5mystl10address_ofIiEEPT_RS1_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE13_emplace_backIJRiEEEvDpOT_ ; -- Begin function _ZN5mystl6vectorIiE13_emplace_backIJRiEEEvDpOT_
	.weak_definition	__ZN5mystl6vectorIiE13_emplace_backIJRiEEEvDpOT_
	.p2align	2
__ZN5mystl6vectorIiE13_emplace_backIJRiEEEvDpOT_: ; @_ZN5mystl6vectorIiE13_emplace_backIJRiEEEvDpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #8]
	str	x9, [sp, #8]
	ldr	x1, [sp, #8]
	ldr	x2, [sp, #16]
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE10_push_backERKi ; -- Begin function _ZN5mystl6vectorIiE10_push_backERKi
	.weak_definition	__ZN5mystl6vectorIiE10_push_backERKi
	.p2align	2
__ZN5mystl6vectorIiE10_push_backERKi:   ; @_ZN5mystl6vectorIiE10_push_backERKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8, #8]
	ldr	x10, [x8, #16]
	subs	x9, x9, x10
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b.ne	LBB184_2
; %bb.1:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldr	x2, [sp, #16]
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE7emplaceIJRKiEEEPiPS3_DpOT_
	b	LBB184_3
LBB184_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	bl	__ZN5mystl10address_ofIiEEPT_RS1_
	ldr	x1, [sp, #16]
	bl	__ZN5mystl9constructIiiEEvPT_RKT0_
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	add	x9, x9, #4                      ; =4
	str	x9, [x8, #8]
LBB184_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7emplaceIJRKiEEEPiPS3_DpOT_ ; -- Begin function _ZN5mystl6vectorIiE7emplaceIJRKiEEEPiPS3_DpOT_
	.weak_definition	__ZN5mystl6vectorIiE7emplaceIJRKiEEEPiPS3_DpOT_
	.p2align	2
__ZN5mystl6vectorIiE7emplaceIJRKiEEEPiPS3_DpOT_: ; @_ZN5mystl6vectorIiE7emplaceIJRKiEEEPiPS3_DpOT_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	bl	__ZN5mystl6vectorIiE8_emplaceIJRKiEEEPiPS3_DpOT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE8_emplaceIJRKiEEEPiPS3_DpOT_ ; -- Begin function _ZN5mystl6vectorIiE8_emplaceIJRKiEEEPiPS3_DpOT_
	.weak_definition	__ZN5mystl6vectorIiE8_emplaceIJRKiEEEPiPS3_DpOT_
	.p2align	2
__ZN5mystl6vectorIiE8_emplaceIJRKiEEEPiPS3_DpOT_: ; @_ZN5mystl6vectorIiE8_emplaceIJRKiEEEPiPS3_DpOT_
Lfunc_begin19:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception19
; %bb.0:
	sub	sp, sp, #272                    ; =272
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #256]            ; 16-byte Folded Spill
	add	x29, sp, #256                   ; =256
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	stur	x0, [x29, #-24]
	stur	x1, [x29, #-32]
	stur	x2, [x29, #-40]
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	stur	x9, [x29, #-48]
	ldur	x9, [x29, #-48]
	ldr	x10, [x8]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	stur	x9, [x29, #-56]
	ldur	x9, [x29, #-32]
	ldr	x10, [x8]
	mov	w11, #0
	subs	x9, x9, x10
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	str	w11, [sp, #124]                 ; 4-byte Folded Spill
	b.lo	LBB186_2
; %bb.1:
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x10, [x9, #8]
	subs	x8, x8, x10
	cset	w11, ls
	str	w11, [sp, #124]                 ; 4-byte Folded Spill
LBB186_2:
	ldr	w8, [sp, #124]                  ; 4-byte Folded Reload
	eor	w8, w8, #0x1
	tbnz	w8, #0, LBB186_3
	b	LBB186_4
LBB186_3:
	adrp	x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #652
	adrp	x3, l_.str.68@PAGE
	add	x3, x3, l_.str.68@PAGEOFF
	bl	___assert_rtn
LBB186_4:
; %bb.5:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldr	x10, [x8, #16]
	subs	x9, x9, x10
	b.ne	LBB186_20
; %bb.6:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	cbnz	x0, LBB186_8
; %bb.7:
	mov	x8, #1
	stur	x8, [x29, #-64]
	ldur	x0, [x29, #-64]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	stur	x0, [x29, #-72]
	ldur	x0, [x29, #-72]
	ldur	x8, [x29, #-40]
	str	x0, [sp, #112]                  ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	str	x0, [sp, #104]                  ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #104]                  ; 8-byte Folded Reload
	bl	__ZN5mystl9constructIiiEEvPT_RKT0_
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	mov	x0, x8
	str	x1, [sp, #96]                   ; 8-byte Folded Spill
	str	x2, [sp, #88]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #80]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	ldur	x8, [x29, #-72]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [x9]
	ldur	x10, [x29, #-64]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #8]
	ldr	x8, [x9, #8]
	str	x8, [x9, #16]
	b	LBB186_19
LBB186_8:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE8max_sizeEv
	mov	x8, #2
	udiv	x8, x0, x8
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	subs	x8, x9, x8
	cset	w10, lo
	eor	w10, w10, #0x1
	tbnz	w10, #0, LBB186_9
	b	LBB186_10
LBB186_9:
	adrp	x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #665
	adrp	x3, l_.str.69@PAGE
	add	x3, x3, l_.str.69@PAGEOFF
	bl	___assert_rtn
LBB186_10:
; %bb.11:
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	mov	x8, #2
	mul	x8, x8, x0
	stur	x8, [x29, #-80]
	ldr	x0, [sp, #128]                  ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4sizeEv
	add	x8, x0, #1                      ; =1
	stur	x8, [x29, #-88]
	ldur	x0, [x29, #-88]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	stur	x0, [x29, #-96]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-96]
Ltmp725:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp726:
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	b	LBB186_12
LBB186_12:
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-104]
	ldur	x0, [x29, #-104]
	ldur	x9, [x29, #-40]
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x0, x9
	bl	__ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #48]                   ; 8-byte Folded Reload
	bl	__ZN5mystl9constructIiiEEvPT_RKT0_
	ldur	x8, [x29, #-104]
	add	x8, x8, #4                      ; =4
	stur	x8, [x29, #-104]
	ldur	x0, [x29, #-48]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldur	x2, [x29, #-104]
Ltmp727:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp728:
	b	LBB186_13
LBB186_13:
	b	LBB186_18
LBB186_14:
Ltmp729:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
; %bb.15:
	ldur	x0, [x29, #-112]
	bl	___cxa_begin_catch
	ldur	x8, [x29, #-96]
	ldur	x1, [x29, #-88]
	mov	x0, x8
	bl	__ZN5mystl9allocatorIiE10deallocateEPim
Ltmp730:
	bl	___cxa_rethrow
Ltmp731:
	b	LBB186_27
LBB186_16:
Ltmp732:
                                        ; kill: def $w1 killed $w1 killed $x1
	stur	x0, [x29, #-112]
	stur	w1, [x29, #-116]
Ltmp733:
	bl	___cxa_end_catch
Ltmp734:
	b	LBB186_17
LBB186_17:
	b	LBB186_25
LBB186_18:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	mov	x0, x8
	str	x1, [sp, #40]                   ; 8-byte Folded Spill
	str	x2, [sp, #32]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #40]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x3, [sp, #24]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	ldur	x8, [x29, #-96]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [x9]
	ldur	x10, [x29, #-88]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-80]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #16]
LBB186_19:
	b	LBB186_24
LBB186_20:
	ldur	x8, [x29, #-32]
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x10, [x9, #8]
	subs	x8, x8, x10
	b.ne	LBB186_22
; %bb.21:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	bl	__ZN5mystl10address_ofIiEEPT_RS1_
	ldur	x8, [x29, #-40]
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x0, x1
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl9constructIiiEEvPT_RKT0_
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	add	x9, x9, #4                      ; =4
	str	x9, [x8, #8]
	b	LBB186_23
LBB186_22:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x0, [x8, #8]
	bl	__ZN5mystl10address_ofIiEEPT_RS1_
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x1, x9, #4                      ; =4
	bl	__ZN5mystl9constructIiJRiEEEvPT_DpOT0_
	ldur	x0, [x29, #-48]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x1, x9, #4                      ; =4
	ldur	x9, [x29, #-48]
	add	x2, x9, #4                      ; =4
	bl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	ldur	x8, [x29, #-40]
	mov	x0, x8
	bl	__ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE
	ldr	w10, [x0]
	ldur	x8, [x29, #-48]
	str	w10, [x8]
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	add	x9, x9, #4                      ; =4
	str	x9, [x8, #8]
LBB186_23:
LBB186_24:
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-56]
	add	x0, x9, x10, lsl #2
	ldp	x29, x30, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #272                    ; =272
	ret
LBB186_25:
	ldur	x0, [x29, #-112]
	bl	__Unwind_Resume
LBB186_26:
Ltmp735:
	bl	___clang_call_terminate
LBB186_27:
Lfunc_end19:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table186:
Lexception19:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase8-Lttbaseref8
Lttbaseref8:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end19-Lcst_begin19
Lcst_begin19:
	.uleb128 Lfunc_begin19-Lfunc_begin19    ; >> Call Site 1 <<
	.uleb128 Ltmp725-Lfunc_begin19          ;   Call between Lfunc_begin19 and Ltmp725
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp725-Lfunc_begin19          ; >> Call Site 2 <<
	.uleb128 Ltmp728-Ltmp725                ;   Call between Ltmp725 and Ltmp728
	.uleb128 Ltmp729-Lfunc_begin19          ;     jumps to Ltmp729
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp728-Lfunc_begin19          ; >> Call Site 3 <<
	.uleb128 Ltmp730-Ltmp728                ;   Call between Ltmp728 and Ltmp730
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp730-Lfunc_begin19          ; >> Call Site 4 <<
	.uleb128 Ltmp731-Ltmp730                ;   Call between Ltmp730 and Ltmp731
	.uleb128 Ltmp732-Lfunc_begin19          ;     jumps to Ltmp732
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp733-Lfunc_begin19          ; >> Call Site 5 <<
	.uleb128 Ltmp734-Ltmp733                ;   Call between Ltmp733 and Ltmp734
	.uleb128 Ltmp735-Lfunc_begin19          ;     jumps to Ltmp735
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp734-Lfunc_begin19          ; >> Call Site 6 <<
	.uleb128 Lfunc_end19-Ltmp734            ;   Call between Ltmp734 and Lfunc_end19
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end19:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase8:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE ; -- Begin function _ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE
	.weak_definition	__ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE
	.p2align	2
__ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE: ; @_ZN5mystl7forwardIRKiEEOT_RNSt3__116remove_referenceIS3_E4typeE
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE9_pop_backEv ; -- Begin function _ZN5mystl6vectorIiE9_pop_backEv
	.weak_definition	__ZN5mystl6vectorIiE9_pop_backEv
	.p2align	2
__ZN5mystl6vectorIiE9_pop_backEv:       ; @_ZN5mystl6vectorIiE9_pop_backEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x0, x8
	str	x8, [sp]                        ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE5emptyEv
	mov	w9, #1
	eor	w10, w0, #0x1
	eor	w9, w10, w9
	tbnz	w9, #0, LBB188_1
	b	LBB188_2
LBB188_1:
	adrp	x0, l___func__._ZN5mystl6vectorIiE9_pop_backEv@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE9_pop_backEv@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #768
	adrp	x3, l_.str.70@PAGE
	add	x3, x3, l_.str.70@PAGEOFF
	bl	___assert_rtn
LBB188_2:
; %bb.3:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x0, x9, #4                      ; =4
	bl	__ZN5mystl9allocatorIiE7destroyEPi
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x9, x9, #4                      ; =4
	str	x9, [x8, #8]
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl9allocatorIiE7destroyEPi ; -- Begin function _ZN5mystl9allocatorIiE7destroyEPi
	.weak_definition	__ZN5mystl9allocatorIiE7destroyEPi
	.p2align	2
__ZN5mystl9allocatorIiE7destroyEPi:     ; @_ZN5mystl9allocatorIiE7destroyEPi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32                     ; =32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16                    ; =16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	bl	__ZN5mystl7destroyIiEEvPT_
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32                     ; =32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_insertEPKiRS2_ ; -- Begin function _ZN5mystl6vectorIiE7_insertEPKiRS2_
	.weak_definition	__ZN5mystl6vectorIiE7_insertEPKiRS2_
	.p2align	2
__ZN5mystl6vectorIiE7_insertEPKiRS2_:   ; @_ZN5mystl6vectorIiE7_insertEPKiRS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	ldur	x0, [x29, #-8]
	ldr	x8, [sp, #8]
	ldr	w9, [x8]
	add	x2, sp, #4                      ; =4
	str	w9, [sp, #4]
	ldr	x1, [sp, #16]
	bl	__ZN5mystl6vectorIiE8_emplaceIJRKiEEEPiPS3_DpOT_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_ ; -- Begin function _ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_
	.weak_definition	__ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_
	.p2align	2
__ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_: ; @_ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_
Lfunc_begin20:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception20
; %bb.0:
	sub	sp, sp, #208                    ; =208
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192                   ; =192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	stur	x3, [x29, #-32]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-24]
	ldur	x10, [x29, #-32]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	stur	x9, [x29, #-40]
	ldur	x9, [x29, #-16]
	stur	x9, [x29, #-48]
	mov	x0, x8
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE8max_sizeEv
	ldur	x8, [x29, #-40]
	subs	x8, x0, x8
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	subs	x8, x9, x8
	cset	w11, lo
	eor	w11, w11, #0x1
	tbnz	w11, #0, LBB191_1
	b	LBB191_2
LBB191_1:
	adrp	x0, l___func__._ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #846
	adrp	x3, l_.str.71@PAGE
	add	x3, x3, l_.str.71@PAGEOFF
	bl	___assert_rtn
LBB191_2:
; %bb.3:
	ldur	x8, [x29, #-24]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	b.ne	LBB191_5
; %bb.4:
	b	LBB191_20
LBB191_5:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	ldur	x10, [x29, #-40]
	subs	x9, x9, x10
	b.lo	LBB191_10
; %bb.6:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	stur	x9, [x29, #-56]
	ldr	x9, [x8, #8]
	ldur	x10, [x29, #-16]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	stur	x9, [x29, #-64]
	ldur	x9, [x29, #-40]
	ldur	x10, [x29, #-64]
	subs	x9, x9, x10
	stur	x9, [x29, #-72]
	ldur	x9, [x29, #-40]
	ldur	x10, [x29, #-64]
	subs	x9, x9, x10
	b.ls	LBB191_8
; %bb.7:
	ldur	x0, [x29, #-48]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldr	x9, [x8, #8]
	ldur	x10, [x29, #-72]
	add	x2, x9, x10, lsl #2
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [x8, #8]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-48]
	bl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	b	LBB191_9
LBB191_8:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldur	x10, [x29, #-40]
	mov	x11, #0
	subs	x10, x11, x10
	add	x0, x9, x10, lsl #2
	ldr	x1, [x8, #8]
	ldr	x2, [x8, #8]
	str	x11, [sp, #48]                  ; 8-byte Folded Spill
	bl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [x8, #8]
	ldur	x0, [x29, #-48]
	ldur	x9, [x29, #-56]
	ldur	x10, [x29, #-40]
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	subs	x10, x11, x10
	add	x1, x9, x10, lsl #2
	ldur	x9, [x29, #-48]
	ldur	x10, [x29, #-40]
	add	x2, x9, x10, lsl #2
	bl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	ldur	x8, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-48]
	mov	x0, x8
	bl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
LBB191_9:
	b	LBB191_20
LBB191_10:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldur	x8, [x29, #-40]
	add	x8, x0, x8
	stur	x8, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #96]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-88]
Ltmp737:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp738:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB191_11
LBB191_11:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x8, [sp, #96]
	ldur	x0, [x29, #-24]
	ldur	x1, [x29, #-32]
	ldr	x2, [sp, #96]
Ltmp739:
	bl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
Ltmp740:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB191_12
LBB191_12:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	str	x8, [sp, #96]
	ldur	x0, [x29, #-48]
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [x9, #8]
	ldr	x2, [sp, #96]
Ltmp741:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp742:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB191_13
LBB191_13:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #96]
	b	LBB191_19
LBB191_14:
Ltmp743:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #88]
	str	w1, [sp, #84]
; %bb.15:
	ldr	x0, [sp, #88]
	bl	___cxa_begin_catch
	ldur	x1, [x29, #-88]
	ldr	x2, [sp, #96]
	ldur	x3, [x29, #-80]
Ltmp744:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
Ltmp745:
	b	LBB191_16
LBB191_16:
Ltmp746:
	bl	___cxa_rethrow
Ltmp747:
	b	LBB191_23
LBB191_17:
Ltmp748:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #88]
	str	w1, [sp, #84]
Ltmp749:
	bl	___cxa_end_catch
Ltmp750:
	b	LBB191_18
LBB191_18:
	b	LBB191_21
LBB191_19:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	mov	x0, x8
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x3, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	ldur	x8, [x29, #-88]
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [sp, #96]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-80]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #16]
LBB191_20:
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #208                    ; =208
	ret
LBB191_21:
	ldr	x0, [sp, #88]
	bl	__Unwind_Resume
LBB191_22:
Ltmp751:
	bl	___clang_call_terminate
LBB191_23:
Lfunc_end20:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table191:
Lexception20:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase9-Lttbaseref9
Lttbaseref9:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end20-Lcst_begin20
Lcst_begin20:
	.uleb128 Lfunc_begin20-Lfunc_begin20    ; >> Call Site 1 <<
	.uleb128 Ltmp737-Lfunc_begin20          ;   Call between Lfunc_begin20 and Ltmp737
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp737-Lfunc_begin20          ; >> Call Site 2 <<
	.uleb128 Ltmp742-Ltmp737                ;   Call between Ltmp737 and Ltmp742
	.uleb128 Ltmp743-Lfunc_begin20          ;     jumps to Ltmp743
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp742-Lfunc_begin20          ; >> Call Site 3 <<
	.uleb128 Ltmp744-Ltmp742                ;   Call between Ltmp742 and Ltmp744
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp744-Lfunc_begin20          ; >> Call Site 4 <<
	.uleb128 Ltmp747-Ltmp744                ;   Call between Ltmp744 and Ltmp747
	.uleb128 Ltmp748-Lfunc_begin20          ;     jumps to Ltmp748
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp749-Lfunc_begin20          ; >> Call Site 5 <<
	.uleb128 Ltmp750-Ltmp749                ;   Call between Ltmp749 and Ltmp750
	.uleb128 Ltmp751-Lfunc_begin20          ;     jumps to Ltmp751
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp750-Lfunc_begin20          ; >> Call Site 6 <<
	.uleb128 Lfunc_end20-Ltmp750            ;   Call between Ltmp750 and Lfunc_end20
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end20:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase9:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE6_eraseEPKi ; -- Begin function _ZN5mystl6vectorIiE6_eraseEPKi
	.weak_definition	__ZN5mystl6vectorIiE6_eraseEPKi
	.p2align	2
__ZN5mystl6vectorIiE6_eraseEPKi:        ; @_ZN5mystl6vectorIiE6_eraseEPKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	ldr	x10, [x8]
	mov	w11, #0
	subs	x9, x9, x10
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	str	w11, [sp, #12]                  ; 4-byte Folded Spill
	b.lo	LBB192_2
; %bb.1:
	ldur	x8, [x29, #-16]
	ldr	x9, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x10, [x9, #8]
	subs	x8, x8, x10
	cset	w11, lo
	str	w11, [sp, #12]                  ; 4-byte Folded Spill
LBB192_2:
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	eor	w8, w8, #0x1
	tbnz	w8, #0, LBB192_3
	b	LBB192_4
LBB192_3:
	adrp	x0, l___func__._ZN5mystl6vectorIiE6_eraseEPKi@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE6_eraseEPKi@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #893
	adrp	x3, l_.str.72@PAGE
	add	x3, x3, l_.str.72@PAGEOFF
	bl	___assert_rtn
LBB192_4:
; %bb.5:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	add	x0, x8, #4                      ; =4
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldr	x2, [sp, #24]
	bl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x9, x9, #4                      ; =4
	mov	x0, x9
	bl	__ZN5mystl9allocatorIiE7destroyEPi
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	subs	x9, x9, #4                      ; =4
	str	x9, [x8, #8]
	ldr	x0, [sp, #24]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6_eraseEPKiS3_ ; -- Begin function _ZN5mystl6vectorIiE6_eraseEPKiS3_
	.weak_definition	__ZN5mystl6vectorIiE6_eraseEPKiS3_
	.p2align	2
__ZN5mystl6vectorIiE6_eraseEPKiS3_:     ; @_ZN5mystl6vectorIiE6_eraseEPKiS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	ldr	x10, [x8]
	mov	w11, #0
	subs	x9, x9, x10
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	w11, [sp, #4]                   ; 4-byte Folded Spill
	b.lo	LBB193_3
; %bb.1:
	ldur	x8, [x29, #-24]
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x10, [x9, #8]
	mov	w11, #0
	subs	x8, x8, x10
	str	w11, [sp, #4]                   ; 4-byte Folded Spill
	b.hi	LBB193_3
; %bb.2:
	ldur	x8, [x29, #-16]
	ldur	x9, [x29, #-24]
	subs	x8, x8, x9
	cset	w10, ls
	str	w10, [sp, #4]                   ; 4-byte Folded Spill
LBB193_3:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	eor	w8, w8, #0x1
	tbnz	w8, #0, LBB193_4
	b	LBB193_5
LBB193_4:
	adrp	x0, l___func__._ZN5mystl6vectorIiE6_eraseEPKi@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE6_eraseEPKi@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #905
	adrp	x3, l_.str.73@PAGE
	add	x3, x3, l_.str.73@PAGEOFF
	bl	___assert_rtn
LBB193_5:
; %bb.6:
	ldur	x8, [x29, #-16]
	str	x8, [sp, #32]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]
	ldr	x0, [sp, #24]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldr	x2, [sp, #32]
	bl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	bl	__ZN5mystl9allocatorIiE7destroyEPiS2_
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [x9, #8]
	ldr	x0, [sp, #32]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_resizeEm  ; -- Begin function _ZN5mystl6vectorIiE7_resizeEm
	.weak_definition	__ZN5mystl6vectorIiE7_resizeEm
	.p2align	2
__ZN5mystl6vectorIiE7_resizeEm:         ; @_ZN5mystl6vectorIiE7_resizeEm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	add	x2, sp, #12                     ; =12
	str	wzr, [sp, #12]
	bl	__ZN5mystl6vectorIiE7_resizeEmRKi
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_resizeEmRKi ; -- Begin function _ZN5mystl6vectorIiE7_resizeEmRKi
	.weak_definition	__ZN5mystl6vectorIiE7_resizeEmRKi
	.p2align	2
__ZN5mystl6vectorIiE7_resizeEmRKi:      ; @_ZN5mystl6vectorIiE7_resizeEmRKi
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80                     ; =80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64                    ; =64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	x2, [x29, #-24]
	ldur	x8, [x29, #-8]
	ldur	x9, [x29, #-16]
	mov	x0, x8
	str	x8, [sp, #32]                   ; 8-byte Folded Spill
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	b.hs	LBB195_2
; %bb.1:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-16]
	add	x1, x9, x10, lsl #2
	ldr	x2, [x8, #8]
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE5eraseEPKiS3_
	b	LBB195_3
LBB195_2:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldur	x9, [x29, #-16]
	mov	x0, x8
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	str	x9, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x2, x8, x0
	ldur	x3, [x29, #-24]
	ldr	x0, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE6insertEPKimRS2_
LBB195_3:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80                     ; =80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE6insertEPKimRS2_ ; -- Begin function _ZN5mystl6vectorIiE6insertEPKimRS2_
	.weak_definition	__ZN5mystl6vectorIiE6insertEPKimRS2_
	.p2align	2
__ZN5mystl6vectorIiE6insertEPKimRS2_:   ; @_ZN5mystl6vectorIiE6insertEPKimRS2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
	str	x3, [sp]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	ldr	x2, [sp, #8]
	ldr	x3, [sp]
	bl	__ZN5mystl6vectorIiE7_insertEPKimRS2_
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE7_insertEPKimRS2_ ; -- Begin function _ZN5mystl6vectorIiE7_insertEPKimRS2_
	.weak_definition	__ZN5mystl6vectorIiE7_insertEPKimRS2_
	.p2align	2
__ZN5mystl6vectorIiE7_insertEPKimRS2_:  ; @_ZN5mystl6vectorIiE7_insertEPKimRS2_
Lfunc_begin21:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception21
; %bb.0:
	sub	sp, sp, #208                    ; =208
	stp	x29, x30, [sp, #192]            ; 16-byte Folded Spill
	add	x29, sp, #192                   ; =192
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	stur	x1, [x29, #-24]
	stur	x2, [x29, #-32]
	stur	x3, [x29, #-40]
	ldur	x8, [x29, #-16]
	mov	x0, x8
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE8max_sizeEv
	ldur	x8, [x29, #-32]
	subs	x8, x0, x8
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	subs	x8, x9, x8
	cset	w10, lo
	eor	w10, w10, #0x1
	tbnz	w10, #0, LBB197_1
	b	LBB197_2
LBB197_1:
	adrp	x0, l___func__._ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_@PAGE
	add	x0, x0, l___func__._ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_@PAGEOFF
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	w2, #793
	adrp	x3, l_.str.74@PAGE
	add	x3, x3, l_.str.74@PAGEOFF
	bl	___assert_rtn
LBB197_2:
; %bb.3:
	ldur	x8, [x29, #-24]
	stur	x8, [x29, #-48]
	ldur	x8, [x29, #-32]
	cbnz	x8, LBB197_5
; %bb.4:
	ldur	x8, [x29, #-48]
	stur	x8, [x29, #-8]
	b	LBB197_21
LBB197_5:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldr	x8, [sp, #56]                   ; 8-byte Folded Reload
	subs	x9, x8, x0
	ldur	x10, [x29, #-32]
	subs	x9, x9, x10
	b.lo	LBB197_10
; %bb.6:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	stur	x9, [x29, #-56]
	ldr	x9, [x8, #8]
	ldur	x10, [x29, #-48]
	subs	x9, x9, x10
	mov	x10, #4
	sdiv	x9, x9, x10
	stur	x9, [x29, #-64]
	ldur	x9, [x29, #-32]
	ldur	x10, [x29, #-64]
	subs	x9, x9, x10
	stur	x9, [x29, #-72]
	ldur	x9, [x29, #-32]
	ldur	x10, [x29, #-64]
	subs	x9, x9, x10
	b.ls	LBB197_8
; %bb.7:
	ldur	x0, [x29, #-48]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [x8, #8]
	ldr	x9, [x8, #8]
	ldur	x10, [x29, #-72]
	add	x2, x9, x10, lsl #2
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [x8, #8]
	ldur	x0, [x29, #-48]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-40]
	bl	__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
	b	LBB197_9
LBB197_8:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x9, [x8, #8]
	ldur	x10, [x29, #-32]
	mov	x11, #0
	subs	x10, x11, x10
	add	x0, x9, x10, lsl #2
	ldr	x1, [x8, #8]
	ldr	x2, [x8, #8]
	str	x11, [sp, #48]                  ; 8-byte Folded Spill
	bl	__ZN5mystl18uninitialized_copyIPiS1_EET0_T_S3_S2_
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [x8, #8]
	ldur	x0, [x29, #-48]
	ldur	x9, [x29, #-56]
	ldur	x10, [x29, #-32]
	ldr	x11, [sp, #48]                  ; 8-byte Folded Reload
	subs	x10, x11, x10
	add	x1, x9, x10, lsl #2
	ldur	x9, [x29, #-48]
	ldur	x10, [x29, #-32]
	add	x2, x9, x10, lsl #2
	bl	__ZN5mystl4moveIPiS1_EET0_T_S3_S2_
	ldur	x8, [x29, #-48]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-40]
	mov	x0, x8
	bl	__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
LBB197_9:
	b	LBB197_20
LBB197_10:
	ldr	x0, [sp, #72]                   ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE4sizeEv
	ldur	x8, [x29, #-32]
	add	x8, x0, x8
	stur	x8, [x29, #-80]
	ldur	x0, [x29, #-80]
	bl	__ZN5mystl9allocatorIiE8allocateEm
	stur	x0, [x29, #-88]
	ldur	x8, [x29, #-88]
	str	x8, [sp, #96]
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x0, [x8]
	ldur	x1, [x29, #-48]
	ldur	x2, [x29, #-88]
Ltmp752:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp753:
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	b	LBB197_11
LBB197_11:
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	str	x8, [sp, #96]
	ldr	x0, [sp, #96]
	ldur	x1, [x29, #-32]
	ldur	x2, [x29, #-40]
Ltmp754:
	bl	__ZN5mystl20uninitialized_fill_nIPimiEET_S2_T0_RKT1_
Ltmp755:
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	b	LBB197_12
LBB197_12:
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	str	x8, [sp, #96]
	ldur	x0, [x29, #-48]
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [x9, #8]
	ldr	x2, [sp, #96]
Ltmp756:
	bl	__ZN5mystl18uninitialized_moveIPiS1_EET0_T_S3_S2_
Ltmp757:
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	b	LBB197_13
LBB197_13:
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	str	x8, [sp, #96]
	b	LBB197_17
LBB197_14:
Ltmp758:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #88]
	str	w1, [sp, #84]
; %bb.15:
	ldr	x0, [sp, #88]
	bl	___cxa_begin_catch
	ldur	x1, [x29, #-88]
	ldr	x2, [sp, #96]
	ldur	x3, [x29, #-80]
Ltmp759:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	mov	x0, x8
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
Ltmp760:
	b	LBB197_16
LBB197_16:
	bl	___cxa_end_catch
LBB197_17:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x1, [x8]
	ldr	x2, [x8, #8]
	mov	x0, x8
	str	x1, [sp, #16]                   ; 8-byte Folded Spill
	str	x2, [sp, #8]                    ; 8-byte Folded Spill
	bl	__ZN5mystl6vectorIiE8capacityEv
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	ldr	x1, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x2, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x3, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl6vectorIiE20_destroy_and_recoverEPiS2_m
	ldur	x8, [x29, #-88]
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	str	x8, [x9]
	ldr	x8, [sp, #96]
	str	x8, [x9, #8]
	ldr	x8, [x9]
	ldur	x10, [x29, #-80]
	add	x8, x8, x10, lsl #2
	str	x8, [x9, #16]
	b	LBB197_20
LBB197_18:
Ltmp761:
                                        ; kill: def $w1 killed $w1 killed $x1
	str	x0, [sp, #88]
	str	w1, [sp, #84]
Ltmp762:
	bl	___cxa_end_catch
Ltmp763:
	b	LBB197_19
LBB197_19:
	b	LBB197_22
LBB197_20:
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldr	x9, [x8]
	ldur	x10, [x29, #-32]
	add	x9, x9, x10, lsl #2
	stur	x9, [x29, #-8]
LBB197_21:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #192]            ; 16-byte Folded Reload
	add	sp, sp, #208                    ; =208
	ret
LBB197_22:
	ldr	x0, [sp, #88]
	bl	__Unwind_Resume
LBB197_23:
Ltmp764:
	bl	___clang_call_terminate
Lfunc_end21:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table197:
Lexception21:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase10-Lttbaseref10
Lttbaseref10:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end21-Lcst_begin21
Lcst_begin21:
	.uleb128 Lfunc_begin21-Lfunc_begin21    ; >> Call Site 1 <<
	.uleb128 Ltmp752-Lfunc_begin21          ;   Call between Lfunc_begin21 and Ltmp752
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp752-Lfunc_begin21          ; >> Call Site 2 <<
	.uleb128 Ltmp757-Ltmp752                ;   Call between Ltmp752 and Ltmp757
	.uleb128 Ltmp758-Lfunc_begin21          ;     jumps to Ltmp758
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp757-Lfunc_begin21          ; >> Call Site 3 <<
	.uleb128 Ltmp759-Ltmp757                ;   Call between Ltmp757 and Ltmp759
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp759-Lfunc_begin21          ; >> Call Site 4 <<
	.uleb128 Ltmp760-Ltmp759                ;   Call between Ltmp759 and Ltmp760
	.uleb128 Ltmp761-Lfunc_begin21          ;     jumps to Ltmp761
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp760-Lfunc_begin21          ; >> Call Site 5 <<
	.uleb128 Ltmp762-Ltmp760                ;   Call between Ltmp760 and Ltmp762
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp762-Lfunc_begin21          ; >> Call Site 6 <<
	.uleb128 Ltmp763-Ltmp762                ;   Call between Ltmp762 and Ltmp763
	.uleb128 Ltmp764-Lfunc_begin21          ;     jumps to Ltmp764
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp763-Lfunc_begin21          ; >> Call Site 7 <<
	.uleb128 Lfunc_end21-Ltmp763            ;   Call between Ltmp763 and Lfunc_end21
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end21:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase10:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl6vectorIiE8_reverseEv ; -- Begin function _ZN5mystl6vectorIiE8_reverseEv
	.weak_definition	__ZN5mystl6vectorIiE8_reverseEv
	.p2align	2
__ZN5mystl6vectorIiE8_reverseEv:        ; @_ZN5mystl6vectorIiE8_reverseEv
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x8, [x29, #-8]
	ldr	x9, [x8]
	str	x9, [sp, #16]
	ldr	x8, [x8, #8]
	subs	x8, x8, #4                      ; =4
	str	x8, [sp, #8]
LBB198_1:                               ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #16]
	ldr	x9, [sp, #8]
	subs	x8, x8, x9
	b.hs	LBB198_3
; %bb.2:                                ;   in Loop: Header=BB198_1 Depth=1
	ldr	x0, [sp, #16]
	ldr	x1, [sp, #8]
	bl	__ZN5mystl4swapIiEEvRT_S2_
	ldr	x8, [sp, #16]
	add	x8, x8, #4                      ; =4
	str	x8, [sp, #16]
	ldr	x8, [sp, #8]
	subs	x8, x8, #4                      ; =4
	str	x8, [sp, #8]
	b	LBB198_1
LBB198_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl4swapIiEEvRT_S2_      ; -- Begin function _ZN5mystl4swapIiEEvRT_S2_
	.weak_definition	__ZN5mystl4swapIiEEvRT_S2_
	.p2align	2
__ZN5mystl4swapIiEEvRT_S2_:             ; @_ZN5mystl4swapIiEEvRT_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_
	ldr	w8, [x0]
	add	x0, sp, #12                     ; =12
	str	w8, [sp, #12]
	ldr	x9, [sp, #16]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x9
	bl	__ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_
	ldr	w8, [x0]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_
	ldr	w8, [x0]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_ ; -- Begin function _ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_
	.weak_definition	__ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_
	.p2align	2
__ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_: ; @_ZN5mystl4moveIRiEEONSt3__116remove_referenceIT_E4typeEOS4_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl6vectorIiE5_swapERS1_ ; -- Begin function _ZN5mystl6vectorIiE5_swapERS1_
	.weak_definition	__ZN5mystl6vectorIiE5_swapERS1_
	.p2align	2
__ZN5mystl6vectorIiE5_swapERS1_:        ; @_ZN5mystl6vectorIiE5_swapERS1_
Lfunc_begin22:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception22
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	subs	x9, x8, x9
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	b.eq	LBB201_5
; %bb.1:
	ldr	x1, [sp, #16]
Ltmp766:
	ldr	x0, [sp, #8]                    ; 8-byte Folded Reload
	bl	__ZN5mystl4swapIPiEEvRT_S3_
Ltmp767:
	b	LBB201_2
LBB201_2:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, #8                      ; =8
	ldr	x8, [sp, #16]
	add	x1, x8, #8                      ; =8
Ltmp768:
	bl	__ZN5mystl4swapIPiEEvRT_S3_
Ltmp769:
	b	LBB201_3
LBB201_3:
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	add	x0, x8, #16                     ; =16
	ldr	x8, [sp, #16]
	add	x1, x8, #16                     ; =16
Ltmp770:
	bl	__ZN5mystl4swapIPiEEvRT_S3_
Ltmp771:
	b	LBB201_4
LBB201_4:
LBB201_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
LBB201_6:
Ltmp772:
	bl	___clang_call_terminate
Lfunc_end22:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table201:
Lexception22:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase11-Lttbaseref11
Lttbaseref11:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end22-Lcst_begin22
Lcst_begin22:
	.uleb128 Ltmp766-Lfunc_begin22          ; >> Call Site 1 <<
	.uleb128 Ltmp771-Ltmp766                ;   Call between Ltmp766 and Ltmp771
	.uleb128 Ltmp772-Lfunc_begin22          ;     jumps to Ltmp772
	.byte	1                               ;   On action: 1
Lcst_end22:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase11:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN5mystl4swapIPiEEvRT_S3_     ; -- Begin function _ZN5mystl4swapIPiEEvRT_S3_
	.weak_definition	__ZN5mystl4swapIPiEEvRT_S3_
	.p2align	2
__ZN5mystl4swapIPiEEvRT_S3_:            ; @_ZN5mystl4swapIPiEEvRT_S3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_
	ldr	x8, [x0]
	add	x0, sp, #8                      ; =8
	str	x8, [sp, #8]
	ldr	x8, [sp, #16]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x8
	bl	__ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_
	ldr	x8, [x0]
	ldur	x9, [x29, #-8]
	str	x8, [x9]
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_
	ldr	x8, [x0]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_ ; -- Begin function _ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_
	.weak_definition	__ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_
	.p2align	2
__ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_: ; @_ZN5mystl4moveIRPiEEONSt3__116remove_referenceIT_E4typeEOS5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L11swap_rangesIPiS1_EET0_T_S3_S2_
__ZNSt3__1L11swap_rangesIPiS1_EET0_T_S3_S2_: ; @_ZNSt3__1L11swap_rangesIPiS1_EET0_T_S3_S2_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	str	x2, [sp, #8]
LBB204_1:                               ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x9, [sp, #16]
	subs	x8, x8, x9
	b.eq	LBB204_4
; %bb.2:                                ;   in Loop: Header=BB204_1 Depth=1
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #8]
	bl	__ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
; %bb.3:                                ;   in Loop: Header=BB204_1 Depth=1
	ldur	x8, [x29, #-8]
	add	x8, x8, #4                      ; =4
	stur	x8, [x29, #-8]
	ldr	x8, [sp, #8]
	add	x8, x8, #4                      ; =4
	str	x8, [sp, #8]
	b	LBB204_1
LBB204_4:
	ldr	x0, [sp, #8]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
__ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_: ; @_ZNSt3__1L4swapIiEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS2_EE5valueEvE4typeERS2_S5_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48                     ; =48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32                    ; =32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldur	x0, [x29, #-8]
	bl	__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	ldr	w8, [x0]
	add	x0, sp, #12                     ; =12
	str	w8, [sp, #12]
	ldr	x9, [sp, #16]
	str	x0, [sp]                        ; 8-byte Folded Spill
	mov	x0, x9
	bl	__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	ldr	w8, [x0]
	ldur	x9, [x29, #-8]
	str	w8, [x9]
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	bl	__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	ldr	w8, [x0]
	ldr	x9, [sp, #16]
	str	w8, [x9]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48                     ; =48
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function _ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
__ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_: ; @_ZNSt3__1L4moveIRiEEONS_16remove_referenceIT_E4typeEOS3_
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16                     ; =16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x0, [sp, #8]
	add	sp, sp, #16                     ; =16
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" "

l_.str.1:                               ; @.str.1
	.asciz	"size = "

l_.str.2:                               ; @.str.2
	.asciz	", capacity = "

l_.str.3:                               ; @.str.3
	.asciz	", front = "

l_.str.4:                               ; @.str.4
	.asciz	", back = "

l_.str.5:                               ; @.str.5
	.asciz	", data = "

	.section	__DATA,__data
	.globl	_i                              ; @i
	.p2align	2
_i:
	.long	2                               ; 0x2

	.section	__TEXT,__const
	.p2align	2                               ; @constinit
l_constinit:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.p2align	2                               ; @constinit.6
l_constinit.6:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	6                               ; 0x6

	.section	__TEXT,__cstring,cstring_literals
l_.str.7:                               ; @.str.7
	.asciz	"v11.begin()    = "

l_.str.8:                               ; @.str.8
	.asciz	"*v11.begin()   = "

l_.str.9:                               ; @.str.9
	.asciz	"v11.end()      = "

l_.str.10:                              ; @.str.10
	.asciz	"*v11.end()     = "

l_.str.11:                              ; @.str.11
	.asciz	"reverse_iterator_test : "

l_.str.12:                              ; @.str.12
	.asciz	"v11.cbegin()   = "

l_.str.13:                              ; @.str.13
	.asciz	"*v11.cbegin()  = "

l_.str.14:                              ; @.str.14
	.asciz	"v11.cend()     = "

l_.str.15:                              ; @.str.15
	.asciz	"*v11.cend()    = "

	.section	__TEXT,__const
	.p2align	2                               ; @constinit.16
l_constinit.16:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"v12.empty()    = "

l_.str.18:                              ; @.str.18
	.asciz	"v12.size()     = "

l_.str.19:                              ; @.str.19
	.asciz	"v12.max_size() = "

l_.str.20:                              ; @.str.20
	.asciz	"v12.capacity() = "

l_.str.21:                              ; @.str.21
	.asciz	"v12.info           : "

l_.str.22:                              ; @.str.22
	.asciz	"v12.reserve(15)    : "

l_.str.23:                              ; @.str.23
	.asciz	"v12.reserve(17)    : "

l_.str.24:                              ; @.str.24
	.asciz	"v12.shrink_to_fit(): "

	.section	__TEXT,__const
	.p2align	2                               ; @constinit.25
l_constinit.25:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str.26:                              ; @.str.26
	.asciz	"v13.at(1)   = "

l_.str.27:                              ; @.str.27
	.asciz	"v13[1]      = "

l_.str.28:                              ; @.str.28
	.asciz	"*v13.data() = "

l_.str.29:                              ; @.str.29
	.asciz	"v14.assign(1, 1)"

l_.str.30:                              ; @.str.30
	.asciz	"v14.info           : "

l_.str.31:                              ; @.str.31
	.asciz	"v14.value          : "

l_.str.32:                              ; @.str.32
	.asciz	"v14.assign(v13.begin(), v13.end())"

l_.str.33:                              ; @.str.33
	.asciz	"v14.assign(std::initializer_list<value_type> _ilist)"

	.section	__TEXT,__const
	.p2align	2                               ; @constinit.34
l_constinit.34:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5
	.long	6                               ; 0x6
	.long	7                               ; 0x7
	.long	8                               ; 0x8
	.long	9                               ; 0x9

	.section	__TEXT,__cstring,cstring_literals
l_.str.35:                              ; @.str.35
	.asciz	"v15.emplace(v15.begin(), 4)"

l_.str.36:                              ; @.str.36
	.asciz	"v15.info                      : "

l_.str.37:                              ; @.str.37
	.asciz	"v15.value                     : "

l_.str.38:                              ; @.str.38
	.asciz	"v15.emplace_back(5)"

l_.str.39:                              ; @.str.39
	.asciz	"v15.push_back(6)"

l_.str.40:                              ; @.str.40
	.asciz	"v15.pop_back()"

l_.str.41:                              ; @.str.41
	.asciz	"v16.insert(v16.begin(), 3)"

l_.str.42:                              ; @.str.42
	.asciz	"v16.info                      : "

l_.str.43:                              ; @.str.43
	.asciz	"v16.value                     : "

l_.str.44:                              ; @.str.44
	.asciz	"v16.insert(v16.begin(), v15.begin(), v15.end())"

	.section	__TEXT,__const
	.p2align	2                               ; @constinit.45
l_constinit.45:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str.46:                              ; @.str.46
	.asciz	"v17.erase(v17.begin())"

l_.str.47:                              ; @.str.47
	.asciz	"v17.info                      : "

l_.str.48:                              ; @.str.48
	.asciz	"v17.value                     : "

l_.str.49:                              ; @.str.49
	.asciz	"v17.erase(v17.begin(), v17.begin() + 2)"

l_.str.50:                              ; @.str.50
	.asciz	"v17.resize(20)"

l_.str.51:                              ; @.str.51
	.asciz	"v17.resize(1)"

l_.str.52:                              ; @.str.52
	.asciz	"v17.assign({1, 2, 3, 4, 5})"

	.section	__TEXT,__const
	.p2align	2                               ; @constinit.53
l_constinit.53:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str.54:                              ; @.str.54
	.asciz	"v17.reverse()"

	.section	__TEXT,__const
	.p2align	2                               ; @constinit.55
l_constinit.55:
	.long	1                               ; 0x1
	.long	2                               ; 0x2
	.long	3                               ; 0x3
	.long	4                               ; 0x4
	.long	5                               ; 0x5

	.section	__TEXT,__cstring,cstring_literals
l_.str.56:                              ; @.str.56
	.asciz	"v18.info                      : "

l_.str.57:                              ; @.str.57
	.asciz	"v18.value                     : "

l_.str.58:                              ; @.str.58
	.asciz	"v17.swap(v18)"

l___func__._ZN5mystl6vectorIiE6_frontEv: ; @__func__._ZN5mystl6vectorIiE6_frontEv
	.asciz	"_front"

l_.str.59:                              ; @.str.59
	.asciz	"./m_vector.hpp"

l_.str.60:                              ; @.str.60
	.asciz	"begin_ != end_"

l___func__._ZN5mystl6vectorIiE5_backEv: ; @__func__._ZN5mystl6vectorIiE5_backEv
	.asciz	"_back"

l_.str.61:                              ; @.str.61
	.asciz	"------------------------------"

l_.str.62:                              ; @.str.62
	.asciz	"----------- test"

l_.str.63:                              ; @.str.63
	.asciz	" ------------"

l_.str.64:                              ; @.str.64
	.asciz	"info: "

l_.str.65:                              ; @.str.65
	.asciz	"value: "

l_.str.66:                              ; @.str.66
	.asciz	"reserve(_new_size) error! out of range!"

l___func__._ZN5mystl6vectorIiE3_atEm:   ; @__func__._ZN5mystl6vectorIiE3_atEm
	.asciz	"_at"

l_.str.67:                              ; @.str.67
	.asciz	"_index < static_cast<size_type>(end_ - begin_) && _index >= 0"

l___func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_: ; @__func__._ZN5mystl6vectorIiE8_emplaceIJRiEEEPiPKiDpOT_
	.asciz	"_emplace"

l_.str.68:                              ; @.str.68
	.asciz	"_pos >= begin_ && _pos <= end_"

l_.str.69:                              ; @.str.69
	.asciz	"capacity() < max_size() / 2"

l___func__._ZN5mystl6vectorIiE9_pop_backEv: ; @__func__._ZN5mystl6vectorIiE9_pop_backEv
	.asciz	"_pop_back"

l_.str.70:                              ; @.str.70
	.asciz	"!empty()"

l___func__._ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_: ; @__func__._ZN5mystl6vectorIiE7_insertIPiEEvPKiT_S6_
	.asciz	"_insert"

l_.str.71:                              ; @.str.71
	.asciz	"size() < max_size() - n"

l___func__._ZN5mystl6vectorIiE6_eraseEPKi: ; @__func__._ZN5mystl6vectorIiE6_eraseEPKi
	.asciz	"_erase"

l_.str.72:                              ; @.str.72
	.asciz	"_pos >= begin_ && _pos < end_"

l_.str.73:                              ; @.str.73
	.asciz	"_first >= begin_ && _last <= end_ && _first <= _last"

l_.str.74:                              ; @.str.74
	.asciz	"size() < max_size() - _n"

.subsections_via_symbols
