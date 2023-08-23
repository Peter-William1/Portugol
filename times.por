programa {
  inclua biblioteca Util --> u
  funcao inicio() {
   cadeia ganhador
   logico time, timee, empate
   inteiro gols[2], palpite[2], v=0, dinheiro=100, d[4], vtl
   escreva("♠-------Bem vindo ao apostasbet!--------♠\n")
   escreva("\nDigite o dinheiro que quer apostar R$:")
   leia(vtl)
   
   escreva("Dinheiro apostado no time : ")
   leia(d[0])
   limpa()
   vtl = vtl - d[0]
   escreva("seu saldo e R$: ", vtl)
   
   escreva("\nDinheiro apostado nos gols: ")
   leia(d[2])
   vtl = vtl - d[2]
   limpa()
   escreva("seu saldo e R$: ", vtl)
   escreva("\nDinheiro apostado no placar: ")
   leia(d[1])
   vtl = vtl - d[1]
   limpa()
   escreva("seu saldo e R$: ", vtl)
   escreva("\nDinheiro apostado no empate: ")
   leia(d[3])
   vtl = vtl - d[3]
   limpa()
   escreva("seu saldo e R$: ", vtl)
   
   escreva("\nDigite seu palpite de time: ")
    leia(ganhador)
    se (ganhador=="A" ou ganhador=="B")
    {
      escreva("voce apostou no time", ganhador)
    }
   escreva("digite seu palpite de placar\n")
   escreva("equipe A: ")
   para (inteiro c=0; c!=2; c++)
   {
   leia (palpite[c])
   escreva("equipe B: ")
   }
   limpa()
   para (inteiro c=0; c!=2; c++)
   {
    gols[c] = 1
   }
    gols[1]=0
    escreva("a equipe um fez :", gols[0], " gols", "\na equipe dois fez :", gols[1], " gols")
    para (inteiro c=0; c!=2; c++)
    {
      se(gols[c]== palpite[c])
      {
        v++
      }
    }
    se (gols[1]== gols[0])
    {
      
      
      
        escreva("\nEMPate")
        d[3] = d[3] * 7
      
    }
    
    
    se (gols[0]> gols[1] )
    {
      escreva("\na equipe 1 ganhou!")
      time=verdadeiro
      se ganhador=="A"
      {
        escreva("voce acertou o time")
        d[0] = d[0] * 5
      }
      
    }
    se (gols[1]> gols[0] )
    {
      escreva("\na equipe 2 gamhou!")
      
      se (ganhador=="B" e empate==falso)
      {
        escreva("voce acertou o time")
      }
      
    }
    se (v>1)
    {
      escreva("\nvoce acertou o placar")
      d[1] = d[1] * 10
    }
    se (palpite[0]==gols[0] e ganhador=="A")
    {
      escreva("\nvoce acertou os gols do time a")
      d[2] = d[2] * 3
    }
    se (palpite[1]==gols[1] e ganhador=="B")
    {
      escreva("\nvoce acertou os gols do time b")
      d[2] = d[2] * 3
    } 
    escreva("\n", d)

    
  }
}
