*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Open the browser
    Open Browser  ${url}  ${browser}

Close the browser
    Close Browser
