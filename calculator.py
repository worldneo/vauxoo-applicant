"""
scrip para calcular la suma de una lista de numeros
"""


class CalculatorClass:
    
    def _init_(self,lista):
        self.lista=lista
    """
    se define la variable lista
    """

    def sum(self,lista):
        sum = 0
        for i in range(0,len(lista)):
            sum = sum + lista[i]
        return sum
    """
       
       se crea el metodo agregando una sentencia
       en el cual se retornara el valor obtenido
       de la suma de los  numeros 
       """
        
