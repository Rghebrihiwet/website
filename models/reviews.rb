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
        sql = "SELECT game_id,price,title,age_require,release_date,description,developer FROM games ORDER BY game_id"
        results = conn.exec(sql)

    reviews = results.map do |tuple| 
        self.hydrate tuple
    end
    reviews

    end

    def self.find id
        conn = self.open_connection
        sql = "SELECT game_id, price, title, age_require, release_date, description, developer FROM games WHERE game_id = #{game_id}"
        results = conn.exec(sql)

        self.hydrate results.first
    end

    def save
        conn = Review.open_connection
        sql = "INSERT INTO review ( game_id, price, title, age_require, release_date, description, developer) VALUES ( '#{self.game_id}', '#{self.price}', '#{self.title}', '#{self.age_require}', '#{self.release_date}', '#{self.description}','#{self.developer}' )"
        conn.exec(sql)
    end

    def update
        conn = Review.open_connection
        sql = "UPDATE review SET game_id='#{self.game_id}', price='#{self.price}', age_require='#{self.age_require}'' , title='#{self.title}' , price='#{self. price}' , game_id='#{self.game_id}' , description='#{self.description}' WHERE game_id='#{self.game_id}' "
        conn.exec(sql)
    end

  def self.find_and_update game_id, price, title, age_require, release_date, description, developer, 
      conn = self.open_connection
      sql = "UPDATE review SET game_id='#{game_id}', price='#{price}', age_require='#{age_require}', title='#{title}', release_date='#{release_date}', description='#{description}', developer='#{developer}' WHERE game_id=#{game_id}"
      results = conn.exec(sql)
  end

  def self.destroy id
      conn = self.open_connection
      sql = "DELETE FROM review WHERE game_id = #{game_id}"
      conn.exec(sql)
  end

end