*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${Siteurl}     ${Browser}
    open browser  ${Siteurl}     ${Browser}
    maximize browser window

Enter Username
    [Arguments]  ${username}
    input text  ${txt_loginUname}   ${username}
Enter Password
    [Arguments]  ${password}
    input text  ${txt_loginPass}   ${password}

Click Signin
    click button  ${btn_siin}

Verify successful login
    title should be     Find a Flight: Mercury Tours:

Close browsers
    close all browsers