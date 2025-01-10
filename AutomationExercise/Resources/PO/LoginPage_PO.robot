*** Settings ***
Library     Browser


*** Keywords ***
Enter Name_Login
    [Arguments]    ${Name}
    wait for elements state    xpath=(//input[@placeholder='Name'])[1]      visible     3s
    fill text    xpath=(//input[@placeholder='Name'])[1]     ${Name}

Enter Email_Login
    [Arguments]    ${Email}
    wait for elements state    xpath=(//input[@data-qa='signup-email'])[1]      visible     3s
    fill text    xpath=(//input[@data-qa='signup-email'])[1]    ${Email}

Press button Signup_Login
    wait for elements state    xpath=(//button[normalize-space()='Signup'])[1]      visible     3s
    click    xpath=(//button[normalize-space()='Signup'])[1]





