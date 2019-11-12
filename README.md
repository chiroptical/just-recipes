Just Recipes (Work in Progress)
---

This project is an attempt to remove the flair from most recipe
websites. The following features are planned to be added:

- main page: similar to reddit for browsing newly posted recipes
- entry form: a page to input new recipes
- profile page: page for browsing saved recipes
- search: ability to search for recipes

## Project Goals

One should be able to deploy this for themselves on any Linux server.

## Choices

- Haskell (via `stack`, see [Haskell Setup](#haskell-setup))
- Yesod
- PostgreSQL (see [Database Setup](#database-setup))

## Routes

- GET `/`: Browsing others recipes
  - Similar to reddit

- GET `/home`: View your _starred_ recipes
  - Organization is key

- GET `/recipe/:id`: View a recipe
- GET `/recipe`: Form to create a recipe
- POST `/recipe`: Create recipe

- GET `/login`: Login form
- POST `/login`: Login

## Database Setup

I set this up on Pop!\_OS 19.10

Install postgres

```
sudo apt install postgresql libpq-dev
```

From `postgres` (`sudo su - postgres`) user:

Enter `psql` REPL,

```
create user justrecipes with password 'justrecipes';
create database justrecipes;
create database justrecipes_test;
grant all privileges on database justrecipes to justrecipes;
grant all privileges on database justrecipes_test to justrecipes;
exit
```

## Haskell Setup

1. If you haven't already, [install Stack](https://haskell-lang.org/get-started)
	* On POSIX systems, this is usually `curl -sSL https://get.haskellstack.org/ | sh`
2. Build libraries: `stack build`
3. Run website: `stack run`

## Development Server

Start a hot-reload development server with:

```
stack exec -- yesod devel
```

## Tests

```
stack test
```
