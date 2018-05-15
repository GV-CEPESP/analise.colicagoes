# CEPESPData - Análise da Coligações Partidárias Estaduais
# Autor: Rafael de Castro Coelho Silva

# 1. Carregando Pacotes ---------------------------------------------------
rm(list = ls())

# Instala os pacotes necessários.
# 
# if(!require(cepespR)) devtools::install_github("Cepesp-Fgv/cepesp-r")
# if(!require(tidyverse)) install.packages("tidyverse")

library(tidyverse)
library(cepespR)

# 2. Carregando o Banco ---------------------------------------------------

args <- list(year = c(2014, 2014), 
             position = c(6,7))

coligacoes <- pmap(args, get_coalitions) %>% 
  bind_rows()

candidatos <- pmap(args, get_candidates) %>% 
  bind_rows()

# 3. Consistências --------------------------------------------------------


