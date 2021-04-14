//////Computing Direct Estimates for NHS Subgroup//////
//Target values are for all states except for AK and UT//

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)        
//Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)
 
/////////////////////Alabama(1)//////////////////////////
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 1
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-AL.dta", replace
//^variable

clear

/////////////////////Arizona(4)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-AZ.dta", replace
//^variable

clear

/////////////////////Arkansas(5)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 5
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-AR.dta", replace
//^variable

clear

/////////////////////California(6)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count

svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count

svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-CT.dta", replace
//^variable

clear

/////////////////////Delaware(10)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 10
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-DE.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count

svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-HI.dta", replace
//^variable

clear

/////////////////////Idaho(16)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 16
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-ID.dta", replace
//^variable

clear
 
/////////////////////Illinois(17)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-IL.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse






postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-KY.dta", replace
//^variable

clear

/////////////////////Louisiana(22)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 22
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-LA.dta", replace
//^variable

clear

/////////////////////Maine(23)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 23
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-ME.dta", replace
//^variable

clear

/////////////////////Maryland(24)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-MA.dta", replace
//^variable

clear

/////////////////////Michigan(26)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-MI.dta", replace
//^variable

clear
/////////////////////Minnesota(27)/////////////////////         

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-MN.dta", replace
//^variable

clear

/////////////////////Mississippi(28)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 28
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-MS.dta", replace
//^variable

clear 
 
/////////////////////Missouri(29)///////////////////// 
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 29
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-MO.dta", replace
//^variable

clear 
 
/////////////////////Montana(30)///////////////////// 
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 30
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-MT.dta", replace
//^variable

clear 
/////////////////////Nebraska(31)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 31
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-NE.dta", replace
//^variable

clear 
 
 
/////////////////////Nevada(32)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-NV.dta", replace
//^variable

clear 
 
///////////////////////New Hampshire(33)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 33
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-NH.dta", replace
//^variable

clear


/////////////////////New Jersey(34)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 34
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-NJ.dta", replace
//^variable

clear

/////////////////////New Mexico(35)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 35
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-NM.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-NC.dta", replace
//^variable

clear

/////////////////////North Dakota(38)/////////////////////  

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 38
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-ND.dta", replace
//^variable

clear


/////////////////////Ohio(39)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-OK.dta", replace
//^variable

clear

/////////////////////Oregon(41)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 41
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-OR.dta", replace
//^variable

clear

/////////////////////Pennsylvania(42)/////////////////////   
      
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-RI.dta", replace
//^variable

clear

/////////////////////South Carolina(45)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 45
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-SC.dta", replace
//^variable

clear

/////////////////////South Dakota(46)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 46
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-SD.dta", replace
//^variable

clear

/////////////////////Tennessee(47)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 47
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-TN.dta", replace
//^variable

clear
/////////////////////Texas(48)/////////////////////
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-TX.dta", replace
//^variable

clear
/////////////////////Vermont(50)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 50
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-VT.dta", replace
//^variable

clear

/////////////////////Virginia(51)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-WA.dta", replace
//^variable

clear

/////////////////////West Virginia(54)/////////////////////       

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 54
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-WV.dta", replace
//^variable

clear

/////////////////////Wisconsin(55)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-WI.dta", replace
//^variable

clear
/////////////////////Wyoming(56)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 56
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/NHS-WY.dta", replace
//^variable

clear

//////Computing Direct Estimates for HS Subgroup//////
//Target values are for all states except for AK and UT//

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)          
//Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)
 
/////////////////////Alabama(1)//////////////////////////
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 1
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-AL.dta", replace
//^variable

clear

/////////////////////Arizona(4)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-AZ.dta", replace
//^variable

clear

/////////////////////Arkansas(5)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 5
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-AR.dta", replace
//^variable

clear

/////////////////////California(6)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-CT.dta", replace
//^variable

clear

/////////////////////Delaware(10)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 10
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-DE.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-HI.dta", replace
//^variable

clear

/////////////////////Idaho(16)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 16
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-ID.dta", replace
//^variable

clear
 
/////////////////////Illinois(17)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-IL.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-KY.dta", replace
//^variable

clear

/////////////////////Louisiana(22)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 22
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-LA.dta", replace
//^variable

clear

