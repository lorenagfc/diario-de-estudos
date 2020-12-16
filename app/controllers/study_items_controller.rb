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
        @study_item = StudyItem.find(params[:id])
    end
    def update
        @study_item = StudyItem.find(params[:id])
        @study_item.update(params.require(:study_item)
                                 .permit(:title, :description, :category, :status))
        redirect_to root_path
    end    
    def destroy
        study_item = StudyItem.find(params[:id])
        study_item.destroy
        redirect_to root_path
    end

end