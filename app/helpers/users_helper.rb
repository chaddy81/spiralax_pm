module UsersHelper
  
  def gravatar(email, size = 100)
    the_hash = Digest::MD5.hexdigest(email).to_s
    image_tag "http://www.gravatar.com/avatar/#{the_hash}?s=#{size}&d=mm", :class => 'gravatar'
  end
  
end
