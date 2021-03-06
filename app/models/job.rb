class Job < ApplicationRecord
  validates :title, presence: true
  validates :wage_upper_bound, presence: true
  validates :wage_lower_bound, presence: true
  validates :wage_lower_bound, numericality: { greater_than: 0}
  validates :wage_lower_bound, numericality: {less_than: :wage_upper_bound }
  validates_presence_of :job_type
  validates_presence_of :company
  validates_presence_of :location

  JOB_TYPE = %w(Full-time Part-time Freelance Remote Internship Other)
  validates_inclusion_of :job_type, in: JOB_TYPE

  scope :published, -> {where(is_hidden: false)}
  scope :recent, -> {order("created_at DESC")}

  has_many :resumes

  def publish!
    self.is_hidden = false
    self.save
  end

  def hide!
    self.is_hidden = true
    self.save
  end
end
