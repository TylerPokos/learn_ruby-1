#write your code here

def add(lval, rval)
    lval + rval
end

def subtract(lval, rval)
    lval - rval
end

def sum(array)
    array.reduce(0, :+)
end

def multiply(*args)
    array = args.to_a
    return array.inject(:*)
end

def power(number, exponent)
    number**exponent
end

def factorial(number)
    (1..number).inject(:*) || 1
end