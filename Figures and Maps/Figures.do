
*Figure 1
graph hbar total_inkind total_cash total_wage total_taxc  total_sectorial total_creditin diff  if d==22432 & diff<1 & diff>-1, over (continent) stack percent graphregion(fcolor(white)) legend(order(1 "In-kind transfers" 2 "Cash transfers" 3 "Wage support" 4 "Tax cuts" 5 "Sectorial support" 6 "Credit schemes" 7 "Unknown")) 

*Figure 2*

*Computing the difference between fiscal spending and the breakdown of our measures
egen r1=rowtotal(total_inkind total_cash total_wage total_taxc  total_sectorial total_creditin )
gen diff=total_fiscal-r1

*Plotting Figure 2
graph hbar total_fiscal total_taxd total_offbudget  if d==22432 , over (continent) stack graphregion(fcolor(white)) legend(order(1 "Fiscal transfers" 2 "Tax deferrals" 3 "Off-Budget")) 