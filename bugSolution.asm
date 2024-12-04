mov ecx, [someVariable]

; Check for overflow before calculation
cmp ecx, 0xFFFFFFFF / 4 ; Check if ecx * 4 might overflow
jl overflow_check_passed
jmp overflow_check_failed

overflow_check_passed:
mov eax, [ebx+ecx*4]
jmp end

overflow_check_failed:
; Handle overflow error (e.g., set error flag, exit)
mov eax, -1 ; indicate an error

end: