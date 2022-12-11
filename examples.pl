%Primeiro elemento da lista é o Head. O resto da lista é a Tail.%

% Um elemento pertence a uma lista?
% Exemplo de consulta: member(1,[1,2,3]).
% Caso base da recursão. Se o elemento for o primeiro da lista, ele pertence a ela.%
% Caso recursivo. Se o elemento não for o primeiro da lista, ele pertence a ela se pertencer a cauda da lista.%
member(X,[X|_])  
member(X,[_|T]) :- member(X,T). 

% Verificar se é o último da lista
% Exemplo de consulta: last(3,[1,2,3]).
% Caso base da recursão. Se a lista só tem 01 elemento, ele é o último da lista.%
% Caso recursivo. Chama recursivamente eliminando a cabeca da lista, até sobrar um único elemento e cair no caso base%
last(X,[X]).
last(X,[_|T]) :- last(X,T).


% Verificar se lista tem dois elementos consecutivos
% Exemplo de consulta: consecutive(1,2,[1,2,3]).
% Caso base da recursão. Se a lista só tem 01 elemento, ela não tem dois elementos consecutivos.%
% Caso recursivo. Se a lista tem dois elementos consecutivos, retorna true. Se não, chama recursivamente eliminando a cabeca da lista, até sobrar um único elemento e cair no caso base%
consecutive(X,Y,[X,Y|_]).
consecutive(X,Y,[_|T]) :- consecutive(X,Y,T).

% Verificar tamanho de uma lista
% Exemplo de consulta: length([1,2,3],X).
% Caso base da recursão. Se a lista só tem 01 elemento, seu tamanho é 1.%
% Caso recursivo. Se a lista tem mais de um elemento, seu tamanho é 1 + tamanho da cauda da lista.%
length([],0).
length([_|T],Size) :- length(T,N1), Size is N1 + 1.

