*** Settings ***
Library           SeleniumLibrary
*** Variable ***
${URL}     https://www.amazon.in/
${BROWSER}      chrome
${search_bar}    //input[@id='twotabsearchtextbox']
${input_text}     mobile
${search_button}  //input[@id='nav-search-submit-button']

*** Keywords ***
open browser with URL
    [Arguments]     ${URL}      ${BROWSER}
    Open Browser    ${URL}      ${BROWSER}

set input on text box
    [Arguments]     ${xpath}    ${text}
    Input Text      ${xpath}    ${text}

push button
    [Arguments]     ${button}
    Click Button    ${button}

*** Test Cases ***
perform amazon search
    open browser with URL   ${URL}  ${BROWSER}
    sleep   1s
    maximize browser window
    set input on text box   ${search_bar}  ${input_text}
    sleep   1s
    push button             ${search_button}
    sleep   5s
    close Browser