# Atividade de Matemática
#
#  Recebe uma tabela das equipes campeãs de Formula 1 e plota em um gráfico, onde o eixo X
#  são as equipes e o eixo Y, a linha do tempo.
#

library(rvest)
library(dplyr)
library(ggplot2)

site <- "https://pt.wikipedia.org/wiki/Lista_de_campe%C3%B5es_da_F%C3%B3rmula_1"

atividademat <- read_html(site) %>%
  html_table()

atividademat <- atividademat[2]

atividademat[[1]]


ggplot(atividademat[[1]]) +
  aes(x = Ano, y = Equipe) +
  geom_point()
