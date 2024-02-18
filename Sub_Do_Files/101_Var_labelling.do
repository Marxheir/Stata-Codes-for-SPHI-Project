* Variable Labels *
* Author: Oluwatosin Olowookere *

// Identify variables without labels

foreach var of varlist _all{
		local label : variable label `var'
		if "`label'" == "" {
        di "Variable without label: `var'"
 }
}



// Labeling variables without labels // 

		label variable hh_member_resp "Respondent's position in the household"


		label variable cnic_number_calc "CNIC of the main card cardholder in the household"

		label variable cnic_gender_calc "Gender of CNIC main card cardholder in the household"

		label variable cnic_gender_calc "Gender of CNIC main card cardholder in the household (Binary)"









