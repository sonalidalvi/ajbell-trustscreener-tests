*** Variables ***

${BASE_URL}                      https://www.ajbell.co.uk/market-research/screener/trusts
${ISA_PAGE_TITLE}                Investment trust screener
${COOKIE_ACCEPT_BUTTON}          data-testid=cookieConsentAcceptAll
${Records}                       text=Showing 365 results
${NumberOfRows}                  365
${Advanced_Search_Button}        role=button[name="Advanced Filters"]
${MORNINGSTAR_RATING_DROPDOWN}   role=combobox[name="Morningstar Rating"]
${CHECKBOX_1}                    css=input[aria-label="1 check box"]
${RATING_LABEL_1}                xpath=//label[contains(., '1')]
${SAVE_BUTTON}                   css=button[data-testid="button-component"] >> text=Save
${MORNINGSTAR_RATING_PAGE}       xpath=//label[contains(text(), 'Morningstar Rating')]
${MORNINGSTAR_RATING_RECORDS}    29
${MORNINGSTAR_RECORDS_MESSAGE}   xpath=//p[contains(text(), 'Showing 29 results')]    # For value 1