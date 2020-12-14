class HomeController < ApplicationController
    def index
        #@study_items = StudyItem.all
                
        @study_items = [
            StudyItem.new(title: 'Ruby', category: 'Ruby', description: '...'),
            StudyItem.new(title: 'OO', category: 'Ruby', description: '...'),
            StudyItem.new(title: 'Rails', category: 'Rails', description: '...')
        ]
    end
end