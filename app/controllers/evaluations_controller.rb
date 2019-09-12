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
  if @evaluation.update(evaluation_params)
    flash[:notice] = "updated"
    redirect_to @evaluation
  else
    flash[:error] = "Something went wrong"
    render 'edit'
  end
end

def evaluation_params
  params.require(:evaluation).permit(:quality_ev, :time_ev, :organization_ev)
end

end
