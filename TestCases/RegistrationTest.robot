*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}      headlesschrome
${Siteurl}      http://newtours.demoaut.com/
#${user}         tutorial
#${pwd}          tutorial

*** Test Cases ***
LoginTest
    Open my browser     ${Siteurl}     ${Browser}
    Click reg link
    Enter first name        david
    Enter last name         john
    Enter phone             12345
    Enter email             gg@gmail.com
    Enter add1              Toranado
    Enter add2              Canada
    Enter city              Pune
    Enter state             MH
    Enter postcode          56987E
    Select country          CANADA
    Enter User name         jonny
    Enter Password          jonny
    Enter cnfPassword       jonny
    Click Submit
    Verify successful reg
    Close my browsers

