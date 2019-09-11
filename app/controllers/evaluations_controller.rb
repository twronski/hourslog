class EvaluationsController < ApplicationController

def index
  @evaluations = Evaluation.all
end


def edit
  @evaluation = Evaluation.find(params[:id])
end

def show
  @evaluation = Evaluation.find(params[:id])
end

def update
  @evaluation = Evaluation.find(params[:id])
    if @evaluation.update_attributes(params[:evaluation])
      flash[:success] = "Object was successfully updated"
      redirect_to @evaluation
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
end


end