/////////////////////Maine(23)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 23
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-ME.dta", replace
//^variable

clear

/////////////////////Maryland(24)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-MA.dta", replace
//^variable

clear

/////////////////////Michigan(26)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-MI.dta", replace
//^variable

clear
/////////////////////Minnesota(27)/////////////////////         

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-MN.dta", replace
//^variable

clear

/////////////////////Mississippi(28)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 28
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-MS.dta", replace
//^variable

clear 
 
/////////////////////Missouri(29)///////////////////// 
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 29
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-MO.dta", replace
//^variable

clear 
 
/////////////////////Montana(30)///////////////////// 
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 30
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-MT.dta", replace
//^variable

clear 
/////////////////////Nebraska(31)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 31
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-NE.dta", replace
//^variable

clear 
 
 
/////////////////////Nevada(32)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-NV.dta", replace
//^variable

clear 
 
///////////////////////New Hampshire(33)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 33
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-NH.dta", replace
//^variable

clear

/////////////////////New Jersey(34)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 34
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-NJ.dta", replace
//^variable

clear

/////////////////////New Mexico(35)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 35
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-NM.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-NC.dta", replace
//^variable

clear

/////////////////////North Dakota(38)/////////////////////  

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 38
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-ND.dta", replace
//^variable

clear

/////////////////////Ohio(39)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-OK.dta", replace
//^variable

clear

/////////////////////Oregon(41)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 41
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-OR.dta", replace
//^variable

clear




/////////////////////Pennsylvania(42)/////////////////////   
      
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-RI.dta", replace
//^variable

clear

/////////////////////South Carolina(45)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 45
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-SC.dta", replace
//^variable

clear

/////////////////////South Dakota(46)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 46
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-SD.dta", replace
//^variable

clear

/////////////////////Tennessee(47)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 47
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-TN.dta", replace
//^variable

clear
/////////////////////Texas(48)/////////////////////
 
use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-TX.dta", replace
//^variable

clear
/////////////////////Vermont(50)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 50
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-VT.dta", replace
//^variable

clear

/////////////////////Virginia(51)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse








postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-WA.dta", replace
//^variable

clear

/////////////////////West Virginia(54)/////////////////////       

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 54
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-WV.dta", replace
//^variable

clear

/////////////////////Wisconsin(55)///////////////////// 

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-WI.dta", replace
//^variable

clear
/////////////////////Wyoming(56)/////////////////////

use "[pathfile]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[pathfile]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 56
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[pathfile]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[pathfile]/HS-WY.dta", replace
//^variable

clear


//////Computing Direct Estimates for SBA Subgroup//////
//Target values are for all states except for AK and UT//

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)          
//Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)
 
/////////////////////Alabama(1)//////////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 1
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-AL.dta", replace
//^variable

clear

/////////////////////Arizona(4)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-AZ.dta", replace
//^variable

clear

/////////////////////Arkansas(5)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 5
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-AR.dta", replace
//^variable

clear

/////////////////////California(6)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse






postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-CT.dta", replace
//^variable

clear

/////////////////////Delaware(10)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 10
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-DE.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-HI.dta", replace
//^variable

clear

/////////////////////Idaho(16)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 16
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-ID.dta", replace
//^variable

clear
 
/////////////////////Illinois(17)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-IL.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-KY.dta", replace
//^variable

clear

/////////////////////Louisiana(22)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 22
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-LA.dta", replace
//^variable

clear

/////////////////////Maine(23)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 23
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-ME.dta", replace
//^variable

clear

/////////////////////Maryland(24)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-MA.dta", replace
//^variable

clear

/////////////////////Michigan(26)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-MI.dta", replace
//^variable

clear
/////////////////////Minnesota(27)/////////////////////         

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-MN.dta", replace
//^variable

clear

/////////////////////Mississippi(28)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 28
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-MS.dta", replace
//^variable

clear 
 
/////////////////////Missouri(29)///////////////////// 
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 29
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-MO.dta", replace
//^variable

clear 
 
/////////////////////Montana(30)///////////////////// 
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 30
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-MT.dta", replace
//^variable

clear 
/////////////////////Nebraska(31)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 31
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-NE.dta", replace
//^variable

clear 
 
 
/////////////////////Nevada(32)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-NV.dta", replace
//^variable

