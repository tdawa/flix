module MoviesHelper
  def format_total_gross(movie)
    if movie.flop?
      content_tag(:strong, 'Flop!')
    else
      number_to_currency(movie.total_gross)
    end
  end

  def image_for(movie)
    if movie.image_file_name.blank?
      image_tag('placeholder.png')
    else
      image_tag(movie.image_file_name, width: 90, height: 134)
    end
  end
  
  def options_for_rating
    ['G', 'PG', 'PG-13', 'R', 'NC-17']
  end
  
  def format_average_stars(movie)
    if movie.average_stars.nil?
      content_tag(:strong, "No reviews!")
    else
      # pluralize(number_with_precision(movie.average_stars, precision: 1) , 'star')
      "*" * movie.average_stars.round
    end
  end
  
end
