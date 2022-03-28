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

#### 6.1 Generating a Model

`rails generate model Article title:string body:text`

#### 6.2 Database Migrations

`rails db:migrate`

#### 6.3 Using a Model to Interact with the Database

launch the console

`rails console` or `rails c`

create an `Article` object

`article = Article.new(title: "Hello Rails", body: "I am on Rails!")`

save the new object

`article.save`

print the `article`

```
>article
=> #<Article id: 1, title: "Hello Rails", body: "I am on Rails!", created_at: "2020-01-18 23:47:30", updated_at: "2020-01-18 23:47:30">
```

find by id

`Article.find(1)`

get all

`Article.all`

#### 6.4 Showing a List of Articles

get all articles in controller

```
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
end
```

show article list in html
The `<% %>` tag means "evaluate the enclosed Ruby code."
The `<%= %>` tag means "evaluate the enclosed Ruby code, and output the value it returns."

```
<h1>Articles</h1>

<ul>
  <% @articles.each do |article| %>
    <li>
      <%= article.title %>
    </li>
  <% end %>
</ul>
```

#### 7.1 Showing a Single Article

show by id

routes: `get "/articles/:id", to: "articles#show"`

add show method in controller:

```
  def show
    @article = Article.find(params[:id])
  end
```

add show page: `app/views/articles/show.html.erb`

```
<h1><%= @article.title %></h1>

<p><%= @article.body %></p>
```
