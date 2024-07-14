
# README

  Welcome to my technical challenge!

To be able to get the application running you have to, get to the folder of the project and follow certain steps:

* `bundle install` - to install all the gems that are part of the project as the Faker Gem
* `db:create` - to create the database in your machine
* `db:migrate` - to run the migrations of the database
* `rails:seed` - to populate the database
* `rails s` - to launch the server

Then you have three endpoints:

* the show of the user, that you can access with a method GET and `localhost:3000/users/:id`
* the update of the user, that you can access with a method PATCH and `localhost:3000/users/:id`
	* here you can use a body like:
```
{
  name: "Madalena",
  surname: "Pinto",
  phone_number: "+351964890861",
  email: "madalena@gmail.com",
  balance: "5.50"
}
```
* the update of the transaction, that you can access with a method PATCH and `localhost:3000/transactions/:id`
	* here you don't need a body, the operation will be executed
