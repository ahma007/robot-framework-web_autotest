*** Settings ***
Library    SeleniumLibrary
Test Setup    Precondition: Open Browser and Maximize
Test Teardown    Postcondition: Close Browser
Test Timeout    15s


*** Variables ***
${SITE_URL}    https://www.wildberries.ru
${BROWSER}    safari
${GO_TO_CART_BTN}    (//a[@class="navbar-pc__link j-wba-header-item"])[2]
${GO_TO_MAIN_PAGE_BTN}    //a[text()="Перейти на главную"]


*** Test Cases ***
test3 Transition click and waits with Variables
    [Documentation]    Открыть корзину и вернуться на главную

    Go to "Basket Page"
    Go to "Main Page"

*** Keywords ***
Go to "Basket Page"
    [Documentation]    Открыть страницу корзины нажав на кнопку корзины на главном экране

    Wait Until Element Is Visible    locator=${GO_TO_CART_BTN}    timeout=10s
    Click Element    locator=${GO_TO_CART_BTN}

Go to "Main Page"
    [Documentation]    Вернуться на главный экран нажав на кнопку "Перейти на главную"

    Wait Until Element Is Visible    locator=${GO_TO_MAIN_PAGE_BTN}    timeout=10s
    Click Element    locator=${GO_TO_MAIN_PAGE_BTN}

    Wait Until Page Contains Element    locator=${GO_TO_MAIN_PAGE_BTN}

Precondition: Open Browser and Maximize
    [Documentation]    Предусловие: открыт браузер на весь экран

    Open Browser    url=${SITE_URL}    browser=${BROWSER}
    Maximize Browser Window

Postcondition: Close Browser
    [Documentation]    Закрыть браузер

    Sleep    time_=10s
    Close Browser
