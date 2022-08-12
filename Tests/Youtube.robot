*** Settings ***
Documentation    This is a test suite about Youtube link sharing
Resource     ../Resources/YoutubeShare.robot
Resource     ../Resources/Common.robot
Test Setup  Open the browser
Test Teardown   Close the browser


*** Variables ***
${browser}  chrome
${url}  https://www.google.com/
${YoutubePage}  https://www.youtube.com/watch?v=zIePW7DrcD0
${Video_Title}  ProctorExam demo for candidates
${Accept_Cookies_Button}  xpath=//*[@id="content"]/div[2]/div[6]/div[1]/ytd-button-renderer[2]/a
${Share_Button}  xpath=//*[@id="top-level-buttons-computed"]/ytd-button-renderer[1]/a
${Copy_Button}  xpath=//*[@id="copy-button"]/a
${dialog}       xpath=//tp-yt-paper-dialog


*** Test Cases ***
User should be able to share Youtube video link
    [Documentation]    This test is about Youtube link sharing
    When User goes to Youtube link
    And User accepts cookies
    And User clicks on share button
    And User copies the Youtube link
    Then User pastes the link on the browser




