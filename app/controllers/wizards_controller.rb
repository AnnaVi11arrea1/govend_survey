class WizardsController < ApplicationController
  include Wicked::Wizard

  steps :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10, :step11, :step12

  def index
  end

  def show

    render_wizard 
  end

  def update
    @survey = Survey.new
    case @step
      when step do |assign|
        assign.assign_attributes(survey_params)
      end
    end

    render_wizard @survey
  end

  private

  def survey_params
    params.require(:survey).permit(:question1, :question2, :question3, :question4, :question5, :question6, :question7, :question8, :question9, :question10, :question11, :question12)
  end
end
