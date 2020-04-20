class Author

  attr_accessor :name

  @@post_count = 0
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def posts 
    Post.all.select do |post|
      post.author == self 
    end
  end
  
      
  def add_post(post)
    Post.all.select do |post|
    post.author = self
    @@post_count += 1
  end
end 

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end
end