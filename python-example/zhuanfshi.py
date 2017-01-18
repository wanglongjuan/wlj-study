def replacing_decorator_with_args(arg):
    print('defining the decorator')
    def _decorator(function):
        print('doing decoration, %r' % arg)
        def _wrapper(*args, **kwargs):
            print('inside wraaper, %r %r' % (args, kwargs))
        return _wrapper
    return _decorator


@replacing_decorator_with_args('abc')
def function(*args, **kwargs):
    print('inside function, %r %r' % (args, kwargs))
    return 14

function(11, 12)



class decorator_class(object):
    def __init__(self, arg):
# this method is called in the decoration expression
        print('in decoration init, %s' % arg)
        self.arg = arg
    def __call__(self, function):
# this meathod is called to do the job
        print('in decoration call, %s' % self.arg)
        return function





