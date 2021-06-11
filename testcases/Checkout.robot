*** Settings ***
Documentation    Add product to the chart

Resource        ../keywords/loginPage.robot
Resource        ../keywords/setup.robot
Resource        ../keywords/dashboardPage.robot
Resource        ../keywords/chartPage.robot
Resource        ../keywords/checkoutPage.robot

Suite Setup     Open browsers    ${url}      ${browser}
Suite Teardown    Close browser

*** Variables ***
${url}      https://www.saucedemo.com/
${browser}      chrome
${first}      Test
${last}         Test
${post}         12345

*** Test Cases ***
Go to the chart and validate the page
    Go to the dashboard page
    Add product to the chart
    Validate chart page
    capture page screenshot

do Checkout from the chart page
    Click checkout button
    Insert checkout data    ${first}    ${last}     ${post}
    Click continue button
    capture page screenshot
    Click finish button

