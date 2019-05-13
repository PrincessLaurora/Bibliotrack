# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app - Sinatra gem installed, class ApplicationController < Sinatra::Base set up.
- [x] Use ActiveRecord for storing information in a database - ActiveRecord::Base.establish_connection in environment.rb, created a rakefile, setup a database and run migrations.
- [x] Include more than one model class (e.g. User, Post, Category) - User.rb & Book.rb
- [x] Include at least one has_many relationship on your User model (e.g. User has_many Posts) - User has_many :books
- [x] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User) - Book belongs_to a :user
- [x] Include user accounts with unique login attribute (username or email) - By signing up a user create an account with a username, email and password . Once the user is saved it can be persisted from the database. To successfully login the correct user need to be found by the username, then the validation of the password match is obtained by using the method "authenticate" inside post /login). Once the user authenticates, the :id key in the session hash is set equal to the user ID.
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying - I have created the following routes: get '/books/new' and post '/books' for Creating; get '/books/:id' for Reading; get '/books/:id/edit' and patch '/books/:id' for Updating; get '/books/:id' and delete '/books/:id/delete' for Destroying.
- [x] Ensure that users can't modify content created by other users - I have used the current_user helper method in both controllers routes so no one can access another user's content.
- [x] Include user input validations - The forms allow you to submit content by pressing the buttons created in the views (ex: <input type="submit" class="btn btn-info" value="Add">)
- [x] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new) - I have added flash messages in post '/signup" and post '/login' to notify not to leave any blanks field in order to signup or to warn about an incorrect login.
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code - Yes, it does.

Confirm
- [x] You have a large number of small Git commits - confirmed
- [x] Your commit messages are meaningful - confirmed
- [x] You made the changes in a commit that relate to the commit message - confirmed
- [x] You don't include changes in a commit that aren't related to the commit message - confirmed
