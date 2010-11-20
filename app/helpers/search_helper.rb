module SearchHelper

  def city_autocompleter
    cities = City.where("offices_count > 0").collect(&:name)
    
    javascript_tag <<-EOS
      window.onload = function() {
        var city_names = #{cities.to_json};
        new Autocompleter.Local(
          'location',
          'autoCompleteMenu',
          city_names, {
            delay: 50,
            frequency: 50
          }
        );
      }
    EOS
  end

end