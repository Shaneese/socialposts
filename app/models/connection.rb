class Connection < ActiveRecord::Base
    belongs_to :user
    
    def self.create_from_omniauth(auth_hash)
        create[
        provider: auth_hash.provider,
        oath_token: auth_hash.credentials.token,
        secret: auth_hash.credentials.secret
        ]
    end
end
