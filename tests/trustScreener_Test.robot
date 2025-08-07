*** Settings ***
Documentation     E2E Test: Navigate to AJ Bell TrustScreener Page and verify functionality
Library           Browser
Resource          ../resources/trustScreener_keywords.robot
Resource          ../variables/common_variables.robot
Suite Setup       Open AJ Bell Website
Suite Teardown    Close The Browser

*** Test Cases ***

Verify Functionality Of AJ Bell Trust Screener
    [Documentation]    Verifies record count, applies and removes Morningstar filter
    Check Number of Records
    Open Advanced Filter Panel
    Apply Morningstar Filter
    Remove Morningstar Filter With Value

