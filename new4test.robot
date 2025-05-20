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
new4test
    [Documentation]    Открыть корзину и вернуться на главную на разных браузерах

    Open browser gc and site
    Go to "Basket Page" in gc   
    Go to "Main Page" in gc
    Close browser gc
    Open browser safari and site
    Go to "Basket Page" in safari
    Go to "Main Page" in safari
    Close browser safari

*** Keywords ***
Open browser gc and site
    [Documentation]    Открыть сайт в браузере Хром

    Open Browser    url=${SITE_URL}    browser=${BROWSER_1}

Go to "Basket Page" in gc
    [Documentation]    Открыть страницу корзины нажав на кнопку корзины на главном экране

    Wait Until Element Is Visible    locator=${GO_TO_CART_BTN}    timeout=10s
    Click Element    locator=${GO_TO_CART_BTN}

Go to "Main Page" in gc
    [Documentation]    Вернуться на главный экран нажав на кнопку "Перейти на главную"

    Wait Until Element Is Visible    locator=${GO_TO_MAIN_PAGE_BTN_1}    timeout=10s
    Click Element    locator=${GO_TO_MAIN_PAGE_BTN_1}

Close browser gc
    [Documentation]    Закрыть сайт и браузер

    Sleep    time_=10s
    Close Browser

Open browser safari and site
    [Documentation]    Открыть сайт в браузере сафари

    Open Browser    url=${SITE_URL}    browser=${BROWSER_2}
    Maximize Browser Window

Go to "Basket Page" in safari
    [Documentation]    Открыть страницу корзины нажав на кнопку корзины на главном экране

    Wait Until Element Is Visible    locator=${GO_TO_CART_BTN}    timeout=10s
    Click Element    locator=${GO_TO_CART_BTN}

Go to "Main Page" in safari
    [Documentation]    Вернуться на главный экран нажав на кнопку "Перейти на главную"

    Wait Until Element Is Visible    locator=${GO_TO_MAIN_PAGE_BTN_2}    timeout=10s
    Click Element    locator=${GO_TO_MAIN_PAGE_BTN_2}

    Wait Until Page Contains Element    locator=${GO_TO_MAIN_PAGE_BTN_2}

Close browser safari
    [Documentation]    Закрыть сайт и браузер

    Sleep    time_=10s
    Close Browser