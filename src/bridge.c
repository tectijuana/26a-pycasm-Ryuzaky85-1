// Autor: Daniel
// Descripcion: Puente C para conectar Python con Assembly
extern long long sumar_asm(long long a, long long b);
extern long long restar_asm(long long a, long long b);
extern long long maximo_asm(long long a, long long b);

long long sumar(long long a, long long b) { return sumar_asm(a, b); }
long long restar(long long a, long long b) { return restar_asm(a, b); }
long long obtener_maximo(long long a, long long b) { return maximo_asm(a, b); }
