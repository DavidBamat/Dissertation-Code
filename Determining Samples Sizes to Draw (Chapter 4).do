////////////////////////////////////////////////////////////////////////////////
///////////////////////Determining samples to draw//////////////////////////////
////////////////////////////////////////////////////////////////////////////////

//Import data
use "[filepath]/Data-in-stata.dta"

//Keep only public school students
keep if PUBPRIV == 1 // Drops total samples from [censored]cases to [censored]

//First, for NHS subgroup, keep only AK (2) and UT (49)
keep if FIPS15 == 2 | FIPS15 == 49

//Examine number of cases (students) per "PARED" group
tab PARED

////////////////////////RESULTS for NHS, HS, SBA, & BA//////////////////////////
//For some reason, AK and UT students did not indicate their parents level
//	of education. Over 99% of values for this variable are coded as 
//	omitted for these two states. Instead I will use the maximum sample size
//	used for the remaining subgroups of interest. The rationale here is that
//	we can typically expect at least 62 students to be be drawn for the PARED
//	subgroups during a typical year. This maximum is [censored] (same as B 
//	subgroup).
//	
//	NB: I can draw this conclusion from the limited amount of code because 
//	AK and UT are the only states for which mean estimates are not reported
//	for all of the parental level of education subgroups.
////////////////////////////////////////////////////////////////////////////////

clear

//Re-Import data
use "[filepath]/Data-in-stata.dta"

//Keep only public school students
keep if PUBPRIV == 1 // Drops total sample from [censored] cases to [censored]

//Now, for B subgroup keep only HI (15), ID (16), ME (23), MT (30), NH (33),
// NM (35), OR (41), SD (46), UT (49), VT, (50), WY (56)

keep if FIPS15 == 15 | FIPS15 == 16 | FIPS15 == 23 | FIPS15 == 30 ///
| FIPS15 == 33 | FIPS15 == 35 | FIPS15 == 41 | FIPS15 == 46 | FIPS15 == 49 ///
| FIPS15 == 50 | FIPS15 == 56



//Examine number of cases (students) per SDRACEM group
tab SDRACEM FIPS15

//The number of B cases (students) per state are [censored]

//////////////////////////////////RESULTS for B/////////////////////////////////
//The sample to size to draw for the B subgroup is [censored]. 
////////////////////////////////////////////////////////////////////////////////

clear

//Re-Import data
use "[filepath]/Data-in-stata.dta"

//Keep only public school students
keep if PUBPRIV == 1 // Drops total sample from [censored] cases to [censored]

//Now, for H subgroup keep only ME (23), VT (50) and WV (54).

keep if FIPS15 == 23 | FIPS15 == 50 | FIPS15 == 54

//Examine number of cases (students) per "SDRACEM" group
tab SDRACEM FIPS15

//The number of H cases (students) per state are [censored]

//////////////////////////////////RESULTS for H/////////////////////////////////
//The sample to size to draw for the H subgroup is [censored]. 
////////////////////////////////////////////////////////////////////////////////

clear

//Re-Import data
use "[filepath]/Data-in-stata.dta"

//Keep only public school students
keep if PUBPRIV == 1 // Drops total sample from [censored] cases to [censored]

//Now, for API subgroup keep only  AL(1), AR(5), ID(16), IN(18), LA(22), ME(23),
// MS(28), MO(29), MT(30), NE(31), NM(35), ND(38), OK(40), SC(45), SD(46),
// TN(47), UT(49), VT(50), WV(54), WY(56)

keep if FIPS15 == 1  | FIPS15 == 5 | FIPS15 == 16 | FIPS15 == 18 ///
 | FIPS15 == 22 | FIPS15 == 23 | FIPS15 == 28 | FIPS15 == 29 | FIPS15 == 30 ///
 | FIPS15 == 31 | FIPS15 == 35 | FIPS15 == 38 | FIPS15 == 40 | FIPS15 == 45 ///
 | FIPS15 == 46 | FIPS15 == 47 | FIPS15 == 49 | FIPS15 == 50 | FIPS15 == 54 ///
 | FIPS15 == 56
 
 //Examine number of cases (students) per "SDRACEM" group
tab SDRACEM FIPS15

//The number of API cases (students) per state are [censored]
                       
//////////////////////////////////RESULTS for API///////////////////////////////
//The sample to size to draw for the API subgroup is [censored]. 
////////////////////////////////////////////////////////////////////////////////

// NEED to use "DRACEM" for 2+ group 

//Re-Import data
use "[filepath]/Data-in-stata.dta"


//Keep only public school students
keep if PUBPRIV == 1 // Drops total sample from [censored] cases to [censored]

