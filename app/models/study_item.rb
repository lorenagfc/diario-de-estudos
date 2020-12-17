class StudyItem < ApplicationRecord
    validates :title, :category, presence: {message: 'não pode ficar em branco!'}
end
