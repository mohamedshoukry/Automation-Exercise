*** Settings ***
Resource            ../PO/Registration_PO.robot
Resource            ../Keywords/Comman_Keyword.robot


*** Variables ***

*** Keywords ***
Enter Account Information
    Create Random Day
    Create Random Month
    Create Random Year
    Enter Title_Registration
    Enter Password_Registration      P@ssw0rd1234
    Enter Birth Date day      ${RandomDay}
    Enter Birth Date Month    ${RandomMonth}
    Enter Birth Date Year     ${RandomYear}
    Press Check Box Sign up for our newsletter!
    Press Check Box Receive special offers from our partners!

Enter Address Information
    Create Random Last Name
    Create random Company Name
    Create random Edit phone number
    Enter First Name_Registration     ${NewRandomFirst_Name}
    Enter Last Name_Registration      ${NewRandomLast_Name}
    Enter Company Name_Registration   ${RandomCompanyName}
    Enter address 1_Registration      20 Cooper Square
    Enter Address 2_Registration      721 Broadway
    Choose Country_Registration
    Enter State_Registration     Florida
    Enter City_Registration      Cocoa Beach
    Enter zipcode_Registration    32003
    Enter Mobile Number_Registration    ${Editphone_number}
    Press Button Create Account

Assert Account create and log out
    check message create account display
    press button continue
    press button logout
