clear 
 
///////////////////////New Hampshire(33)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 33
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-NH.dta", replace
//^variable

clear

/////////////////////New Jersey(34)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 34
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-NJ.dta", replace
//^variable

clear

/////////////////////New Mexico(35)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 35
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-NM.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-NC.dta", replace
//^variable

clear

/////////////////////North Dakota(38)/////////////////////  

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 38
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-ND.dta", replace
//^variable

clear

/////////////////////Ohio(39)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-OK.dta", replace
//^variable

clear

/////////////////////Oregon(41)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 41
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-OR.dta", replace
//^variable

clear

/////////////////////Pennsylvania(42)/////////////////////   
      
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-RI.dta", replace
//^variable

clear

/////////////////////South Carolina(45)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 45
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-SC.dta", replace
//^variable

clear

/////////////////////South Dakota(46)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 46
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-SD.dta", replace
//^variable

clear

/////////////////////Tennessee(47)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 47
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-TN.dta", replace
//^variable

clear
/////////////////////Texas(48)/////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-TX.dta", replace
//^variable

clear
/////////////////////Vermont(50)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 50
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-VT.dta", replace
//^variable

clear

/////////////////////Virginia(51)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-VA.dta", replace
//^variable

clear

/////////////////////Washington(53)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-WA.dta", replace
//^variable

clear

/////////////////////West Virginia(54)/////////////////////       

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 54
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-WV.dta", replace
//^variable

clear

/////////////////////Wisconsin(55)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-WI.dta", replace
//^variable

clear
/////////////////////Wyoming(56)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 56
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/SBA-WY.dta", replace
//^variable

clear

//////Computing Direct Estimates for BA Subgroup//////
//Target values are for all states except for AK and UT//

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)     
     //Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)
 


/////////////////////Alabama(1)//////////////////////////
 
use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse







postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 1
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-AL.dta", replace
//^variable

clear

/////////////////////Arizona(4)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-AZ.dta", replace
//^variable

clear

/////////////////////Arkansas(5)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 5
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-AR.dta", replace
//^variable

clear

/////////////////////California(6)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-CT.dta", replace
//^variable

clear

/////////////////////Delaware(10)/////////////////////

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 10
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-DE.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-HI.dta", replace
//^variable

clear




/////////////////////Idaho(16)/////////////////////

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 16
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-ID.dta", replace
//^variable

clear
 
/////////////////////Illinois(17)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-IL.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-IA.dta", replace
//^variable

clear

/////////////////////Kansas(20)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-KY.dta", replace
//^variable

clear

/////////////////////Louisiana(22)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 22
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-LA.dta", replace
//^variable

clear

/////////////////////Maine(23)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 23
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-ME.dta", replace
//^variable

clear

/////////////////////Maryland(24)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-MA.dta", replace
//^variable

clear




/////////////////////Michigan(26)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-MI.dta", replace
//^variable

clear

/////////////////////Minnesota(27)/////////////////////         

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-MN.dta", replace
//^variable

clear

/////////////////////Mississippi(28)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 28
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-MS.dta", replace
//^variable

clear 
 
/////////////////////Missouri(29)///////////////////// 
 
use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 29
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-MO.dta", replace
//^variable

clear 
 
/////////////////////Montana(30)///////////////////// 
 
use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 30
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-MT.dta", replace
//^variable

clear 

/////////////////////Nebraska(31)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 31
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-NE.dta", replace
//^variable

clear 
 
 
/////////////////////Nevada(32)/////////////////////

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count

svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-NV.dta", replace
//^variable

clear 
 
///////////////////////New Hampshire(33)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 33
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-NH.dta", replace
//^variable

clear

/////////////////////New Jersey(34)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse






postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 34
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-NJ.dta", replace
//^variable

clear

/////////////////////New Mexico(35)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 35
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-NM.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-NC.dta", replace
//^variable

clear

/////////////////////North Dakota(38)/////////////////////  

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 38
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-ND.dta", replace
//^variable

clear

/////////////////////Ohio(39)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-OK.dta", replace
//^variable

clear

/////////////////////Oregon(41)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 41
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-OR.dta", replace
//^variable

clear

/////////////////////Pennsylvania(42)/////////////////////   
      
