*** Settings ***
Library     ../Lib/site-packages/SeleniumLibrary/
Library     BuiltIn
Library    ../CustomLibraries/Hello.py
Library    OperatingSystem
Resource    ../PageObject/KeywordDefinitions/SouceDemoLoginKeywords.robot

*** Variables ***
@{productlist}  Sauce Labs Bike Light   Sauce Labs Fleece Jacket

*** Test Cases ***
Verify login functionality
    [Documentation]    This testcase will verify user is able to login in the app
    [Tags]  smoke
    [Setup]     Input UserName    standard_user
    Input password1    secret_sauce
    Click on login button

Add proudct cart
    Add Product By Name    ${productlist}

Verify cart items
    ${cartCount}=   Get Text    xpath://*[@class='shopping_cart_badge']
    Should Be Equal As Numbers      ${cartCount}    2
Click on cart
    Click Element       class:shopping_cart_badge

Verify total of price from the cart
    verify total of price   class:inventory_item_price


        
    
    
    