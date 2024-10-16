* Name: Isabela Ferreira Scarabelli
* Subject: Compilers
* Computer Engineering 2024

README file for Programming Assignment 1
========================================

Your directory should now contain the following files:

 Makefile -> [course dir]/assignments/PA1/Makefile
 README
 atoi.cl -> [course dir]/assignments/PA1/atoi.cl
 stack.cl
 stack.test -> [course dir]/assignments/PA1/stack.test

	The Makefile contains targets for compiling and running your
	program, as well as handing it in.

	The README contains this info. Part of the assignment is to
	answer the questions at the end of this README file.
	Just edit this file.

	atoi.cl is an implementation in Cool of the string to integer
	conversion function known from the C language.

	stack.cl is the skeleton file which you should fill in with
	your program.

	stack.test is a short test input to the stack machine. It is
	run through your program when you hand it in, and the output
	is also	handed in.


        The symlinked files (see "man ln") are that way to emphasize
        that they are read-only -- when we test your program, we already
        have our own versions.


Instructions
------------

	To compile and run your program, type:

	% gmake test

        Try it now -- it should work, and print "Nothing implemented"
        (among a few other things).


        To simply compile your program, type

        % gmake compile


	Instructions for turning in the assignment will be posted on the
	course web page.

	GOOD LUCK!


Questions on PA1
----------------

1. Describe your implementation of the stack machine in a single short
   paragraph.

A classe Stack possui dois atributos:
- Top: que indica o topo da pilha 
- Next: guarda o restante da pilha 

A primeira posição da pilha contém a string "-1" que serve como um nulo, 
para identificar o fim da pilha. A cada novo elemento adicionado, a função
init é chamada, a qual coloca aquele elemento como o topo e a pilha anterior
passa a ser referenciada como next. 

Enquanto lê números, o caracter "s" e a string "+", o código os adiciona na pilha. 
Ao ler a letra D, ele imprime a pilha. Ao ler a letra E, ele pega 
o topo da pilha e salva em "ch". A partir daí ele checa qual o valor 
que estava no início da pilha e executa os procedimentos de acordo com 
o que foi especificado. 

Os casos que ele aborta são:
- Digitar algum número negativo ou maior que 9
- Tentar realizar a soma quando existe apenas um ou nenhum elemento na pilha

- - - - - - - - -
2. List 3 things that you like about the Cool programming language.
- Ser orientada por objeto.

- Sintaxe muito semelhante a linguagens populares.

- A presença da tipagem estática com verificação em tempo de compilação.

- - - - - - - - -
3. List 3 things you DON'T like about Cool.
- O compilador é muito fraco na hora de apontar onde estão os erros, 
aponta apenas para a região que contém o erro, o que atrasou muito o 
processo de correção de bugs. 

- Falta de muitas implementações como "and", "nulo" e "ponteiros".

- Estrutura do If muito confusa, perdi muito tempo tentando descobrir
onde colocar {}, ";", "fi".

