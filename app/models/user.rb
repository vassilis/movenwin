class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def add_points(pts)
  	self.current_pts = self.current_pts + pts
  	self.total_pts = self.total_pts + pts
  end

  def remove_points(pts)
  	self.current_pts = self.current_pts - pts.to_i
  end
end
