*** Settings ***
Library    AppiumLibrary
Resource    ../Resource/Keywords/LoginKeywords.robot

*** Test Cases ***
Check Components In Login Page
    Open Login Page
    Check Components In Login Page
    [Teardown]    Close Application

Successfully Logged In
    Open Login Page
    Successfully Logged In
    [Teardown]    Close Application

Login With Empty Data
    Open Login Page
    Login With Empty Data
    [Teardown]    Close Application

Login With Empty Password
    Open Login Page
    Login With Empty Password
    [Teardown]    Close Application

Login With Empty Username
    Open Login Page
    Login With Empty Username
    [Teardown]    Close Application

Login With Wrong Username or Password 
    Open Login Page
    Login With Wrong Password
    [Teardown]    Close Application

Login With Wrong Password or Password Then Agree You Get Wrong
    Open Login Page
    Login With Wrong Password
    Agree That I Am Get Wrong Username Or Password
    [Teardown]    Close Application

Check Components In Home Page
    Open Login Page
    Successfully Logged In
    Check Components In Home Page
    [Teardown]    Close Application

Click Logout Button
    Open Login Page
    Successfully Logged In
    Logout
    [Teardown]    Close Application

Check Components In Logged Out Page
    Open Login Page
    Successfully Logged In
    Logout
    Check Components In Logged Out Page
    [Teardown]    Close Application

Confirm Logged Out
    Open Login Page
    Successfully Logged In
    Logout
    Agree You Logged Out
    [Teardown]    Close Application

