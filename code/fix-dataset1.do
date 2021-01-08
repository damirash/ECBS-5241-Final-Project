*Import Infant Mortality. csv (main dataset)
import delimited "${dir_main}\data\raw\Infant-Mortality.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear

*Generate numeric id for each country in the region for future merging purposes
egen countryid = group(countryname)

*Generate relevant variables and Change strings to number values
gen infant_mortality= real(mortalityrateinfantper1000livebi)
gen health_exp = real(currenthealthexpenditurepercapit)
gen school_enroll = real(schoolenrollmentprimarygrosssepr)
gen maternal_mortality= real(maternalmortalityrationationales)
gen unempl= real(unemploymenttotaloftotallaborfor)
gen fertility=real(fertilityratetotalbirthsperwoman)
gen neonatal_mortality= real(mortalityrateneonatalper1000live)
rename populationtotalsppoptotl population

*Drop extra and no longer needed  variables
drop  time timecode currenthealthexpenditurepercapit schoolenrollmentprimarygrosssepr fertilityratetotalbirthsperwoman maternalmortalityrationationales mortalityrateinfantper1000livebi unemploymenttotaloftotallaborfor mortalityrateneonatalper1000live gdppercapitacurrentusnygdppcapcd

*Drop observations with missing values
local varlist health_exp school_enroll neonatal_mortality unempl infant_mortality maternal_mortality fertility
foreach var in `varlist' {
  drop if missing(`var')
  } 
   
*Save derived dataset
save "${dir_main}\data\derived\data_without_gdp.dta", replace
