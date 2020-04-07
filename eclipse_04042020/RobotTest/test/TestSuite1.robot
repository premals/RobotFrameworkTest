*** Settings ***
Library    SeleniumLibrary   

Suite Setup    Log   I'm inside testsuite setup

*** Test Cases ***
MyFirstTest
    Log    Hello World.    
    
FirstSeleniumTest
    Open Browser    https://www.google.com/    chrome
    Close Browser
    

SampleLoginTest
    [Documentation]    This is the sample loginTest.
    Open Browser      ${URL}    chrome
    Set Browser Implicit Wait    5
    LoginKW 
    Click Element     id=welcome    
    Click Element     link=Logout
    Close Browser
    Log               Test completed      
    Log    This test was executed by %{username} on %{os}    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/
@{CRED}    Admin    admin123
&{CRED1}    password=admin123

*** Keywords ***
LoginKW
    Input Text        id=txtUsername    @{CRED}[0]        
    Input Password    id=txtPassword    &{CRED1}[password]
    Click Button      id=btnLogin


      