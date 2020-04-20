class Author 
  @@post_count = 0
  
  attr_accessor :name
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all >> self
    
  end
  
  def posts
     Post.all.select do |entry|
      entry.author == self #self is referring to the instance
    end
  end
  
  def add_post(post)
    Post.all.select do |post|
      post.author = self #self is referring to the instance
      @@post_count += 1
    end
  end
  
  def add_post_by_title(title)
    post = Post.new(title)
    post.author = self
    @@post_count += 1
  end
  
  def self.post_count 
    @@post_count
  end
  
  
end