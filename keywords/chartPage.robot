*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${addToChart}       id:add-to-cart-sauce-labs-backpack
${chart}        id:shopping_cart_container
${backpack}     id:item_4_title_link
${checkoutBtn}      id:checkout

*** Keywords ***
Add product to the chart
    click element    ${addToChart}
    click element    ${chart}

Validate chart page
    page should contain element     ${backpack}

Click checkout button
    click element   ${checkoutBtn}