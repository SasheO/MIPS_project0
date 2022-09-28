.data
id: .asciiz "@03004056"

.text
main:
li $v0, 4 # print string
la $s0, id # address of string is in $s0 now
la $a0, 6($s0) # so that the part of string s0 from index 6 gets printed
syscall
lb $t0, 6($s0) # temporarily store the value of index 6 in $t0
sb $zero, 6($s0) # temporarily set index 6 to null character (00 in ascii, hence the $zero register)
la $a0, 0($s0) # so that the string gets printed from beginning to null character
syscall
sb $t0, 6($s0) # revert the character in index 6 to previous value

li $v0, 11 # print char
li $a0, 10 # null character is ascii 10
syscall # print new line


li $v0, 4 # print string
la $a0, 7($s0) # so that the part of string s0 from index 7 gets printed
syscall
lb $t0, 7($s0) # temporarily store the value of index 7 in $t0
sb $zero, 7($s0) # temporarily set index 7 to null char
la $a0, 0($s0) # so that the string gets printed from beginning to null char
syscall
sb $t0, 7($s0) # revert the character in index 7 to previous value

li $v0, 11 # print char
li $a0, 10
syscall # print new line


li $v0, 4 # print string
la $a0, 8($s0) # so that the part of string s0 from index 8 gets printed
syscall
lb $t0, 8($s0) # temporarily store the value of index 8 in $t0
sb $zero, 8($s0) # temporarily set index 8 to null char
la $a0, 0($s0) # so that the string gets printed from beginning to null char
syscall
sb $t0, 8($s0) # revert the character in index 8 to previous value

li $v0, 11 # print char
li $a0, 10
syscall # print new line


li $v0, 4 # print string
la $a0, 0($s0) # print string from beginning
syscall

li $v0, 11 # print char
li $a0, 10
syscall # print new line


li $v0, 4 # print string
la $a0, 1($s0) # so that the part of string s0 from index 1 gets printed
syscall
lb $t0, 1($s0) # temporarily store the value of index 1 in $t0
sb $zero, 1($s0) # temporarily set index 1 to null char
la $a0, 0($s0) # so that the string gets printed from beginning to null char
syscall
sb $t0, 1($s0) # revert the character in index 1 to previous value

li $v0, 11 # print char
li $a0, 10
syscall # print new line


li $v0, 4 # print string
la $a0, 2($s0) # so that the part of string s0 from index 2 gets printed
syscall

li $v0, 10 # end program
syscall