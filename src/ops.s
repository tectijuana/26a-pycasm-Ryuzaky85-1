// Autor: Daniel
// Descripcion: Operaciones matematicas en ARM64
.global sumar_asm
.global restar_asm
.global maximo_asm

sumar_asm:
    add x0, x0, x1
    ret

restar_asm:
    sub x0, x0, x1
    ret

maximo_asm:
    cmp x0, x1
    csel x0, x0, x1, ge
    ret