use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-RI.dta", replace
//^variable

clear

/////////////////////South Carolina(45)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 45
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-SC.dta", replace
//^variable

clear

/////////////////////South Dakota(46)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 46
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-SD.dta", replace
//^variable

clear

/////////////////////Tennessee(47)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse






postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 47
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-TN.dta", replace
//^variable

clear
/////////////////////Texas(48)/////////////////////
 
use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-TX.dta", replace
//^variable

clear
/////////////////////Vermont(50)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 50
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-VT.dta", replace
//^variable

clear

/////////////////////Virginia(51)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-WA.dta", replace
//^variable

clear

/////////////////////West Virginia(54)/////////////////////       

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse








postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 54
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-WV.dta", replace
//^variable

clear
/////////////////////Wisconsin(55)///////////////////// 

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-WI.dta", replace
//^variable

clear

/////////////////////Wyoming(56)/////////////////////

use “[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & PARED == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using “[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 56
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use “[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save “[filepath]/BA-WY.dta", replace
//^variable

clear

//////Computing Direct Estimates for B Subgroup//////
// Target values are for all states except for... 
// HI, ID, ME, MT, NH, NM, OR, SD, UT, VT, WY

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)     
     //Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)
 
/////////////////////Alabama(1)//////////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 1
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-AL.dta", replace
//^variable

clear

/////////////////////Alaska(2)//////////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 2
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-AK.dta", replace
//^variable

clear

/////////////////////Arizona(4)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-AZ.dta", replace
//^variable

clear

/////////////////////Arkansas(5)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 5
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-AR.dta", replace
//^variable

clear

/////////////////////California(6)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-CT.dta", replace
//^variable

clear

/////////////////////Delaware(10)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 10
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-DE.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-GA.dta", replace
//^variable

clear

 
/////////////////////Illinois(17)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-IL.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse






postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-KY.dta", replace
//^variable

clear

/////////////////////Louisiana(22)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 22
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-LA.dta", replace
//^variable

clear


/////////////////////Maryland(24)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-MA.dta", replace
//^variable

clear

/////////////////////Michigan(26)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-MI.dta", replace
//^variable

clear
/////////////////////Minnesota(27)/////////////////////         

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-MN.dta", replace
//^variable

clear

/////////////////////Mississippi(28)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 28
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-MS.dta", replace
//^variable

clear 
 
/////////////////////Missouri(29)///////////////////// 
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 29
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-MO.dta", replace
//^variable

clear 
 
/////////////////////Nebraska(31)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 31
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-NE.dta", replace
//^variable

clear 
 
 
/////////////////////Nevada(32)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-NV.dta", replace
//^variable

clear 

/////////////////////New Jersey(34)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 34
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-NJ.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-NC.dta", replace
//^variable

clear

/////////////////////North Dakota(38)/////////////////////  

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 38
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-ND.dta", replace
//^variable

clear

/////////////////////Ohio(39)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-OK.dta", replace
//^variable

clear

/////////////////////Pennsylvania(42)/////////////////////   
      
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-RI.dta", replace
//^variable

clear

/////////////////////South Carolina(45)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 45
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-SC.dta", replace
//^variable

clear

/////////////////////Tennessee(47)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 47
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-TN.dta", replace
//^variable

clear
/////////////////////Texas(48)/////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-TX.dta", replace
//^variable

clear

/////////////////////Virginia(51)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-WA.dta", replace
//^variable

clear

/////////////////////West Virginia(54)/////////////////////       

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 54
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-WV.dta", replace
//^variable

clear
/////////////////////Wisconsin(55)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 2 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/B-WI.dta", replace
//^variable

clear

/////Computing Direct Estimates for H Subgroup//////
//Target values are for all states except for ME, VT and WV

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)     
//Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)
 
/////////////////////Alabama(1)//////////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 1
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-AL.dta", replace
//^variable

clear

/////////////////////Alaska(2)//////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 2
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-AK.dta", replace
//^variable

clear 

/////////////////////Arizona(4)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-AZ.dta", replace
//^variable

clear

/////////////////////Arkansas(5)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 5
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-AR.dta", replace
//^variable

clear

/////////////////////California(6)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-CT.dta", replace
//^variable

clear

/////////////////////Delaware(10)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 10
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-DE.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-HI.dta", replace
//^variable

clear

/////////////////////Idaho(16)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 16
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-ID.dta", replace
//^variable

clear
 
/////////////////////Illinois(17)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-IL.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-KY.dta", replace
//^variable

clear

/////////////////////Louisiana(22)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 22
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-LA.dta", replace
//^variable

clear


/////////////////////Maryland(24)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-MA.dta", replace
//^variable

clear

/////////////////////Michigan(26)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-MI.dta", replace
//^variable

clear
/////////////////////Minnesota(27)/////////////////////         

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-MN.dta", replace
//^variable

clear

/////////////////////Mississippi(28)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 28
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-MS.dta", replace
//^variable

clear 
 
/////////////////////Missouri(29)///////////////////// 
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 29
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-MO.dta", replace
//^variable

clear 
 
/////////////////////Montana(30)///////////////////// 
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 30
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-MT.dta", replace
//^variable

clear 
/////////////////////Nebraska(31)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 31
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-NE.dta", replace
//^variable

clear 
 
 
/////////////////////Nevada(32)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-NV.dta", replace
//^variable

clear 
 
///////////////////////New Hampshire(33)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 33
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-NH.dta", replace
//^variable

clear

/////////////////////New Jersey(34)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 34
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-NJ.dta", replace
//^variable

clear

/////////////////////New Mexico(35)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 35
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-NM.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-NC.dta", replace
//^variable

clear

/////////////////////North Dakota(38)/////////////////////  

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 38
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-ND.dta", replace
//^variable

clear

/////////////////////Ohio(39)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-OK.dta", replace
//^variable

clear

/////////////////////Oregon(41)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 41
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-OR.dta", replace
//^variable

clear

/////////////////////Pennsylvania(42)/////////////////////   
      
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-RI.dta", replace
//^variable

clear

/////////////////////South Carolina(45)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 45
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-SC.dta", replace
//^variable

clear

/////////////////////South Dakota(46)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 46
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-SD.dta", replace
//^variable

clear

/////////////////////Tennessee(47)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 47
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-TN.dta", replace
//^variable

clear
/////////////////////Texas(48)/////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-TX.dta", replace
//^variable

clear

/////////////////////Utah (49)///////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 49
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-UT.dta", replace
//^variable

clear 




/////////////////////Virginia(51)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse








postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-WA.dta", replace
//^variable

clear


/////////////////////Wisconsin(55)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-WI.dta", replace
//^variable

clear

/////////////////////Wyoming(56)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 3 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 56
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/H-WY.dta", replace
//^variable

clear

//////Computing Direct Estimates for API Subgroup//////
//Target values are for all states except for AL, AR, ID, IN, LA, ME,
// MS, MO, MT, NE, NM, ND, OK, SC, SD, TN, UT, VT, WV, WY

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)     
     //Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)

