use map.dta

*Plot Figures 3

  foreach v in  total_wage total_cash total_inkind total_taxc total_creditin total_sector {
  	local vtext : variable label `v' 
	if `"`vtext'"' == "" local vtext "`v'" 
 spmap `v' using "worldcoor.dta" if ADMIN!="Antarctica",    id(id) fcolor(Reds) ndfcolor(white)  clnumber(4)   legend(symy(*2) symx(*2) size(*1)) legorder(lohi) subtitle(`"`vtext'"')
 graph save "Graph" "Graph_`v'.gph", replace
}
 
 *Plot Figures 4
   foreach v in total_fiscal total_taxd total_offbudget{
  	local vtext : variable label `v' 
	if `"`vtext'"' == "" local vtext "`v'" 
 spmap `v' using "worldcoor.dta" if ADMIN!="Antarctica",    id(id) fcolor(Blues) ndfcolor(white)  clnumber(4)   legend(symy(*2) symx(*2) size(*1)) legorder(lohi) title(`"`vtext'"')
 graph save "Graph" "Graph_`v'.gph", replace
}