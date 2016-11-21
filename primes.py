"""
script para comprobar si el numero es primo o no
"""


class PrimeClass(object):

    def _init_(self,num_int):
        self.num_int=num_int
       
        
    
    """
    se instancia el objeto que en este caso es la variable num_int
    """
    def is_prime(self, num_int):
        divisor = 2
        prim = True

        while((prim) and (divisor != num_int)):
            if (num_int % divisor == 0):
                return False
        return True
    """
    se declara la variable divisor la cual tomara el valor entero de 2,
    posteriormente se declara otra variable llamada prim dando referencia
    a que si el numero dado es primo,despues se declara una sentencia para
    comprobar que el numero sea primo, sino cumple nos devolvera un False.

    """
    

       
