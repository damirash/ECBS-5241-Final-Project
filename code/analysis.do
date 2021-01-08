*Use new main dataset for analysis purposes
use "${dir_main}\data\derived\MAIN_DATA.dta", clear

*Show scatter plot to show the visual relationship between Health expenditure and Infant mortality
scatter infant_mortality health_exp

*Save graph
graph save "${dir_main}\output\infantmortality_healthexp.gph", replace

*Install outreg2 Stata package
do "${dir_main}\code\install.do"

*Do OLS regression to find the effect of health expenditures on infant mortality
reg infant_mortality health_exp school_enroll maternal_mortality unempl fertility gdp_per_capita population, robust

*Save regression table
outreg2 using "${dir_main}\output\regression.txt", replace

*Drop highly statistically insignificant school enrollment and gdp per capita variables. Repeat regression and save results
drop gdp_per_capita school_enroll
reg infant_mortality health_exp  maternal_mortality unempl fertility population, robust
outreg2 using "${dir_main}\output\regression2.txt", replace
