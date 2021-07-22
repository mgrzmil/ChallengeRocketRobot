*** Settings ***
library   SeleniumLibrary

*** Variables ***
${browser}   Firefox
${page}   https://challengerocket.com/
${username}   %{ROBOT_USERNAME}
${password}   %{ROBOT_PASSWORD}
${selektorLoginButton}   css:.menu__link_login
${selektorLogin}   id:loginEmail
${selektorpassword}   id:loginPassword
${selektorModelXButton}   css:.modal-panel__close


*** Test Cases ***
Test 1 Login
  Run browser
  Open ChallengeRocket page
  Click login button
  Enter login and password
  Quit browser


*** Keywords ***
Run browser
  Open browser   about:blank   ${browser}
Open ChallengeRocket page
  Go to   ${page}
  Click element   ${selektorModelXButton}
  Sleep   1
Click login button
  Click element   ${selektorLoginButton}
Enter login and password
  Input Text   ${selektorLogin}   ${username}
  Input Text   ${selektorpassword}   ${password}
  Press Keys   None   RETURN
  Sleep   3
Quit browser
  Close browser
