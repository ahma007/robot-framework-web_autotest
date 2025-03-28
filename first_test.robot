*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
First Test
    Open Browser    url=https://google.com/    browser=safari
    Sleep    time_=5s
    Close Browser
