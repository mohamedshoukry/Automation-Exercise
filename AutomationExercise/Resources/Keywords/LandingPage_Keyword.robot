*** Settings ***
Resource            ../PO/Registration_PO.robot
Resource            ../Keywords/Comman_Keyword.robot
Resource             ../PO/LandingPage_PO.robot


*** Variables ***

*** Keywords ***
open page signup
    press link signup/login