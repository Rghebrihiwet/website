class Review
    attr_accessor :game_id, :price, :title, :age_require, :release_date, :description, :developer

    def self.open_connection
        PG.connect(dbname: "gremlins")
    end

    def self.hydrate review_data
    review = self.new
    review.game_id = review_data['game_id']
    review.price = review_data['price']
    review.title = review_data['title']
    review.age_require = review_data['age_require']
    review.release_date = review_data['release_date']
    review.description = review_data['description']
    review.developer = review_data['developer']

    review
    end

    # INDEX
    def self.all
        conn = self.open_connection

    reviews = results.map do |tuple| 
        self.hydrate tuple
    end
    reviews

    end

    def self.find id
        conn = self.open_connection
   

        self.hydrate results.first
    end

    def save
        conn = Review.open_connection
    conn.exec(sql)
    end

    def update


  def self.find_and_update game_id, price, title, age_require, release_date, description, developer, 

  end

  def self.destroy id

  end

end