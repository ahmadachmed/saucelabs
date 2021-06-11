*** Settings ***
Documentation    Login Saucedemo

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
Login Saucedemo
    Input Username          ${uname}
    input password          ${pass}
    click login button
    validate dashboard page
    capture page screenshot
