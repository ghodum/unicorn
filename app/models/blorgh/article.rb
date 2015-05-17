class Blorgh::Article < ActiveRecord::Base
  include Blorgh::Concerns::Article

  def time_since_created
    Time.current - created_at
  end

  def summary
    "#{title} - #{text}"
  end
end