*** Settings ***
Resource    ../Locaillized/LoginLocaillized.robot
Resource    ../Repositories/LoginRepository.robot
Resource    ../Variables/LoginVariable.robot

*** Keywords ***
Open Login Page
    Open Application    ${urlLoginPage}    platformName=Android    platformVersion=9.0    deviceName=emu_test_01    appPackage=com.nextzy.sampleappfortest    appActivity=LoginActivity    

Successfully Logged In
    Input Text      ${usernameTextField}   ${username}
    Input Password      ${passwordTextField}    ${password}
    sleep    0.5s   
    Click Element    ${loginButton}

Login With Empty Data
    Click Element    ${loginButton}

Login With Empty Username
    Input Password      ${passwordTextField}    ${password}   
    Click Element    ${loginButton}

Login With Empty Password
    Input Text      ${usernameTextField}   ${username}
    Click Element    ${loginButton}

Login With Wrong Password
    Input Text      ${usernameTextField}   ${username}
    Input Password      ${passwordTextField}    ${wrongPassword}   
    Click Element    ${loginButton}

Agree That I Am Get Wrong Username Or Password
    sleep    1s
    Click Element    ${confirmWrongUsernameOrPasswordButton}

Logout
    sleep    1s
    Click Element    ${logoutButton}

Agree You Logged Out
    sleep    1s
    Click Element    ${confirmLoggedOutButton}

Check Components In Login Page
    sleep    1s
    Element Should Be Visible    ${usernameTextField}
    Element Should Be Visible    ${passwordTextField}
    Element Should Be Visible    ${loginButton}

Check Components In Home Page
    sleep    2s
    Element Should Be Visible    ${welcomeText}
    Element Should Be Visible    ${logoutButton}

Check Components In Logged Out Page
    sleep    1s
    Element Should Contain Text    ${confirmLoggedOutText}    ${loggedOutMessage}
    Element Should Be Visible    ${confirmLoggedOutButton}