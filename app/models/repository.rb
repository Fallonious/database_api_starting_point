class Repository < ActiveRecord::Base
  def self.create_from_api(username, hash)
    Repository.create(body: hash,
                      name: hash["name"],
                      url: hash["url"],
                      number_of_forks: hash["forks_count"],
                      number_of_stars: hash["stargazers_count"],
                      changed_at: hash["updated_at"],
                      language: hash["language"]
                      )
  end
end
