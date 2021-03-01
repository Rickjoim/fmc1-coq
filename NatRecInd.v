(**EXERCÍCIO x4.11.
Defina usando equações recursivas a seqüência Fibonacci, como uma funcção de Nat para
Nat*)

Fixpoint fib (n : nat) : nat :=
  match n with
  | O => O
  | S O => S O
  | S (S n'' as n') => match n' with
                        | 0 => 1
                        | S n'' => fib n' + fib n''
                       end
  end.
Compute fib 10.

(**EXERCÍCIO x4.12*)

Inductive nat : Type :=
  | O
  | S (n : nat).

Fixpoint plus (x y : nat) : nat :=
match x with
  | O => y
  | S x' => S(plus x' y)
  end.

lemma plus_0(x : nat) plus x 0= x. 
Qed. 
  