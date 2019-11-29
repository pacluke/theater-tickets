# theater-tickets


### Considerações:


* Modelos considerados:
	- Dias da semana
		* Todos os dias da semana + feriado, que nesse caso não precisa de um dia especifico.
	- Tipos de cliente
		* Idoso
		* Criança
		* Estudante
		* Estudante confirmado (que apresentou a carteirinha)
	- Ingresso
		* Contém o dia da semana, o tipo de cliente, o preço e o preço com o desconto do dia


### Protocolo do Ingresso:

A ideia de criar um protocolo para o ingresso surgiu para atender as seguintes necessidades:
- Os ingressos são baseados no tipo do cliente, assim todo ingresso já sabe que vai ter que devolver um preço para cada dia da semana.
- Para que o ingresso não ficasse dependente dos dois modelos (cliente e dia da semana), todo tipo de cliente tem um ingresso específico. Hoje o ingresso ainda possui o tipo de cliente, mas isso poderia ser removido sem complicações.
- Dessa forma, o ingresso depende apenas dos dias da semana.
- Os ingressos são baseados num protocolo que contém variáveis para as informações do ingresso (preço, dia da semana, preço com desconto, cliente) e uma função que, baseada no dia e preço inserido pelo usuário, retorna o preço com desconto do ingresso, fazendo assim com que todos os ingressos cumpram o protocolo de devolver algum desconto (que pode ser de 0%).
- Do jeito que foi montado, caso algum dia especial seja adicionado, todos os ingressos em tempo de compilação vão reclamar que as funções de desconto não contemplam esse novo dia, forçando o programador a tratar esse caso.