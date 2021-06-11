*** Settings ***
Documentation    Do some filters in the dashboard page

Resource        ../keywords/loginPage.robot
Resource        ../keywords/setup.robot
Resource        ../keywords/dashboardPage.robot

Suite Setup     Open browsers    ${url}      ${browser}
Suite Teardown    Close browser

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome
${uname}    standard_user
${pass}     secret_sauce

*** Test Cases ***
Do some filters on the dashboard page
    Go to the dashboard page
    Click Drop down filter button Z to A
    Click drop down filter button High to Low
    Click drop down filter button Low to High