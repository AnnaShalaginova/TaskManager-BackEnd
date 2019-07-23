# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
end
