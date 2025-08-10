*** Settings ***

Library     SeleniumLibrary
Resource    commonKeywords.robot

*** Keywords ***
user login to future skill platform with ${username} and ${password}
    commonKeywords.Wait until element is ready then click element    xpath=//button[text()="เข้าสู่ระบบ"]
    commonKeywords.Wait until element is ready then input text       name=email        ${username}
    commonKeywords.Wait until element is ready then input text       name=password     ${password}
    commonKeywords.Wait until element is ready then click element    xpath=//button[@type="submit" and text()="เข้าสู่ระบบ"]

Future skill should display display validate login fail message as "${expected_message}"
    commonKeywords.Wait until page contains element verify text    ${expected_message}