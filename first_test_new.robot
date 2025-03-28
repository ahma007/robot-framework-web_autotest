*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
New First Case
    Open Browser    url=https://wildberries.ru/    browser=gc
    Sleep    time_=5s
    Close Browser
New Case
    Open Browser    url=https://wikipedia.org/    browser=safari
    Sleep    time_=10s
    Close Browser