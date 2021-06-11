*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${filter}     css:.product_sort_container
${brgermenu}    id:react-burger-menu-btn

*** Keywords ***

Validate dashboard page
    page should contain button      ${brgermenu}

Click drop down filter button Z to A
    select from list by value   ${filter}     za

Click drop down filter button Low to High
    select from list by value   ${filter}     lohi

Click drop down filter button High to Low
    select from list by value   ${filter}     hilo


