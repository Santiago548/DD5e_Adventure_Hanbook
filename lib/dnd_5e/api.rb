class API
  
  def self.fetch_klasses
    url = "https://www.dnd5eapi.co/api/classes/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    k = JSON.parse(response)
    #binding.pry
    k["results"].map { |k| k["index"]}
  end
  

   def self.fetch_klass(klass)
    url = "https://www.dnd5eapi.co/api/classes/#{klass}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    k = JSON.parse(response)
    if klass == 'monk'
       new_klass = Klass.new(name: k["name"], hit_die: k["hit_die"], proficiencies: k["proficiencies"], saving_throws: k["saving_throws"], subclasses: k["subclasses"], skills: k["proficiency_choices"][2]["from"], klass: klass)
    else
      new_klass = Klass.new(name: k["name"], hit_die: k["hit_die"], proficiencies: k["proficiencies"], saving_throws: k["saving_throws"], subclasses: k["subclasses"], skills: k["proficiency_choices"][0]["from"], klass: klass)
    end
  end

#next update fetches for version 2.0 

# EQUIPMENT CATEGORIES
def self.fetch_equipment_categories
  url = "https://www.dnd5eapi.co/api/equipment-categories"
  uri = URI(url)
  response = Net::HTTP.get(uri)
  equipment_category = JSON.parse(response)
  #binding.pry
  ability["results"].map { |eqc| eqc["index"]}
end

  # ability
  def self.fetch_abilitys
    url = "https://www.dnd5eapi.co/api/ability-scores/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    ability = JSON.parse(response)
    #binding.pry
    ability["results"].map { |ability| ability["index"]}
  end

  # skills
  def self.fetch_skills
    url = "https://www.dnd5eapi.co/api/skills/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    ability = JSON.parse(response)
    #binding.pry
    skills["results"].map { |skills| skills["index"]}
  end

  # skills
  def self.fetch_languages
    url = "https://www.dnd5eapi.co/api/languages/"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    ability = JSON.parse(response)
    #binding.pry
    ability["results"].map { |ability| ability["index"]}
  end
end