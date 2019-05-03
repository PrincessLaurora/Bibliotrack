class BooksController < ApplicationController

  get '/books/new' do
    if logged_in?
      erb :'books/new'
    else
      redirect to '/login'
    end
  end

  post '/books' do
    if logged_in?
        if params[:author] == "" || params[:title] == ""
          redirect to '/books/new'
        else
        @book = current_user.books.create(author: params[:author], title: params[:title])
        if @book.save
          redirect to "/books/#{@book.id}"
          else redirect to "/"
          end
        end
      else
        redirect to "/login"
      end
    end


end
