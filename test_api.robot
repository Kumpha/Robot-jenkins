*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Test Addition API
    [Documentation]  Test is prime 17
    [Tags]  API
    Create Session  api_session  http://localhost:5002/17  # Adjust the URL based on your API's address and port

    # Test case for prime number 17 
    ${response}  GET On Session  api_session  /is_prime/17
    Should Be Equal As Numbers  ${response.status_code}  ${200}
    ${result}  Set Variable  ${response.json()["result"]}
    Should Be Equal As Numbers  ${result}  True

Test Addition API
    [Documentation]  Test is prime 36
    [Tags]  API
    Create Session  api_session  http://localhost:5002/36  # Adjust the URL based on your API's address and port

    # Test case for prime number 36
    ${response}  GET On Session  api_session  /is_prime/36
    Should Be Equal As Numbers  ${response.status_code}  ${200}
    ${result}  Set Variable  ${response.json()["result"]}
    Should Be Equal As Numbers  ${result}  False
    
Test Addition API
    [Documentation]  Test is prime 13219
    [Tags]  API
    Create Session  api_session  http://localhost:5002/13219  # Adjust the URL based on your API's address and port

    # Test case for prime number 13219
    ${response}  GET On Session  api_session  /is_prime/17
    Should Be Equal As Numbers  ${response.status_code}  ${200}
    ${result}  Set Variable  ${response.json()["result"]}
    Should Be Equal As Numbers  ${result}  True

