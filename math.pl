%Somando dois números e guardando em uma variável
% Exemplo de consulta: sum(10,20, Y). Ou A=10, B=20, sum(A,B,Y).
sum(A, B, S) :- S is A + B.

%Verificar se um número é maior que 100
% Exemplo de consulta: isBig(100). Ou X=100, isBig(X).
isBig(X) :- X > 100.

%Verificar se um número é par
% Exemplo de consulta: isEven(100). Ou X=100, isEven(X).
isEven(X) :- 0 is X mod 2.

%Calcular o fatorial de um número
% Exemplo de consulta: factorial(5, Y).
% Caso base da recursão: Fatorial de 0 é 1.
% Caso recursivo. Chama recursivamente a função passando o número anterior e o fatorial do número anterior.
factorial(0, 1).
factorial(N, F) :- N > 0,
                   N1 is N - 1
                   factorial(N1, F1),
                   F is N * F1.

%Todo: Melhorar explicao disso ;/
%Verificar se um número é primo
% Exemplo de consulta: isPrime(5). Ou X=5, isPrime(X).
isPrime(2).
isPrime(3).
isPrime(X) :- X > 3,
              X mod 2 =\= 0,
              \+ hasFactor(X, 3).

%Verificar se um número tem algum fator entre A e B
% Exemplo de consulta: hasFactor(10, 3, 5). Ou X=10, A=3, B=5, hasFactor(X, A, B).
hasFactor(X, A, B) :- A =< B,
                      X mod A =:= 0.

