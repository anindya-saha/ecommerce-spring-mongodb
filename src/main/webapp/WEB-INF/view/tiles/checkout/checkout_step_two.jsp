<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--  ==========  -->
<!--  = Header =  -->
<!--  ==========  -->
<header>
	<div class="row">
		<div class="span2">
			<a href="index.html"><img src="images/logo-bw.png"
				alt="Webmarket Logo" width="48" height="48" /></a>
		</div>
		<div class="span6">
			<div class="center-align">
				<h1>
					<span class="light">Billing</span> &amp; Shipping Address
				</h1>
			</div>
		</div>
		<div class="span2">
			<div class="right-align">
				<img src="images/buttons/security.jpg" alt="Security Sign"
					width="92" height="65" />
			</div>
		</div>
	</div>
</header>
<!--  ==========  -->
<!--  = Steps =  -->
<!--  ==========  -->
<div class="checkout-steps">
	<div class="clearfix">
		<div class="step done">
			<div class="step-badge">
				<i class="icon-ok"></i>
			</div>
			<a href="checkout-step-1.html">Shopping Cart</a>
		</div>
		<div class="step active">
			<div class="step-badge">2</div>
			Shipping Address
		</div>
		<div class="step">
			<div class="step-badge">2</div>
			Payment Method
		</div>
		<div class="step">
			<div class="step-badge">4</div>
			Confirm &amp; Pay
		</div>
	</div>
</div>
<!-- /steps -->
<!--  ==========  -->
<!--  = Shipping addr form =  -->
<!--  ==========  -->

<form action="#" method="post" class="form-horizontal form-checkout" />
<div class="control-group">
	<label class="control-label" for="firstName">First Name<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<input type="text" id="firstName" class="span4" required="" />
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="lastName">Last Name<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<input type="text" id="lastName" class="span4" required="" />
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="telephone">Telephone<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<input type="tel" id="telephone" class="span4" required="" />
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="email">Email<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<input type="email" id="email" class="span4" required="" />
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="addr1">Address 1<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<input type="text" id="addr1" class="span4" required="" />
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="addr2">Address 2</label>
	<div class="controls">
		<input type="text" id="addr2" class="span4" />
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="city">City<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<input type="text" id="city" class="span4" />
	</div>
</div>
<div class="control-group">
	<label class="control-label" for="zip">ZIP<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<input type="text" id="zip" class="span4" />
	</div>
</div>

