#定义类

class ScaleConverter:
    def __init__(self, units_form, units_to, factor):
        self.units_form = units_form
        self.units_to = units_to
        self.factor = factor
    
    def description(self):
        return 'convert ' + self.units_form + ' to ' + self.units_to

    def convert(self, value):
        return value*self.factor


c1 = ScaleConverter('inches', 'mm', 25)
print(c1.description())
print('converting 2 inches')
print(str(c1.convert(2)) + c1.units_to)
