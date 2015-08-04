class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, :registerable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable, :lockable

 has_many :project, dependent: :destroy

  def is_admin?
     self.tipo == 1
  end
end
