*** Settings ***

Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locater}
    Wait Until Keyword Succeeds    5x    2s    Click Element    ${locater}

Wait until element is ready then input text
    [Arguments]    ${locater}    ${text}
    Wait Until Keyword Succeeds    5x    2s    Input Text    ${locater}    ${text}

Wait until page contains element verify text
    [Arguments]    ${expected_text}
    Wait Until Keyword Succeeds    5x    2s    Page Should Contain    ${expected_text}    