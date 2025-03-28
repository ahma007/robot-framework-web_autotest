*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
new2test
    Open Browser    url=https://www.wildberries.ru/    browser=gc

    Wait Until Element Is Visible    locator=//*[@class="nav-element__burger j-menu-burger-btn j-wba-header-item j-nav"]    timeout=10s
    Click Element    locator=//*[@class="nav-element__burger j-menu-burger-btn j-wba-header-item j-nav"]
    
    Wait Until Element Is Visible    locator=//*[@class="menu-burger__main-list-link menu-burger__main-list-link--1235"]    timeout=10s
    Click Element    locator=//*[@class="menu-burger__main-list-link menu-burger__main-list-link--1235"]
   
    Sleep    time_=5s
    Close Browser