class Movie < ActiveRecord::Base
    def self.create_with_title(title)
        Movie.create(title: title)
        # movie = Movie.new(title: title)
        # movie.save **to add to db
        # movie **to return movie
    end

    def self.first_movie
        self.first
    end

    def self.last_movie
        self.last
    end

    def self.movie_count
        Movie.count
    end

    def self.find_movie_with_id(id)
        Movie.find(id)
    end

    def self.find_movie_with_attributes(attributes)
        self.find_by(attributes)
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002")
    end

    def update_with_attributes(attr)
        self.update(attr)
    end

    def self.update_all_titles(title)
        Movie.update(title: title)
    end

    def self.delete_by_id(id)
        self.destroy(id)
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end