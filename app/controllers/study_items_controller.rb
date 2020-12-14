class StudyItemsController < ApplicationController

    def new
        @study_item = StudyItem.new
    end

    def create
        @study_item = StudyItem.new(params.require(:study_item)
                                          .permit(:title, :description, :category))
        @study_item.save
        redirect_to root_path
    end
    def edit
        @study_item = StudyItem.find(params[:id])
    end
    def update
        @study_item = StudyItem.find(params[:id])
        @study_item.update(params.require(:study_item)
                                 .permit(:title, :description, :category))
        redirect_to root_path
    end    
    def destroy
        study_item = StudyItem.find(params[:id])
        study_item.destroy
        redirect_to root_path
    end

end