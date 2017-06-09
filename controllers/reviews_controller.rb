class ReviewsController < Sinatra::Base

  # sets root as the parent-directory of the current file
  set :root, File.join(File.dirname(__FILE__), '..')
  
  # sets the view directory correctly
  set :views, Proc.new { File.join(root, "views") } 

  configure :development do
      register Sinatra::Reloader
  end

  get '/' do

      @title = "Blog reviews"

      @reviews = Review.all
  
      erb :'reviews/index'
  
  end

  get '/new'  do   
    erb :"reviews/new" 
  end
    
  get '/:id' do
    
    id = params[:id].to_i

    @review = Review.find id
    
    erb :'reviews/show'
    
  end
    
  post '/' do
    review = Review.new
    review.title = params[:title]
    review.body = params[:body]
    review.description = params[:description]
    review.developer = params[:developer]
    review.game_id = params[:game_id]
    review.price = params[:price]
    review.age_require = [:age_require]
    review.release_date = [:release_date]
    review.save
    redirect "/"
  end
    
  put '/:id'  do
    id = params[:id].to_i
    title = params[:title]
    body = params[:body]
    description = params[:description]
    developer = params[:developer]  
    Review.find_and_update(id, title, body, description)  
    redirect "/"
  end
    
  delete '/:id'  do
    id = params[:id].to_i
    Review.destroy id
    redirect"/"    
  end

    
  get '/:id/edit'  do
    id = params[:id].to_i
    @review = Review.find id
    
    erb :"reviews/edit"
  end


end