/////////////////////Alaska(2)//////////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 2
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-AK.dta", replace
//^variable

clear



/////////////////////Arizona(4)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-AZ.dta", replace
//^variable

clear


/////////////////////California(6)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse






postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-CT.dta", replace
//^variable

clear

/////////////////////Delaware(10)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 10
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-DE.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-HI.dta", replace
//^variable

clear


/////////////////////Illinois(17)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-IL.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-KY.dta", replace
//^variable

clear


/////////////////////Maryland(24)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-MA.dta", replace
//^variable

clear

/////////////////////Michigan(26)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-MI.dta", replace
//^variable

clear
/////////////////////Minnesota(27)/////////////////////         

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-MN.dta", replace
//^variable

clear
 
 
/////////////////////Nevada(32)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-NV.dta", replace
//^variable

clear 
 
///////////////////////New Hampshire(33)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 33
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-NH.dta", replace
//^variable

clear

/////////////////////New Jersey(34)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 34
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-NJ.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-NC.dta", replace
//^variable

clear

/////////////////////Ohio(39)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-OH.dta", replace
//^variable

clear


/////////////////////Oregon(41)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 41
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-OR.dta", replace
//^variable

clear

/////////////////////Pennsylvania(42)/////////////////////   
      
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-RI.dta", replace
//^variable

clear

/////////////////////Texas(48)/////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-TX.dta", replace
//^variable

clear

/////////////////////Virginia(51)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-WA.dta", replace
//^variable

