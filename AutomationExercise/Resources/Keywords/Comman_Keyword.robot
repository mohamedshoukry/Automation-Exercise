*** Settings ***
Library         Browser
Library     String

*** Variables ***

*** Keywords ***
Begin Web Test
    New Browser     chromium    headless=false     slowMo=0.5    #args=["--start-maximized"]
    New Context    viewport={'width': 1490, 'height': 800}       #${none}
    Set Browser Timeout    70
    New Page        ${Login_URL}

End web Test
    Browser.close browser

Create random Edit phone number
    ${randomPhoneNumber}     generate random string          8   [NUMBERS]
    ${Editphone_number}       Catenate    010${randomPhoneNumber}
    set suite variable     ${Editphone_number}

Create random Email
    ${randomEmail}      generate random string          8     [NUMBERS]
    ${NewRandomEmail}       Catenate    New${randomEmail}@SSO.sa
    set suite variable     ${NewRandomEmail}

Create random Company Name
    ${RandomCompanyName}      generate random string          3     [NUMBERS]
    set suite variable     ${RandomCompanyName}

Create Random Day
    ${RandomDay}      generate random string          1     [NUMBERS]
    set suite variable     ${RandomDay}

Create Random Month
    ${RandomMonth}      generate random string          1     [NUMBERS]
    set suite variable     ${RandomMonth}

Create Random Year
    ${RandomYear}      generate random string          2     [NUMBERS]
    set suite variable     ${RandomYear}

Create Random First Name
    ${RandomFirst_Name}      generate random string          3     [NUMBERS]
    ${NewRandomFirst_Name}       Catenate    john ${RandomFirst_Name}
    set suite variable     ${NewRandomFirst_Name}

Create Random Last Name
    ${RandomLast_Name}      generate random string          3     [NUMBERS]
    ${NewRandomLast_Name}       Catenate    Wick ${RandomLast_Name}
    set suite variable     ${NewRandomLast_Name}




