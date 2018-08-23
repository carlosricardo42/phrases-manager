# Facebook Phrases Manager

This is a test for the company Binary Lab.

## Getting Started
To run this application you need to have the next requirements:

* Ruby version: ruby 2.4.1p111

* Rails version: Rails 5.1.6

* A postgres database

### Prerequisites

You need to have intalled git.

```
https://git-scm.com/book/en/v2/Getting-Started-Installing-Git
```

### Installing

To run the app you need clone the  repository: https://github.com/carlosricardo42/phrases_manager.git

The next step is open the terminal  or windos command prompt and go to the folder path of the project.

```
cd phrases_manager
```

run the bundle command

```
bundle or bundle install
```
Before create the database you must modified the secrets.yml and database.yml file

secrets.yml
```
Just change the file extentio of file secrets.yml.bk to secrets.yml
```

database.yml: You need to add the password and user data

```
authentication: &authentication
  username: user
  password: 'password'
```

The next step is create the database

```
rails db:create
```
When the database is created run the migration command

```
rails db:migrate
```

Finally start the Application

```
rails server
```

## Authors

* **Carlos Ricardo Mora Sánchez** - *Initial work* - [carlosricardo42](https://github.com/carlosricardo42)
