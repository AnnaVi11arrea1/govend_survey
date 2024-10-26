class StepsController < ApplicationController
  include Wicked::Wizard
  steps :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10, :step11, :step12


  def show
    @survey = current_user.survey
    render_wizard 
  end

  def update
    @survey = current_user.survey
    @survey.attributes = params[:survey]
    render_wizard @survey 
  end
end
