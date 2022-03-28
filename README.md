# README

## Getting Started with Rails

https://guides.rubyonrails.org/getting_started.html

### 3 Creating a New Rails Project

#### 3.1 Installing Rails

Dependencies

- Ruby
- SQLite3
- Node.js
- Yarn

Installing Rails

`gem install rails`

#### 3.2 Creating the Blog Application

`rails new blog`

`cd blog`

MVC structure

- config\routes.rb: define url routes, `get "{/paths}", to: "{controller_name#method_name}"`
- controller(app\controllers): define controllers, extend `ActionController::Base`
- model(app\models): define models
- view(app\views): define views use `.html.erb` file

### 4 Hello, Rails!

#### 4.1 Starting up the Web Server

`ruby bin\rails server` in Windows

or

`rails s`

#### 4.2 Say "Hello", Rails

- Add a route to routes.rb

`get "/articles", to: "articles#index"`

- Generate `ArticlesController` codes

`rails generate controller Articles index --skip-routes`

this will create the controller and view files

- Add index method in `ArticlesController`

```
class ArticlesController < ApplicationController
  def index
  end
end
```

- Add html code in `app/views/articles/index.html.erb`

`<h1>Hello, Rails!</h1>`

- Start the server and visit the http://localhost:3000 page and see the "Hello, Rails!"
