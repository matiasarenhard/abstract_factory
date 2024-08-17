# Abstract Factory 

![image](https://github.com/user-attachments/assets/1e0e73ee-f1c2-46d0-a155-4e534015d73d)



O <b>Abstract Factory</b> é um padrão de projeto criacional que permite que você produza famílias de objetos relacionados sem ter que especificar suas classes concretas.

## Problema 
Imagine que você está criando um simulador de loja de mobí-lias. Seu código consiste de classes que representam:

1. Uma família de produtos relacionados, como: Cadeira + Sofá + MesaDeCentro .
2. Várias variantes dessa família. Por exemplo, produtos Cadeira + Sofá + MesaDeCentro estão disponíveis nessas variantes:
Moderno , Vitoriano , ArtDeco .

![image](https://github.com/user-attachments/assets/8f8f8ff4-ffa1-4250-8805-942c81113e51)


![image](https://github.com/user-attachments/assets/c9e754d6-f656-428f-b19d-cc14f92298ee)


### Solução 
A primeira coisa que o padrão Abstract Factory sugere é decla-
rar explicitamente interfaces para cada produto distinto da fa-
mília de produtos (ex: cadeira, sofá ou mesa de centro). Então
você pode fazer todas as variantes dos produtos seguirem
essas interfaces.


![image](https://github.com/user-attachments/assets/02e5cc65-5c05-4a4d-9ce9-bff3d07a50e5)


1. <b>Produtos Abstratos</b> declaram interfaces para um conjunto de
produtos distintos mas relacionados que fazem parte de uma
família de produtos.<br/>


2. <b>Produtos Concretos</b> são várias implementações de produtos
abstratos, agrupados por variantes. Cada produto abstrato (ca-
deira/sofá) deve ser implementado em todas as variantes
dadas (Vitoriano/Moderno). <br/>

3. A interface <b>Fábrica Abstrata</b> declara um conjunto de métodos
para criação de cada um dos produtos abstratos.<br/>

4. <b>Fábricas Concretas</b> implementam métodos de criação fábrica
abstratos. Cada fábrica concreta corresponde a uma variante
específica de produtos e cria apenas aquelas variantes de produto.<br/>

5. Embora fábricas concretas instanciam produtos concretos, as-
sinaturas dos seus métodos de criação devem retornar produ-
tos abstratos correspondentes. Dessa forma o código cliente
que usa uma fábrica não fica ligada a variante específica do
produto que ele pegou de uma fábrica. O <b>Cliente</b> pode traba-
lhar com qualquer variante de produto/fábrica concreto, desde
que ele se comunique com seus objetos via interfaces
abstratas.<br/>

### Aplicabilidade

Use o Abstract Factory quando seu código precisa trabalhar com diversas famílias de produtos relacionados, mas que você não quer depender de classes concretas daqueles produtos-eles podem ser desconhecidos de antemão ou você simplesmente quer permitir uma futura escalabilidade.

 O Abstract Factory fornece a você uma interface para a criação de objetos de cada classe das famílias de produtos. Desde que seu código crie objetos a partir dessa interface, você não precisará se preocupar em criar uma variante errada de um produto que não coincida com produtos já criados por sua aplicação.

### Prós
- Você pode ter certeza que os produtos que você obtém de uma fábrica são compatíveis entre si.
- Você evita um vínculo forte entre produtos concretos e o código cliente.
- Princípio aberto/fechado. Você pode introduzir novas variantes de produtos sem quebrar o código cliente existente.

### Contras
- O código pode tornar-se mais complicado do que deveria ser, uma vez que muitas novas interfaces e classes são introduzidas junto com o padrão.

### Implementação 
Esse projeto faz a implementação do abstract factory usando o exemplo de classes UI multiplataforma.

![image](https://github.com/user-attachments/assets/6f0d745e-d317-4dd2-aa02-b02c2b1caa11)

#### Como executar o projeto 

```
ruby application.rb
```

o output deve ser esse: 

![image](https://github.com/user-attachments/assets/04f990df-d1c9-495e-9a83-9e49774fe1c6)



### Relações com outros padrões

- Classes Abstract Factory são quase sempre baseadas em um conjunto de métodos fábrica, mas você também pode usar o Prototype para compor métodos dessas classes.
- As Fábricas Abstratas, Construtores, e Protótipos podem todos ser implementados como Singletons.




