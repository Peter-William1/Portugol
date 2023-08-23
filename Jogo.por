programa {
  inclua biblioteca Util --> u
  funcao inicio() {
    cadeia n[5][5]
    cadeia mapa[5][5], and
    inteiro chance, chance2, pontos, cdj=25, ponto=0, u=0
    logico morte
    inteiro op=4, po=2, linhas=1
    para (inteiro i=0; i!=5; i++)
    {
      
      
    
      para (inteiro c=0; c!=5; c++)
      {
        
          chance = u.sorteia(1, 100)
        
        se (chance<=70)
        {
          mapa[c][i]="▦"
        }
        senao se (chance>90)
        {
          mapa[c][i]="⨉"
          n[c][i]="⨉"
        }
        senao se (chance>70 e chance<=90)
        {
          mapa[c][i]="<3"
          n[c][i]="<3"
        }
        
        
      }
    }
    chance = u.sorteia(0, 4)
    chance2 = u.sorteia(0, 4)
    
      mapa[chance][chance2]="⨅"
      n[chance][chance2]="⨅"
  
    mapa[4][2]="⨀"
    n[4][2]="⨀"

    enquanto (morte!=verdadeiro e cdj>=0)
    {
      limpa()
      mapa[op][po]="⨀"
      escreva("Voce tem ", cdj, " Jogadas!\n")
      para (inteiro i=0; i!=5; i++)
      {

        
        para (inteiro c=0; c!=5; c++)
        {

          escreva(mapa[i][c], " ")
        }
        escreva("\n")
        
      }
      escreva("digite W para ir para cima, S para baixo, A para esquerda e D para direita\n")
      
      leia(and)
      
      enquanto(and!="w" e and!="d" e and!="s" e and!="a")
      {
        escreva("caracter invalido\ndigite W para ir para cima, S para baixo, A para esquerda e D para direita\n")
        leia(and)
        
      }
        escolha (and)
        {
          caso "w"
          op= op - 1
          se(op<5 ou po<5 ou op>=0 ou po>=0)
          {
            mapa[op+1][po]= "▤"
          }
          pare
          caso "s" 
          op= op + 1
          se(op<5 ou po<5 ou op>=0 ou po>=0)
          {
            mapa[op-1][po]= "▤"
          }
          pare
          caso "a"
          po= po - 1
          se(op<5 ou po<5 ou op>=0 ou po>=0)
          {
            mapa[op][po+1]= "▤"
          }
          pare
          caso "d"
          po++
          se(op<5 ou po<5 ou op>=0 ou po>=0)
          {
            mapa[op][po-1]= "▤"
          } 
        }
      cdj--
      enquanto (op>=5 ou po>=5 ou op<0 ou po<0)
      {
        
        escreva("\nPosicao invalida!\n")
        escolha (and)
        {
        caso "w"
         op= op +1
         
         pare
        caso "s" 
         op= op - 1
         
         pare
        caso "a"
         po= po + 1
         
         pare
        caso "d"
         po--
        
        }
        ponto = ponto - 100
        
      } 
        
        u.aguarde(300)
        se (n[op][po]=="⨉")
        {
          limpa()
          morte=verdadeiro
          para (inteiro i=0; i!=5; i++)
          {

              
            para (inteiro c=0; c!=5; c++)
            {

              escreva(mapa[i][c], " ")
            }
            escreva("\n")
          }
          
          escreva("Voce Morreu")
        }
        se (n[op][po]=="<3")
        {
          ponto= ponto + 300
          n[op][po]="X"
        }
        se (n[op][po]=="⨅")
        {
          op= u.sorteia(0, 4)
          po= u.sorteia(0, 4)
          mapa[chance][chance2] 
        }
        senao se(n[op][po]=="X")
        {
          
          
        }
        senao 
        {

          ponto= ponto + 100
          n[op][po]="X"
        }
      } 
      escreva("\nVoce fez ", ponto," pontos!")
        
    }
    
    
  }
}
