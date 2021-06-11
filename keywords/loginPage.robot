*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${username}     id:user-name
${password}     id:password
${loginbtn}     id:login-button
${name}    standard_user
${pas}     secret_sauce

*** Keywords ***
Input Username
    [Arguments]     ${uname}
    input text      ${username}     ${uname}

Input Password
    [Arguments]     ${pass}
    input text      ${password}     ${pass}

Click login button
    click button    ${loginbtn}

Go to the dashboard page
    Input Username      ${name}
    Input Password      ${pas}
    Click login button

