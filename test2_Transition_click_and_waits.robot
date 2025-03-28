*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
test2 Transition click and waits
    Open Browser    url=https://www.wildberries.ru    browser=safari
    Maximize Browser Window

    Wait Until Element Is Visible    locator=(//a[@class="navbar-pc__link j-wba-header-item"])[2]    timeout=10s
    Click Element    locator=(//a[@class="navbar-pc__link j-wba-header-item"])[2]

    Wait Until Element Is Visible    locator=//a[text()="Перейти на главную"]    timeout=10s
    Click Element    locator=//a[text()="Перейти на главную"]

    Wait Until Page Contains Element    locator=//a[text()="Перейти на главную"]

    Sleep    time_=10s
    Close Browser
    