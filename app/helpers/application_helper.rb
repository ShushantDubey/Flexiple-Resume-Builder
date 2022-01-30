module ApplicationHelper
        def image_for(user)
        if !user.profile.avatar.attached?
            gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
            gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
            return gravatar_url
        else
            return user.profile.avatar
    end
    end

end
