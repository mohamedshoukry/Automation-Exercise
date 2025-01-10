*** Settings ***
Library     Browser


*** Keywords ***
Enter Title_Registration
    wait for elements state     xpath=(//input[@id='id_gender1'])[1]     visible     3s
    click    xpath=(//input[@id='id_gender1'])[1]

Enter Password_Registration
    [Arguments]    ${Passw0rd}
    wait for elements state    xpath=(//input[@id='password'])[1]    visible     3s
    fill text    xpath=(//input[@id='password'])[1]    ${Passw0rd}

Enter Birth Date day
    [Arguments]    ${Day}
    wait for elements state    xpath=(//select[@id='days'])[1]     visible     3s
    select options by         xpath=(//select[@id='days'])[1]      index       ${Day}

Enter Birth Date Month
    [Arguments]    ${Month}
    wait for elements state    xpath=(//select[@id='months'])[1]     visible     3s
    select options by         xpath=(//select[@id='months'])[1]     index       ${Month}

Enter Birth Date Year
    [Arguments]    ${Year}
    wait for elements state    xpath=(//select[@id='years'])[1]    visible     3s
    select options by         xpath=(//select[@id='years'])[1]      index       ${Year}

Press Check Box Sign up for our newsletter!
    wait for elements state    xpath=(//input[@id='newsletter'])[1]     visible     3s
    click    xpath=(//input[@id='newsletter'])[1]

Press Check Box Receive special offers from our partners!
    wait for elements state    xpath=(//input[@id='optin'])[1]     visible     3s
    click    xpath=(//input[@id='optin'])[1]

Enter First Name_Registration
    [Arguments]    ${First_Name}
    wait for elements state    xpath=(//input[@id='first_name'])[1]     visible     3s
    fill text    xpath=(//input[@id='first_name'])[1]     ${First_Name}

Enter Last Name_Registration
    [Arguments]    ${Last_Name}
    wait for elements state    xpath=(//input[@id='last_name'])[1]    visible     3s
    fill text    xpath=(//input[@id='last_name'])[1]    ${Last_Name}

Enter Company Name_Registration
    [Arguments]    ${company}
    wait for elements state    xpath=(//input[@id='company'])[1]     visible     3s
    fill text    xpath=(//input[@id='company'])[1]    ${company}

Enter address 1_Registration
    [Arguments]    ${Address1}
    wait for elements state    xpath=(//input[@id='address1'])[1]     visible     3s
    fill text    xpath=(//input[@id='address1'])[1]    ${Address1}

Enter Address 2_Registration
    [Arguments]    ${Address2}
    wait for elements state    xpath=(//input[@id='address2'])[1]    visible     3s
    fill text    xpath=(//input[@id='address2'])[1]    ${Address2}

Choose Country_Registration
    wait for elements state    xpath=(//select[@id='country'])[1]     visible     3s
    select options by    xpath=(//select[@id='country'])[1]     index    1

Enter State_Registration
    [Arguments]    ${State}
    wait for elements state    xpath=(//input[@id='state'])[1]    visible     3s
    fill text    xpath=(//input[@id='state'])[1]    ${State}

Enter City_Registration
    [Arguments]    ${City}
    wait for elements state    xpath=(//input[@id='city'])[1]    visible     3s
    fill text    xpath=(//input[@id='city'])[1]   ${City}

Enter zipcode_Registration
    [Arguments]    ${Zipcode}
    wait for elements state    xpath=(//input[@id='zipcode'])[1]    visible     3s
    fill text    xpath=(//input[@id='zipcode'])[1]   ${Zipcode}

Enter Mobile Number_Registration
    [Arguments]    ${mobile_number}
    wait for elements state    xpath=(//input[@id='mobile_number'])[1]    visible     3s
    fill text    xpath=(//input[@id='mobile_number'])[1]    ${mobile_number}

Press Button Create Account
    wait for elements state     xpath=(//button[normalize-space()='Create Account'])[1]    visible     3s
    click    xpath=(//button[normalize-space()='Create Account'])[1]

check message create account display
    wait for elements state    xpath=(//b[normalize-space()='Account Created!'])[1]       visible     3s

press button continue
    wait for elements state    xpath=(//a[normalize-space()='Continue'])[1]     visible     3s
    click    xpath=(//a[normalize-space()='Continue'])[1]

press button logout
    wait for elements state    xpath=(//a[normalize-space()='Logout'])[1]    visible     3s
    click    xpath=(//a[normalize-space()='Logout'])[1]
    wait for elements state    xpath=(//h2[normalize-space()='Login to your account'])[1]     visible     3s























