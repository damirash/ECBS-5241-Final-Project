*Transform the variables into logs for future regression and interpetation purposes
local logvarlist infant_mortality health_exp school_enroll unempl fertility population gdp_per_capita
 foreach var in `logvarlist' {
   replace `var' = ln(`var')
   }

*Label unlabeled variables
label var infant_mortality "Log Mortality rate, neonatal (per 1,000 live births)"
label var health_exp "Log Current health expenditure per capita (current US$)"
label var school_enroll "Log School enrollment, primary (% gross)"
label var fertility "Log Fertility rate, total (births per woman) "
label var maternal_mortality "Maternal mortality ratio (per 100,000 live births)"
label var neonatal_mortality "Log Mortality rate, neonatal (per 1,000 live births)"
label var unempl "Log Unemployment, total (% of total labor force"
label var gdp_per_capita "Log GDP per capita (current US$)"

*Save the fixed dataset (ready for analysis)
save "${dir_main}\data\derived\MAIN_DATA.dta", replace