clear

/////////////////////Wisconsin(55)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 4 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/API-WI.dta", replace
//^variable

clear



//////Computing Direct Estimates for AINA Subgroup//////
//Target values are for all states except for AL, AR, CA, CO, CT, DE, FL, GA, 
// HI, ID, IL, IN, IA, KS, KY, LA, ME, MD, MA, MI, MS, MO, NE, NV, NH, NJ, NY, 
// OH, OR, PA, RI, SC, TN, TX, VT, VA, WV

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)     
     //Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)

/////////////////////Alaska(2)//////////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 2
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-AK.dta", replace
//^variable

clear

/////////////////////Arizona(4)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-AZ.dta", replace
//^variable

clear

/////////////////////Minnesota(27)/////////////////////         

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-MN.dta", replace
//^variable

clear

////////////////////Montana(30)///////////////////// 
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 30
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-MT.dta", replace
//^variable

clear 

/////////////////////New Mexico(35)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 35
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-NM.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-NC.dta", replace
//^variable

clear

/////////////////////North Dakota(38)/////////////////////  

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 38
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-ND.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-OK.dta", replace
//^variable

clear

/////////////////////South Dakota(46)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 46
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-SD.dta", replace
//^variable

clear

////////////////////Utah(49)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse







postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 49
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-UT.dta", replace
//^variable

clear


/////////////////////Washington(53)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-WA.dta", replace
//^variable

clear

/////////////////////Wisconsin(55)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-WI.dta", replace
//^variable

clear
/////////////////////Wyoming(56)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 5 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 56
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/AINA-WY.dta", replace
//^variable

clear



//////Computing Direct Estimates for 2+ (TP) Subgroup//////
//Target values are for all states except for AL, AZ, AR, CT, DE, ID, IL, 
// LA, ME, MA, MI, MS, MO, NH, NJ, NM, NY, ND, SC, SD, TN, UT, VT, WV, WI, WY//

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)     
     //Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)

/////////////////////Alaska(2)//////////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 2
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-AK.dta", replace
//^variable

clear


/////////////////////California(6)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-CO.dta", replace
//^variable

clear

/////////////////////Florida(12)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-HI.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-KS.dta", replace
//^variable

clear

/////////////////////Kentucky(21)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 21
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-KY.dta", replace
//^variable

clear


/////////////////////Maryland(24)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-MD.dta", replace
//^variable

clear

/////////////////////Minnesota(27)/////////////////////         

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-MN.dta", replace
//^variable

clear

 
/////////////////////Montana(30)///////////////////// 
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 30
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-MT.dta", replace
//^variable

clear 
/////////////////////Nebraska(31)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 31
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-NE.dta", replace
//^variable

clear 
 
 
/////////////////////Nevada(32)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-NV.dta", replace
//^variable

clear 


/////////////////////North Carolina(37)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-NC.dta", replace
//^variable

clear


/////////////////////Ohio(39)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-OK.dta", replace
//^variable

clear

/////////////////////Oregon(41)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 41
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-OR.dta", replace
//^variable

clear

/////////////////////Pennsylvania(42)/////////////////////   
      
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-RI.dta", replace
//^variable

clear


/////////////////////Texas(48)/////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-TX.dta", replace
//^variable

clear

/////////////////////Virginia(51)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & SDRACEM == 6 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/TP-WA.dta", replace
//^variable

clear













//////Computing Direct Estimates for EL Subgroup//////
//Target values are for all states except for AL, DE, ID, KY, LA, 
// ME, MS, MO, MT, NE, NH, NJ, ND, OR, SD, TN, VT, WV, WY

/////State label reference///
//Alabama(1) Alaska(2) Arizona(4) Arkansas(5) California(6) Colorado(8)     
//Connecticut(9) Delaware(10) Florida(12) Georgia(13) Hawaii(15) Idaho(16) 
//Illinois(17) Indiana(18) Iowa(19) Kansas(20) Kentucky(21) Louisiana(22) 
//Maine(23) Maryland(24) Massachusetts(25) Michigan(26) Minnesota(27)          
//Mississippi(28) Missouri(29) Montana(30) Nebraska(31) Nevada(32) 
//New Hampshire(33) New Jersey(34) New Mexico(35) New York(36) North Carolina(37) 
//North Dakota(38)  Ohio(39) Oklahoma(40) Oregon(41) Pennsylvania(42)         
//Rhode Island(44) South Carolina(45) South Dakota(46) Tennessee(47) 
//Texas(48) Utah (49) Vermont(50) Virginia(51) Washington(53) 
//West Virginia(54) Wisconsin(55) Wyoming(56)
 
