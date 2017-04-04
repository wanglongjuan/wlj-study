#温度转换使用类, 继承

class ScaleAndOffsetConverter:
    def __init__(self, unit_form, unit_to, factor, offset):
        self.unit_form = unit_form
        self.unit_to = unit_to
        self.factor = factor
        self.offset = offset
    def description(self):
        return 'Convert' + self.unit_form + 'to' + self.unit_to

    def convert(self, value):
        return value * self.factor + self.offset


c2 = ScaleAndOffsetConverter('C', 'F',1.8, 32)
print(c2.description())
print('converting 20C')
print(str(c2.convert(20)) + c2.unit_to)

