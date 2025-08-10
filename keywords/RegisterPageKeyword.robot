*** Settings ***

Library    SeleniumLibrary
Resource   commonKeywords.robot

*** Keywords ***
user register to future skill platform ${firstname} and ${password} and ${lastname} and ${tel} and ${emailregister}
    commonKeywords.Wait until element is ready then click element    xpath=//button[text()="สมัครสมาชิก"]
    commonKeywords.Wait until element is ready then input text       name=email    ${emailregister}
    commonKeywords.Wait until element is ready then input text       name=firstName                                  ${firstname}
    commonKeywords.Wait until element is ready then input text       name=lastName                                   ${lastname}
    commonKeywords.Wait until element is ready then input text       name=phoneNumber                                ${tel}
    commonKeywords.Wait until element is ready then input text       xpath=//input[@placeholder='รหัสผ่าน']         ${password}
    commonKeywords.Wait until element is ready then input text       xpath=//input[@placeholder='ยืนยันรหัสผ่าน']   ${password}
    commonKeywords.Wait until element is ready then click element    xpath=//input[@type="checkbox"]
    commonKeywords.Wait until element is ready then click element    xpath=//button[@type="submit" and text()="สมัครสมาชิก"]