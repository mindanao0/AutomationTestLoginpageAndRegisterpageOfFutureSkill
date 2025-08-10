*** Settings ***

Library    SeleniumLibrary
Resource    ../keywords/RegisterPageKeyword.robot
Resource    ../keywords/HomePageKeywords.robot
Variables    ../resources/config/config.yaml
Variables    ../resources/testdata/testdata.yaml
Suite Setup    Open Browser    ${baseUrl}    chrome
Suite Teardown    Close Browser


*** Test Cases ***
As a user, I want to register 
    When user register to future skill platform ${firstname} and ${password} and ${lastname} and ${tel} and ${emailregister}
    Then future skill should display home page and display message as "ระบบได้ส่งรหัส OTP ไปยังเบอร์โทรศัพท์"