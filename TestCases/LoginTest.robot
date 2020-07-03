*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}      headlesschrome
${Siteurl}      http://newtours.demoaut.com/
${user}         tutorial
${pwd}          tutorial

*** Test Cases ***
LoginTest
    Open my browser     ${Siteurl}     ${Browser}
    Enter Username      ${user}
    Enter Password      ${pwd}
    Click Signin
    sleep  3
    Verify successful login
    Close browsers




