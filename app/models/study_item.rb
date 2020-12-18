class StudyItem < ApplicationRecord
    validates :title, :category, presence: {message: 'não pode ficar em branco!'}

    def overdue?
        if due_date > Date.current && status == 'Concluído'
            return false
        end
    end
end
