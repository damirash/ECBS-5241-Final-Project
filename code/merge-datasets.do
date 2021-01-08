*Use main dataset as master dataset
use "${dir_main}\data\derived\data_without_gdp.dta", clear

*Merge main dataset with gdp dataset and drop non-merging observations
merge m:1 countryid using "${dir_main}\data\derived\data_gdp.dta", keep (master match) 

*Save the obtained dataset as new main dataset
save "${dir_main}\data\derived\MAIN_DATA.dta", replace
