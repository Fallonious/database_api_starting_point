class Profile < ActiveRecord::Base
  # validates :username, presence: true, uniqueness: true
  # before_create :parse


  def self.create_from_username(username)
    response = HTTParty.get(
        "https://api.github.com/users/#{username}",
        :headers => {"Authorization" => "token #{ENV['GITHUB_TOKEN']}",
                     "User-Agent" => "anyone"
                    }
      )
    if response["login"]
      Profile.create(body: response,
                    number_following: response["following"],
                    username: response["username"],
                    avatar_url: response["avatar_url"],
                    location: response["location"],
                    company_name: response["company"],
                    number_of_followers: response["followers"]
      )
    else
      return nil
    end
  end

end