/////////////////////Alaska(2)//////////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 2
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-AK.dta", replace
//^variable

clear

/////////////////////Arizona(4)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse






postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 4
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-AZ.dta", replace
//^variable

clear

/////////////////////Arkansas(5)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse





postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 5
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-AR.dta", replace
//^variable

clear

/////////////////////California(6)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 6
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-CA.dta", replace
//^variable

clear

/////////////////////Colorado(8)/////////////////////          

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 8
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-CO.dta", replace
//^variable

clear

/////////////////////Connecticut(9)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 9
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-CT.dta", replace
//^variable

clear


/////////////////////Florida(12)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 12
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-FL.dta", replace
//^variable

clear

/////////////////////Georgia(13)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 13
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-GA.dta", replace
//^variable

clear

/////////////////////Hawaii(15)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 15
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-HI.dta", replace
//^variable

clear
 
/////////////////////Illinois(17)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 17
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-IL.dta", replace
//^variable

clear

/////////////////////Indiana(18)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 18
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-IN.dta", replace
//^variable

clear

/////////////////////Iowa(19)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 19
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-IA.dta", replace
//^variable

clear
/////////////////////Kansas(20)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 20
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-KS.dta", replace
//^variable

clear



/////////////////////Maryland(24)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 24
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-MD.dta", replace
//^variable

clear

/////////////////////Massachusetts(25)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 25
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-MA.dta", replace
//^variable

clear

/////////////////////Michigan(26)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 26
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-MI.dta", replace
//^variable

clear

/////////////////////Minnesota(27)/////////////////////         

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 27
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-MN.dta", replace
//^variable

clear
 
 
/////////////////////Nevada(32)/////////////////////

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 32
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-NV.dta", replace
//^variable

clear 

/////////////////////New Mexico(35)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 35
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-NM.dta", replace
//^variable

clear

/////////////////////New York(36)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 36
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-NY.dta", replace
//^variable

clear

/////////////////////North Carolina(37)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 37
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-NC.dta", replace
//^variable

clear


/////////////////////Ohio(39)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 39
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-OH.dta", replace
//^variable

clear

/////////////////////Oklahoma(40)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse



postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 40
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-OK.dta", replace
//^variable

clear


/////////////////////Pennsylvania(42)/////////////////////   
      
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 42
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-PA.dta", replace
//^variable

clear      
/////////////////////Rhode Island(44)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 44
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-RI.dta", replace
//^variable

clear

/////////////////////South Carolina(45)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse




postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 45
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-SC.dta", replace
//^variable

clear


/////////////////////Texas(48)/////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 48
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-TX.dta", replace
//^variable

clear

/////////////////////Utah(49)/////////////////////
 
use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 49
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-UT.dta", replace
//^variable

clear


/////////////////////Virginia(51)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 51
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-VA.dta", replace
//^variable

clear
/////////////////////Washington(53)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count


svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse


postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 53
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-WA.dta", replace
//^variable

clear
/////////////////////Wisconsin(55)///////////////////// 

use "[filepath]/Data-in-stata.dta"

keep if PUBPRIV == 1 & LEP == 1 // < variable for subgroup

//take a random sample of [censored].
set seed 2019
sort FIPS15
by FIPS15: sample [censored], count

svyset [pweight = ORIGWT] , jkrweight(SRWT*) vce(jackknife) mse

postfile buffer mean_ach stderr using "[filepath]/results.dta", replace
forvalues i=1(1)20 {
	svy: mean MRPCM`i' if FIPS15 == 55
	mat results = r(table)
	local mean_ach = results[1,1]
	local stderr = results[2,1]
	post buffer (`mean_ach') (`stderr')
}
postclose buffer

clear

use "[filepath]/results.dta"

gen mean_var = stderr^2

drop stderr

save "[filepath]/EL-WI.dta", replace
//^variable

clear
