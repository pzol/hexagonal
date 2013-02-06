# Dir.glob(File.expand_path('../user_posts_order/*.rb', __FILE__)) { |file| require file }
require_relative 'user_posts_order/dependencies'
require_relative 'user_posts_order/logger_proxy'

class Hexagonal::UserPostsOrder
  def initialize(deps=Dependencies.new)
    @deps = deps
  end

  def post
    puts "real"
  end
end
