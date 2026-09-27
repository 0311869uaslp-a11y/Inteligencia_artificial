% Jose Luis Romero Vazquez
% Roberto Gaona Juarez

madre(alma,pepa).
madre(alma,bruno).
madre(alma,julieta).
madre(pepa,camilo).
madre(pepa,antonio).
madre(pepa,dolores).
madre(julieta,isabela).
madre(julieta,luisa).
madre(julieta,maribel).

%Inciso-2
madre(marge,lisa).
madre(marge,bart).
madre(marge,maggie).
madre(mona,homero).

hombre(pedro).
hombre(felix).
hombre(bruno).
hombre(agustin).
hombre(antonio).
hombre(camilo).

%Inciso-2
hombre(homero).
hombre(bart).
hombre(abraham).

mujer(alma).
mujer(pepa).
mujer(julieta).
mujer(dolores).
mujer(isabela).
mujer(luisa).
mujer(maribel).

%Inciso-2
mujer(marge).
mujer(lisa).
mujer(maggie).

esposa(alma,pedro).
esposa(pepa,felix).

%Inciso-2
esposa(marge,homero).
esposa(mona,abraham).

esposa(julieta,agustin).
esposo(felix,pepa).
esposo(pedro,alma).
esposo(agustin,julieta).

%Inciso-2
esposo(homero,marge).
esposo(abraham,mona).


padre(X,Y):-hombre(X),esposa(Z,X),madre(Z,Y).
hijo(H,P):-(padre(P,H); madre(P,H)), hombre(H).
hija(H,P):-(padre(P,H); madre(P,H)), mujer(H).
abuela(A,N):-madre(A,H), (madre(H,N); padre(H,N)).
abuelo(A,N):-padre(A,H), (madre(H,N); padre(H,N)).
hermano(A,B):-padre(P,A),padre(P,B), A\=B, hombre(A).
hermana(A,B):-padre(P,A),padre(P,B), A\=B, mujer(A).
progenitor(P,H):-padre(P,H);madre(P,H).
brother(A,B):-hermano(A,B);hermana(A,B).
primo(A,B):-progenitor(C,A), brother(C,D), progenitor(D,B), hombre(A).
prima(A,B):-progenitor(C,A), brother(C,D), progenitor(D,B), mujer(A).

pareja(X,Y):-esposo(X,Y),esposa(Y,X).
hermanos(X,Y):-progenitor(Z,X),progenitor(Z,Y), not(X==Y).
cuñados(X,Y):-((pareja(X,Z),hermanos(Z,Y));(pareja(Y,Z),hermanos(Z,X))).

cuñado(X,Y):-cuñados(X,Y),hombre(X).
cuñada(X,Y):-cuñados(X,Y),mujer(X).

tio(X,Y):-progenitor(Z,Y),(hermano(X,Z);cuñado(X,Z)).
tia(X,Y):-progenitor(Z,Y),(hermana(X,Z);cuñada(X,Z)).

nieto(X,Y):-progenitor(Y,Z),progenitor(Z,X),hombre(X).
nieta(X,Y):-progenitor(Y,Z),progenitor(Z,X),mujer(X).

suegro(X,Y):-padre(X,Z),pareja(Y,Z).
suegra(X,Y):-madre(X,Z),pareja(Y,Z).

yerno(X,Y):-suegro(Y,X);suegra(Y,X),hombre(X).
nuera(X,Y):-suegro(Y,X),mujer(X);suegra(Y,X),mujer(X).



