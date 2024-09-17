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
-/

def hword (s : String) : Bool :=
 let rec aux : List Char → Bool
  | [] => false
  | x :: xs => (x == 'h') ∨ aux xs
  aux s.data

#eval hword "hello"
#eval hword "trip"
#eval hword "shirimptoast"

/- página 38
1. Dúvida
Infix operation and Prefix operation

Exercise 3.4
Which property does (>3) denote? And which property does (3>) denote?
-/

-- 3.4 Type Polymorphism

-- Implicit Arguments (Functional Programming in Lean 1.6 Polymorphism )
def Identity {α : Type} (x : α) : α := x
#eval Identity 4
#check (Identity)
#eval Identity (hword "haskel")
#eval Identity (hword "lean")
#eval (Identity hword) "haskel"
#eval (Identity hword) "lean"

#eval [2,3] ++ [4,7]
#eval "Hello" ++ " World!"

-- 3.5 Recursion

def gen (n : Nat) : String :=
 match n with
 | Nat.zero => "Sentences can go on"
 | Nat.succ n => gen n ++ " and on"
/-
def gen : Nat → String
  | 0 => "Sentences can go on"
  | .succ n => gen n ++ ", and on"
-/
def genS (n : Nat) : String :=
 gen n ++ "."

 #eval genS 3

def story (k : Nat) : String :=
  match k with
  | Nat.zero => "Let’s cook and eat that final missionary, and off to bed."
  | Nat.succ k => "The night was pitch dark, mysterious and deep. "
      ++ "Ten cannibals were seated around a boiling cauldron. "
      ++ "Their leader got up and addressed them like this: ’"
      ++ story (k) ++ "’"

#eval story 2

/- página 41
Exercise 3.5
What happens if you ask for putStrLn (story (-1))? Why?
Answer:

Exercise 3.6
Why is the definition of ‘GNU’ as ‘GNU’s Not Unix’ not a recursive definition?
-/

-- 3.6 List Types and List Comprehension
