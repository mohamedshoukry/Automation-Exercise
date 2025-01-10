*** Settings ***
Library     Browser


*** Keywords ***
press link signup/login
    wait for elements state    xpath=//a[normalize-space()='Signup / Login']     visible    4s
    click    xpath=//a[normalize-space()='Signup / Login']