# Capstone Project - Currensee Crypto Price Tracker

#### By [Quentin Bartholomew](https://bartholomewwebsolutions.netlify.app/) & [Max Said](https://max-said.netlify.app/)

## Project Summary

Currensee is a database for users to create an account add crypto currencies to their wishlist to keep track of pricing. 

## Models

User:
- Username
- Password

Coin:
- Token

## Route Table

| URL | Method | Action |
|-----|--------|--------|
| /login | Post | Log in user|
| /auto_login | Get | Logs in a user automatically if JWT token is present|
| /coins | Post | Add a new token/currency for a specific user (create)|
| /coins/:id | Put | Update a token/currency for a specific user (update)|
| /coins/:id | Delete | Delete a token/currency for a specific user (delete)|


## User Stories

- A user should be able to login to their account
- If a user has an active JWT token, they should be automatically logged in without having to provide their credentials again
- A user should be able to add a token to their list
- A user should be able to edit a token within their own list
- A user should be able to delete a token on their own list

## List of Technologies

- Ruby

- HTML
