*** Settings ***
Library    SeleniumLibrary
Library    RPA.Desktop


*** Keywords ***
User goes to Youtube link
    Go to  ${YoutubePage}

User accepts cookies
    Wait Until Element Is Visible  ${Accept_Cookies_Button}
    Click Element  ${Accept_Cookies_Button}
    Wait Until Page Contains  ${Video_Title}

User clicks on share button
    Wait Until Element Is Enabled  ${Share_Button}
    Click Element  ${Share_Button}
    Element Should Be Visible  ${dialog}

User copies the Youtube link
    Wait Until Element Is Enabled  ${Copy_Button}
    Click Element  ${Copy_Button}

User pastes the link on the browser
    ${text}=  Get clipboard value
    Log    Copied text: ${text}
    Execute Javascript    window.open(arguments[0]);  ARGUMENTS   ${text}
    Wait Until Page Contains  ${Video_Title}
