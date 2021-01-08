*Import GDP. csv (additional dataset)
import delimited "${dir_main}\data\raw\GDP-Worldbank.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear

*Generate numeric id for each country in the region for future merging purposes
egen countryid = group(countryname)

*Drop empty rows
drop if countryid==.

*Change strings to number values
gen gdp_per_capita= real( gdppercapitapppcurrentinternatio)

*Drop no longer needed  variable
drop gdppercapitapppcurrentinternatio time timecode

*Save derived dataset
save "${dir_main}\data\derived\data_gdp.dta", replace
