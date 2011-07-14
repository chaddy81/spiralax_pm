module UsersHelper
  
  def gravatar(email, size = 100)
    the_hash = Digest::MD5.hexdigest(email).to_s
    image_tag "http://www.gravatar.com/avatar/#{the_hash}?s=#{size}&d=mm", :class => 'gravatar'
  end
  
  def role?(role)
    return !!self.roles.find_by_name(role.to_s)
  end
  
end
