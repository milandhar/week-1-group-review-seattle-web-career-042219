## QUESTION 1
require 'pry'

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
  "id": 3,
  "name": "venesaur",
  "base_experience": 50,
  "height": 10,
  "is_default": true,
  "order": 1,
  "weight": 90,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "fire",
              "url": "http://pokeapi.co/api/v2/ability/38/"
          }
      }
  ]
},
{
  "id": 2,
  "name": "pikachu",
  "base_experience": 60,
  "height": 4,
  "is_default": true,
  "order": 1,
  "weight": 37,
  "abilities": [
      {
          "is_hidden": true,
          "slot": 3,
          "ability": {
              "name": "lightning",
              "url": "http://pokeapi.co/api/v2/ability/30/"
          }
      }
  ]
}
]


# How would you get the url for Bulbasaur's ability?
bulbasaur_url = ""
pokemon.each do |pokemon_hash|
  if pokemon_hash[:name] == "bulbasaur"

    pokemon_hash[:abilities][0].each do |attribute, value|

      if attribute == :ability

        bulbasaur_url = value[:url]


      end
    end
  end
end
bulbasaur_url
binding.pry

# How would you return the first pokemon with base experience over 40?
  "Iterate through the array and then use find on the hash to return the experience over 40 "
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
  "Same as above but use select instead of find"
# How would you return an array of all of the pokemon's names?
  "Iterate through the array and then use map to return the name attribute"
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
  "Iterate through the array with each and then use an if-statement to determine whether any weight is greater than 60
  If so, return true, otherwise return false"
#  whatever method you use should return true if there are any such pokemon, false if not.
