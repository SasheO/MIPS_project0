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

li $v0, 11 # print char
li $a0, 10 # null character is ascii 10
syscall # print new line

li $v0, 10 # end program
syscall