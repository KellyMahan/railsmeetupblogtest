module UsersHelper
  
  def build_tags(post)
    post.tags.build
    post.tags.reverse
  end
  
end
