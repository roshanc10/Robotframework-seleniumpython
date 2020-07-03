*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my browser
    [Arguments]  ${Siteurl}     ${Browser}
    open browser  ${Siteurl}     ${Browser}
    maximize browser window

Click reg link
    click link  ${link_reg}
Enter first name
    [Arguments]  ${fname}
    input text  ${txt_fn}   ${fname}
Enter last name
    [Arguments]  ${lname}
    input text  ${txt_ln}   ${lname}
Enter phone
    [Arguments]  ${phone}
    input text  ${txt_phone}   ${phone}
Enter email
    [Arguments]  ${email}
    input text  ${txt_email}   ${email}
Enter add1
    [Arguments]  ${add1}
    input text  ${txt_ad1}   ${add1}
Enter add2
    [Arguments]  ${add2}
    input text  ${txt_ad2}   ${add2}
Enter city
    [Arguments]  ${city}
    input text  ${txt_city}   ${city}
Enter state
    [Arguments]  ${state}
    input text  ${txt_state}   ${state}
Enter postcode
    [Arguments]  ${postcode}
    input text  ${txt_postcode}   ${postcode}
Select country
    [Arguments]  ${country}
    select from list by label  ${drp_cnt}   ${country}
Enter User name
    [Arguments]  ${username}
    input text  ${txt_username}   ${username}
Enter Password
    [Arguments]  ${password}
    input text  ${txt_password}   ${password}
Enter cnfPassword
    [Arguments]  ${cnfpassword}
    input text  ${txt_cnfpass}   ${cnfpassword}
Click Submit
    click button  ${btn_submit}

Verify successful reg
    page should contain  Thank you for registering

Close my browsers
    close all browsers