*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Open browsers
    [Arguments]     ${url}      ${browser}
    open browser        ${url}      ${browser}

Close browser
    close all browsers