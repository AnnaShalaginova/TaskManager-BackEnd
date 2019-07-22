# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :user
  validates :text, :user, presence: true
end
