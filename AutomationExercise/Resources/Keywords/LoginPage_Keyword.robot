*** Settings ***
Resource            ../Keywords/Comman_Keyword.robot
Resource             ../PO/LoginPage_PO.robot


*** Variables ***

*** Keywords ***
New User Signup
    Create Random First Name
    Create random Email
    Enter Name_Login      ${NewRandomFirst_Name}
    Enter Email_Login     ${NewRandomEmail}
    Press button Signup_Login