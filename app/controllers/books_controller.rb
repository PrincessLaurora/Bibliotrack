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
          @book = current_user.books.create(:author => params[:author], :title => params[:title])
            if @book.save
          redirect to "/books/#{@book.id}"
          else redirect to "/"
          end
        end
      else
        redirect to "/login"
      end
    end

  get '/books/:id' do
   if logged_in?
     @book = Book.find_by(id: params[:id])
     erb :'books/show'
   else
     redirect to "/login"
   end
 end

 get '/books/:id/edit' do
    if logged_in?
      @book = Book.find_by(id: params[:id])
      if @book && @book.user == current_user
        erb :'books/edit'
      else
        redirect to '/'
      end
    else
      redirect to '/login'
    end
  end

  patch '/books/:id' do
    if logged_in?
      if params[:author] == "" || params[:title] == ""
        redirect to "/books/#{@book.id}/edit"
      else
        @book = Book.find_by(id: params[:id])
          if @book && @book.user == current_user
            if @book.update(:author => params[:author], :title => params[:title])
              redirect to "/books/#{@book.id}"
            else
              redirect to "/books/#{@book.id}/edit"
            end
          else
            redirect to '/'
          end
        end
    else
      redirect to '/login'
    end
  end

  delete '/books/:id/delete' do
    if logged_in?
      @book = Book.find_by(id: params[:id])
      if @book && @book.user == current_user
      @book.delete
      end
      redirect to "/users/:slug"
    else
      redirect to '/login'
    end
  end

end
