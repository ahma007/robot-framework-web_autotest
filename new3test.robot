*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SITE_URL}    https://www.wildberries.ru/
${BROWSER_1}    gc
${BROWSER_2}    safari
${GO_TO_CART_BTN}    (//a[@class="navbar-pc__link j-wba-header-item"])[2]
${GO_TO_MAIN_PAGE_BTN_1}    //*[@class="basket-empty__btn btn-main"]
${GO_TO_MAIN_PAGE_BTN_2}    //a[text()="Перейти на главную"]


*** Test Cases ***
new3test
    Open Browser    url=${SITE_URL}    browser=${BROWSER_1}

    Wait Until Element Is Visible    locator=${GO_TO_CART_BTN}    timeout=10s
    Click Element    locator=${GO_TO_CART_BTN}
    
    Wait Until Element Is Visible    locator=${GO_TO_MAIN_PAGE_BTN_1}    timeout=10s
    Click Element    locator=${GO_TO_MAIN_PAGE_BTN_1}
   
    Sleep    time_=5s
    Close Browser

    Open Browser    url=${SITE_URL}    browser=${BROWSER_2}
    Maximize Browser Window

    Wait Until Element Is Visible    locator=${GO_TO_CART_BTN}    timeout=10s
    Click Element    locator=${GO_TO_CART_BTN}

    Wait Until Element Is Visible    locator=${GO_TO_MAIN_PAGE_BTN_2}    timeout=10s
    Click Element    locator=${GO_TO_MAIN_PAGE_BTN_2}

    Wait Until Page Contains Element    locator=${GO_TO_MAIN_PAGE_BTN_2}

    Sleep    time_=10s
    Close Browser