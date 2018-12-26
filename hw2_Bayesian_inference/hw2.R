---
  title: "HW-2"
author: "Anastasia Orlenko"
date: '26 декабря 2018 г '
output: html_document
---
  
###2.1
  
'''
f <- read.csv('https://raw.githubusercontent.com/agricolamz/2019_data_analysis_for_linguists/master/data/students/AnastasiaOrlenko/hw2_Bayesian_inference/hw2_phoible.csv')

f$newcolumn <- f$consonants / f$phonemes
f[which.max(f$newcolumn), "language"]
'''

###2.1

'''
alpha <- 9.300246
beta <- 4.4545
f$lang <- (f$consonants + alpha)/(f$phonemes + beta + alpha)
f$diff = abs(f$newcolumn - f$lang)
f[order(f$diff, decreasing = T)[1:6],][1]
'''
