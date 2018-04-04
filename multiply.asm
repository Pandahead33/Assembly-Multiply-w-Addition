multiply:
  pushq %rbp
  movq %rsp, %rbp
  movl %edi, -20(%rbp)
  movl %esi, -24(%rbp)
  movl -20(%rbp), %eax
  movl %eax, -8(%rbp)
  movl $1, -4(%rbp)
  jmp .L2
.L3:
  movl -8(%rbp), %eax
  addl %eax, -20(%rbp)
  addl $1, -4(%rbp)
.L2:
  movl -4(%rbp), %eax
  cmpl %eax, -24(%rbp)
  ja .L3
  movl -20(%rbp), %eax
  popq %rbp
  ret
main:
  pushq %rbp
  movq %rsp, %rbp
  subq $32, %rsp
  movl $8, -8(%rbp)
  movl $6, -4(%rbp)
  movl $201, -16(%rbp)
  movl $247, -12(%rbp)
  movl $6, %esi
  movl $8, %edi
  call multiply
  movl %eax, -24(%rbp)
  movl $257, %esi
  movl $201, %edi
  call multiply
  movl %eax, -20(%rbp)
  movl $0, %eax
  leave
  ret
