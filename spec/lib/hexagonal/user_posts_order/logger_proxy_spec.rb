require "spec_helper"
require "user_posts_order"

describe Hexagonal::UserPostsOrder::LoggerProxy do
  let(:logger) { stub(info: nil) }
  let(:deps)   { stub(logger: logger) }
  it 'logs success' do
    uc     = Hexagonal::UserPostsOrder.new_with_logging(deps)
    logger.should_receive(:info)
    uc.__getobj__.should_receive(:post)
    uc.post
  end

  it "logs errors" do
    
  end
end
