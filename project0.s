.data
id: .asciiz "@03004056"

.text
main:
li $v0, 4 # print string
la $s0,id # address of string is in $s0 now
la $a0, 6($s0) # so that the part of string s0 from index 6 gets printed
syscall

li $v0, 10 # end program
syscall