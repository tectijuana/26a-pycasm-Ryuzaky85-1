import ctypes
import time

# Cargamos la libreria desde la carpeta build
lib = ctypes.CDLL('./build/libcalculos.so')

# Definimos tipos
lib.sumar.argtypes = [ctypes.c_longlong, ctypes.c_longlong]
lib.sumar.restype = ctypes.c_longlong

def test():
    a, b = 100, 50
    print(f"Suma ASM: {lib.sumar(a, b)}")
    print(f"Maximo ASM: {lib.obtener_maximo(a, b)}")

if __name__ == "__main__":
    test()
