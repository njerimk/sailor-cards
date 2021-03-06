class UserSerializer 

    def initialize(user_object)
        @user = user_object
    end

    def to_serialized_json
       @user.to_json(:include => {
           :characters => {:except => [:created_at, :updated_at]},
           :games => {:except => [:created_at, :updated_at]}
       })
    end 

end