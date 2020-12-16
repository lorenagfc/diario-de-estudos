class StudyItemsController < ApplicationController

    def index
        @study_items = StudyItem.all            
    end

    def new
        @study_item = StudyItem.new
    end
    
    def create
        @study_item = StudyItem.new(params.require(:study_item)
                                          .permit(:title, :description, :category, :status))
        @study_item.save
        redirect_to root_path
    end
    def edit
        set_study_item
    end
    def update
        set_study_item
        @study_item.update(params.require(:study_item)
                                 .permit(:title, :description, :category, :status))
        redirect_to root_path
    end    
    def destroy
        set_study_item
        @study_item.destroy
        redirect_to root_path
    end

    private
        def set_study_item
            @study_item = StudyItem.find(params[:id])
        end
end