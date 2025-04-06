*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
new2test
    Open Browser    url=https://www.wildberries.ru/    browser=gc

    Wait Until Element Is Visible    locator=(//*[@class="navbar-pc__link j-wba-header-item"])[2]    timeout=10s
    Click Element    locator=(//*[@class="navbar-pc__link j-wba-header-item"])[2]
    
    Wait Until Element Is Visible    locator=//*[@class="basket-empty__btn btn-main"]    timeout=10s
    Click Element    locator=//*[@class="basket-empty__btn btn-main"]
   
    Sleep    time_=5s
    Close Browser