//Now, for AINA subgroup keep only AL(1), AR(5), CA(6), CO(8), CT(9), DE(10), FL(12), GA(13), HI(15), ID(16), IL(17), IN(18), IA(19), KS(20), KY(21), LA(22), ME(23), MD(24), MA(25), MI(26), MS(28), MO(29), NE(31), NV(32), NH(33), NJ(34), NY(36), OH(39), OR(41), PA(42), RI(44), SC(45), TN (47), TX(48), VT(50), VA(51), WV(54)

keep if FIPS15 == 1  | FIPS15 == 5 | FIPS15 == 6 | FIPS15 == 8 ///
 | FIPS15 == 9 | FIPS15 == 10 | FIPS15 == 12 | FIPS15 == 13 | FIPS15 == 15 ///
 | FIPS15 == 16 | FIPS15 == 17 | FIPS15 == 18 | FIPS15 == 19 | FIPS15 == 20 ///
 | FIPS15 == 21 | FIPS15 == 22 | FIPS15 == 23 | FIPS15 == 24 | FIPS15 == 25 ///
 | FIPS15 == 26 | FIPS15 == 28 | FIPS15 == 29 | FIPS15 == 31 | FIPS15 == 32 ///
 | FIPS15 == 33 | FIPS15 == 34 | FIPS15 == 36 | FIPS15 == 39 | FIPS15 == 41 ///
 | FIPS15 == 42 | FIPS15 == 44 | FIPS15 == 45 | FIPS15 == 47 | FIPS15 == 48 ///
 | FIPS15 == 50 | FIPS15 == 51 | FIPS15 == 54
 
 tab SDRACEM FIPS15
 
//The number of AINA cases (students) per state are [censored]

//////////////////////////////////RESULTS for AINA///////////////////////////////
//The sample to size to draw for the AINA subgroup is [censored]. 
////////////////////////////////////////////////////////////////////////////////    

clear

//Re-Import data
use "[filepath]/Data-in-stata.dta"

//Keep only public school students
keep if PUBPRIV == 1 // Drops total sample from [censored] cases to [censored]

//Now, for 2+ subgroup keep only AL(1), AZ(4), AR(5), CT(9), DE(10), ID(16),
// IL(17), LA(22), ME(23), MA(25), MI(26), MS(28), MO(29), NH(33), NJ(34), 
// NM(35), NY(36), ND(38), SC(45), SD(46), TN(47), UT(49), VT(50), WV(54), 
// WI(55), WY(56)

keep if FIPS15 == 1  | FIPS15 == 4 | FIPS15 == 5 | FIPS15 == 9 ///
 | FIPS15 == 10 | FIPS15 == 16 | FIPS15 == 17 | FIPS15 == 22 | FIPS15 == 23 ///
 | FIPS15 == 25 | FIPS15 == 26 | FIPS15 == 28 | FIPS15 == 29 | FIPS15 == 33 ///
 | FIPS15 == 34 | FIPS15 == 35 | FIPS15 == 36 | FIPS15 == 38 | FIPS15 == 45 ///
 | FIPS15 == 46 | FIPS15 == 47 | FIPS15 == 49 | FIPS15 == 50 | FIPS15 == 54 ///
 | FIPS15 == 55 | FIPS15 == 56 
 
tab SDRACEM FIPS15

//The number of 2+ cases (students) per state are 
// [censored]

//////////////////////////////////RESULTS for 2+ (TP)///////////////////////////
//The sample to size to draw for the 2+ subgroup is [censored]. 
//////////////////////////////////////////////////////////////////////////////// 

clear

//Re-Import data
use "[filepath]/Data-in-stata.dta"

//Keep only public school students
keep if PUBPRIV == 1 // Drops total sample from [censored] cases to [censored]


//Now, for EL subgroup keep only AL(1), DE (10), ID (16), KY(21), LA(22), 
// ME(23), MS(28), MO(29), MT(30), NE(31), NH(33), NJ(34), ND(38), OR(41), 
// SD(46), TN(47), VT(50), WV(54), WY(56)

keep if FIPS15 == 1  | FIPS15 == 10 | FIPS15 == 16 | FIPS15 == 21 ///
 | FIPS15 == 22 | FIPS15 == 23 | FIPS15 == 28 | FIPS15 == 29 | FIPS15 == 30 ///
 | FIPS15 == 31 | FIPS15 == 33 | FIPS15 == 34 | FIPS15 == 38 | FIPS15 == 41 ///
 | FIPS15 == 46 | FIPS15 == 47 | FIPS15 == 50 | FIPS15 == 54 | FIPS15 == 56 ///
 
tab LEP FIPS15

//The number of EL cases (students) per state are 
// [censored]

//////////////////////////////////RESULTS for EL////////////////////////////////
//The sample to size to draw for the EL subgroup is [censored]. 
// Curiously, five separate states, for which mean achievement of the EL subgroup // was not reported, had more than 62 students.
////////////////////////////////////////////////////////////////////////////////
