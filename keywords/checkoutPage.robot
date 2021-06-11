*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${firstName}    id:first-name
${lastName}     id:last-name
${postalCode}   id:postal-code
${continueBtn}      id:continue
${finishBtn}    id:finish

*** Keywords ***
Insert checkout data
    [Arguments]     ${first}    ${last}     ${post}
    input text      ${firstName}    ${first}
    input text      ${lastName}     ${last}
    input text      ${postalCode}   ${post}

Click continue button
    click element   ${continueBtn}

Click finish button
    click element   ${finishBtn}