class WizardsController < ApplicationController
 
  include Wicked::Wizard

  steps :step1, :step2, :step3, :step4, :step5, :step6, :step7, :step8, :step9, :step10, :step11, :step12  

  # GET /wizards or /wizards.json
  def index
    @wizards = Wizard.all
  end

  # GET /wizards/1 or /wizards/1.json
  def show
    
  end

  # GET /wizards/new
  def new
    @wizard = Wizard.new
  end

  # GET /wizards/1/edit
  def edit
  end

  # POST /wizards or /wizards.json
  def create
    @wizard = Wizard.new(wizard_params)

    respond_to do |format|
      if @wizard.save
        format.html { redirect_to @wizard, notice: "Wizard was successfully created." }
        format.json { render :show, status: :created, location: @wizard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wizard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wizards/1 or /wizards/1.json
  def update
    case step
    when :step1
      @wizard.update(wizard_params)
    when :step2
      @wizard.update(wizard_params)
    when :step3
      @wizard.update(wizard_params)
    when :step4
      @wizard.update(wizard_params)
    when :step5
      @wizard.update(wizard_params)
    when :step6
      @wizard.update(wizard_params)
    when :step7
      @wizard.update(wizard_params)
    when :step8
      @wizard.update(wizard_params)
    when :step9
      @wizard.update(wizard_params)
    when :step10
      @wizard.update(wizard_params)
    when :step11
      @wizard.update(wizard_params)
    when :step12
      @wizard.update(wizard_params)
    end
    
  end

  # DELETE /wizards/1 or /wizards/1.json
  def destroy
    @wizard.destroy!

    respond_to do |format|
      format.html { redirect_to wizards_path, status: :see_other, notice: "Wizard was successfully destroyed." }
      format.json { head :no_content }
    end
  end


end
