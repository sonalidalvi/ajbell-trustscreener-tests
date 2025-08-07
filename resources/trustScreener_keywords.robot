*** Settings ***
Library           Browser
Resource          ../variables/common_variables.robot

*** Keywords ***
Handle Cookie Banner If Present
    Wait For Elements State    ${COOKIE_ACCEPT_BUTTON}    visible    timeout=5s
    Click                     ${COOKIE_ACCEPT_BUTTON}

Open AJ Bell Website
    New Browser               headless=false
    New Page                  ${BASE_URL}
    Wait For Elements State   text=Login    visible    timeout=10s
    Handle Cookie Banner If Present

Check Number of Records
    Wait For Elements State   ${Records}    visible    timeout=10s
    Should Be True            ${NumberOfRows} > 300    msg=Found ${NumberOfRows} records on the page

Open Advanced Filter Panel
    Click                     ${Advanced_Search_Button}
    Wait For Elements State   xpath=//label[contains(text(), 'Morningstar Rating')]    visible

Apply Morningstar Filter
    Click                     ${MORNINGSTAR_RATING_DROPDOWN}         # Open the dropdown
    ${states}=                Get Element States    ${CHECKBOX_1}    # Inspect checkbox state (usually hidden)
    Log                       ${states}
    Wait For Elements State   ${RATING_LABEL_1}      visible    timeout=5s    # Wait for label to appear
    Scroll To Element         ${RATING_LABEL_1}
    Click                     ${RATING_LABEL_1}                       # Click label (linked to hidden checkbox)
    Click                     ${SAVE_BUTTON}                         # Save the filter
    Take Screenshot
    Wait For Elements State   xpath=//p[contains(text(), 'Showing 29 results')]    visible    timeout=10s
    Take Screenshot

Remove Morningstar Filter With Value
    Click                     ${MORNINGSTAR_RATING_DROPDOWN}  # Open the dropdown again
    Wait For Elements State   ${RATING_LABEL_1}    visible    timeout=5s  # Wait until it's visible
    Scroll To Element         ${RATING_LABEL_1}
    Click                     ${RATING_LABEL_1}  # Click to uncheck the filter
    Click                     ${SAVE_BUTTON}  # Save the filter
    Take Screenshot
    #Verify total number of records in the table returns to the original count
    Should Be True            ${NumberOfRows} > 300    msg=Found ${NumberOfRows} records on the page   
    Wait For Elements State   xpath=//p[contains(text(), 'Showing 365 results')]    visible    timeout=10s

Close The Browser
    Close Browser
