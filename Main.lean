import CS2

def main : IO Unit :=
  IO.println s!"Hello, {hello}!"

-- 3.3 First Experiments

/- página 35
Calcular quantos dias tem um ano bissexto
-/
#eval 366 * 24 * 60 * 60

/- página 36
Exercise 3.1
Try out a few calculations using * for multiplication, + for addition, - for
subtraction, ^ for exponentiation, / for division. By playing with the system,
find out what the precedence order is among these operators

Sugestão: Fazer demontrações de algumas das propriedades de cada operação
-/
#eval (2+3)^4

/-
Exercise 3.2
How much is 2^3^4? Does the interpreter read this as (2^3)^4 or as
2^(3^4)?

Answer: 2^3^4 is interpreted as 2^(3^4)
-/
#eval 2^3^4
#eval (2^3)^4
#eval 2^(3^4)

-- Usando expressão lambda
#eval (λ x => x * x) 4

-- definindo função
def square : Int → Int
  | x => x * x
#eval square (-3)

#eval square (square 2)

#eval square (square (square 2))

/- página 37
[’H’,’e’,’l’,’l’,’o’,’ ’,’W’,’o’,’r’,’l’,’d’,’!’]

’H’:’e’:’l’:’l’:’o’:’ ’:’w’:’o’:’r’:’l’:’d’:’!’:[]
Exercise 3.3
The colon : in the last example is an operator. Can you see what its type is?

1.
-/
