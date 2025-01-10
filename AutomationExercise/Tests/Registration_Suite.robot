*** Settings ***
Resource            ../Resources/Keywords/Registration_Keyword.robot
Resource            ../Resources/Keywords/LandingPage_Keyword.robot
Resource            ../Resources/Keywords/LoginPage_Keyword.robot



Test Setup      Begin Web Test
Test Teardown       End web Test

*** Test Cases ***
Test Case 1
    [Documentation]    Register with new user
    [Tags]    Regression    P1
    open page signup
    New User Signup
    Enter Account Information
    Enter Address Information
    Assert Account create and log out





