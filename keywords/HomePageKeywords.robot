*** Settings ***

Library    SeleniumLibrary
Resource   commonKeywords.robot


*** Keywords ***
future skill should display home page and display message as "${expected_message}"
    commonKeywords.Wait until page contains element verify text    ${expected_message}

user logout from future skill platfrom
    commonKeywords.Wait until element is ready then click element    xpath=//button[@aria-haspopup="menu"]
    commonKeywords.Wait until element is ready then click element    xpath=//div[contains(text(),"ออกจากระบบ")]