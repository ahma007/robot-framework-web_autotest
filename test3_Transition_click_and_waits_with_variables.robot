*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${SITE_URL}    https://www.wildberries.ru
${BROWSER}    safari
${GO_TO_CART_BTN}    (//a[@class="navbar-pc__link j-wba-header-item"])[2]
${GO_TO_MAIN_PAGE_BTN}    //a[text()="Перейти на главную"]


*** Test Cases ***
test3 Transition click and waits with Variables
    Open Browser    url=${SITE_URL}    browser=${BROWSER}
    Maximize Browser Window

    Wait Until Element Is Visible    locator=${GO_TO_CART_BTN}    timeout=10s
    Click Element    locator=${GO_TO_CART_BTN}

    Wait Until Element Is Visible    locator=${GO_TO_MAIN_PAGE_BTN}    timeout=10s
    Click Element    locator=${GO_TO_MAIN_PAGE_BTN}

    Wait Until Page Contains Element    locator=${GO_TO_MAIN_PAGE_BTN}

    Sleep    time_=10s
    Close Browser