<!--  ==========  -->
<!--  = Countries =  -->
<!--  ==========  -->
<div class="control-group">
	<label class="control-label" for="country">Country<span
		class="red-clr bold">*</span></label>
	<div class="controls">
		<select id="country" class="as-span4"><option value="AC" />Ascension
			Island
			<option value="AD" />Andorra
			<option value="AE" />United Arab Emirates
			<option value="AF" />Afghanistan
			<option value="AG" />Antigua and Barbuda
			<option value="AI" />Anguilla
			<option value="AL" />Albania
			<option value="AM" />Armenia
			<option value="AN" />Netherlands Antilles
			<option value="AO" />Angola
			<option value="AQ" />Antarctica
			<option value="AR" />Argentina
			<option value="AS" />American Samoa
			<option value="AT" />Austria
			<option value="AU" />Australia
			<option value="AW" />Aruba
			<option value="AX" />Åland Islands
			<option value="AZ" />Azerbaijan
			<option value="BA" />Bosnia and Herzegovina
			<option value="BB" />Barbados
			<option value="BD" />Bangladesh
			<option value="BE" />Belgium
			<option value="BF" />Burkina Faso
			<option value="BG" />Bulgaria
			<option value="BH" />Bahrain
			<option value="BI" />Burundi
			<option value="BJ" />Benin
			<option value="BL" />Saint Barthélemy
			<option value="BM" />Bermuda
			<option value="BN" />Brunei
			<option value="BO" />Bolivia
			<option value="BQ" />British Antarctic Territory
			<option value="BR" />Brazil
			<option value="BS" />Bahamas
			<option value="BT" />Bhutan
			<option value="BV" />Bouvet Island
			<option value="BW" />Botswana
			<option value="BY" />Belarus
			<option value="BZ" />Belize
			<option value="CA" />Canada
			<option value="CC" />Cocos [Keeling] Islands
			<option value="CD" />Congo - Kinshasa
			<option value="CF" />Central African Republic
			<option value="CG" />Congo - Brazzaville
			<option value="CH" />Switzerland
			<option value="CI" />Côte d’Ivoire
			<option value="CK" />Cook Islands
			<option value="CL" />Chile
			<option value="CM" />Cameroon
			<option value="CN" />China
			<option value="CO" />Colombia
			<option value="CP" />Clipperton Island
			<option value="CR" />Costa Rica
			<option value="CS" />Serbia and Montenegro
			<option value="CT" />Canton and Enderbury Islands
			<option value="CU" />Cuba
			<option value="CV" />Cape Verde
			<option value="CX" />Christmas Island
			<option value="CY" />Cyprus
			<option value="CZ" />Czech Republic
			<option value="DD" />East Germany
			<option value="DE" />Germany
			<option value="DG" />Diego Garcia
			<option value="DJ" />Djibouti
			<option value="DK" />Denmark
			<option value="DM" />Dominica
			<option value="DO" />Dominican Republic
			<option value="DZ" />Algeria
			<option value="EA" />Ceuta and Melilla
			<option value="EC" />Ecuador
			<option value="EE" />Estonia
			<option value="EG" />Egypt
			<option value="EH" />Western Sahara
			<option value="ER" />Eritrea
			<option value="ES" />Spain
			<option value="ET" />Ethiopia
			<option value="EU" />European Union
			<option value="FI" />Finland
			<option value="FJ" />Fiji
			<option value="FK" />Falkland Islands
			<option value="FM" />Micronesia
			<option value="FO" />Faroe Islands
			<option value="FQ" />French Southern and Antarctic Territories
			<option value="FR" />France
			<option value="FX" />Metropolitan France
			<option value="GA" />Gabon
			<option value="GB" />United Kingdom
			<option value="GD" />Grenada
			<option value="GE" />Georgia
			<option value="GF" />French Guiana
			<option value="GG" />Guernsey
			<option value="GH" />Ghana
			<option value="GI" />Gibraltar
			<option value="GL" />Greenland
			<option value="GM" />Gambia
			<option value="GN" />Guinea
			<option value="GP" />Guadeloupe
			<option value="GQ" />Equatorial Guinea
			<option value="GR" />Greece
			<option value="GS" />South Georgia and the South Sandwich Islands
			<option value="GT" />Guatemala
			<option value="GU" />Guam
			<option value="GW" />Guinea-Bissau
			<option value="GY" />Guyana
			<option value="HK" />Hong Kong SAR China
			<option value="HM" />Heard Island and McDonald Islands
			<option value="HN" />Honduras
			<option value="HR" />Croatia
			<option value="HT" />Haiti
			<option value="HU" />Hungary
			<option value="IC" />Canary Islands
			<option value="ID" />Indonesia
			<option value="IE" />Ireland
			<option value="IL" />Israel
			<option value="IM" />Isle of Man
			<option value="IN" />India
			<option value="IO" />British Indian Ocean Territory
			<option value="IQ" />Iraq
			<option value="IR" />Iran
			<option value="IS" />Iceland
			<option value="IT" />Italy
			<option value="JE" />Jersey
			<option value="JM" />Jamaica
			<option value="JO" />Jordan
			<option value="JP" />Japan
			<option value="JT" />Johnston Island
			<option value="KE" />Kenya
			<option value="KG" />Kyrgyzstan
			<option value="KH" />Cambodia
			<option value="KI" />Kiribati
			<option value="KM" />Comoros
			<option value="KN" />Saint Kitts and Nevis
			<option value="KP" />North Korea
			<option value="KR" />South Korea
			<option value="KW" />Kuwait
			<option value="KY" />Cayman Islands
			<option value="KZ" />Kazakhstan
			<option value="LA" />Laos
			<option value="LB" />Lebanon
			<option value="LC" />Saint Lucia
			<option value="LI" />Liechtenstein
			<option value="LK" />Sri Lanka
			<option value="LR" />Liberia
			<option value="LS" />Lesotho
			<option value="LT" />Lithuania
			<option value="LU" />Luxembourg
			<option value="LV" />Latvia
			<option value="LY" />Libya
			<option value="MA" />Morocco
			<option value="MC" />Monaco
			<option value="MD" />Moldova
			<option value="ME" />Montenegro
			<option value="MF" />Saint Martin
			<option value="MG" />Madagascar
			<option value="MH" />Marshall Islands
			<option value="MI" />Midway Islands
			<option value="MK" />Macedonia
			<option value="ML" />Mali
			<option value="MM" />Myanmar [Burma]
			<option value="MN" />Mongolia
			<option value="MO" />Macau SAR China
			<option value="MP" />Northern Mariana Islands
			<option value="MQ" />Martinique
			<option value="MR" />Mauritania
			<option value="MS" />Montserrat
			<option value="MT" />Malta
			<option value="MU" />Mauritius
			<option value="MV" />Maldives
			<option value="MW" />Malawi
			<option value="MX" />Mexico
			<option value="MY" />Malaysia
			<option value="MZ" />Mozambique
			<option value="NA" />Namibia
			<option value="NC" />New Caledonia
			<option value="NE" />Niger
			<option value="NF" />Norfolk Island
			<option value="NG" />Nigeria
			<option value="NI" />Nicaragua
			<option value="NL" />Netherlands
			<option value="NO" />Norway
			<option value="NP" />Nepal
			<option value="NQ" />Dronning Maud Land
			<option value="NR" />Nauru
			<option value="NT" />Neutral Zone
			<option value="NU" />Niue
			<option value="NZ" />New Zealand
			<option value="OM" />Oman
			<option value="PA" />Panama
			<option value="PC" />Pacific Islands Trust Territory
			<option value="PE" />Peru
			<option value="PF" />French Polynesia
			<option value="PG" />Papua New Guinea
			<option value="PH" />Philippines
			<option value="PK" />Pakistan
			<option value="PL" />Poland
			<option value="PM" />Saint Pierre and Miquelon
			<option value="PN" />Pitcairn Islands
			<option value="PR" />Puerto Rico
			<option value="PS" />Palestinian Territories
			<option value="PT" />Portugal
			<option value="PU" />U.S. Miscellaneous Pacific Islands
			<option value="PW" />Palau
			<option value="PY" />Paraguay
			<option value="PZ" />Panama Canal Zone
			<option value="QA" />Qatar
			<option value="QO" />Outlying Oceania
			<option value="RE" />Réunion
			<option value="RO" />Romania
			<option value="RS" />Serbia
			<option value="RU" />Russia
			<option value="RW" />Rwanda
			<option value="SA" />Saudi Arabia
			<option value="SB" />Solomon Islands
			<option value="SC" />Seychelles
			<option value="SD" />Sudan
			<option value="SE" />Sweden
			<option value="SG" />Singapore
			<option value="SH" />Saint Helena
			<option value="SI" />Slovenia
			<option value="SJ" />Svalbard and Jan Mayen
			<option value="SK" />Slovakia
			<option value="SL" />Sierra Leone
			<option value="SM" />San Marino
			<option value="SN" />Senegal
			<option value="SO" />Somalia
			<option value="SR" />Suriname
			<option value="ST" />São Tomé and Príncipe
			<option value="SU" />Union of Soviet Socialist Republics
			<option value="SV" />El Salvador
			<option value="SY" />Syria
			<option value="SZ" />Swaziland
			<option value="TA" />Tristan da Cunha
			<option value="TC" />Turks and Caicos Islands
			<option value="TD" />Chad
			<option value="TF" />French Southern Territories
			<option value="TG" />Togo
			<option value="TH" />Thailand
			<option value="TJ" />Tajikistan
			<option value="TK" />Tokelau
			<option value="TL" />Timor-Leste
			<option value="TM" />Turkmenistan
			<option value="TN" />Tunisia
			<option value="TO" />Tonga
			<option value="TR" />Turkey
			<option value="TT" />Trinidad and Tobago
			<option value="TV" />Tuvalu
			<option value="TW" />Taiwan
			<option value="TZ" />Tanzania
			<option value="UA" />Ukraine
			<option value="UG" />Uganda
			<option value="UM" />U.S. Minor Outlying Islands
			<option value="US" />United States
			<option value="UY" />Uruguay
			<option value="UZ" />Uzbekistan
			<option value="VA" />Vatican City
			<option value="VC" />Saint Vincent and the Grenadines
			<option value="VD" />North Vietnam
			<option value="VE" />Venezuela
			<option value="VG" />British Virgin Islands
			<option value="VI" />U.S. Virgin Islands
			<option value="VN" />Vietnam
			<option value="VU" />Vanuatu
			<option value="WF" />Wallis and Futuna
			<option value="WK" />Wake Island
			<option value="WS" />Samoa
			<option value="YD" />People's Democratic Republic of Yemen
			<option value="YE" />Yemen
			<option value="YT" />Mayotte
			<option value="ZA" />South Africa
			<option value="ZM" />Zambia
			<option value="ZW" />Zimbabwe
			<option value="ZZ" />Unknown Region
		</select>
	</div>
</div>
<!-- /countries -->

</form>

<hr />

<p class="right-align">
	In the next step you will choose a payment method &nbsp; &nbsp; <a
		href="/checkout/step-three " class="btn btn-primary higher bold">CONTINUE</a>
</p>