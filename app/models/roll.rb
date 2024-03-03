class Roll < ApplicationRecord
  enum :status, { pending: 0, in_progress: 1, shot: 2, processing: 3, developed: 4, scanned: 5 }, default: :pending
  enum :film_type, { full_frame: 0, half_frame: 1, medium: 1, large4: 2, large8: 3 }, default: :full_frame

  has_many :scans
  has_many :images, through: :scans
end
