class PersonPeopleController < ApplicationController
  before_action :set_person_person, only: [:show, :edit, :update, :destroy]

  # GET /person_people
  # GET /person_people.json
  def index
    @person_people = PersonPerson.all
  end

  # GET /person_people/1
  # GET /person_people/1.json
  def show
  end

  # GET /person_people/new
  def new
    @person_person = PersonPerson.new
  end

  # GET /person_people/1/edit
  def edit
  end

  # POST /person_people
  # POST /person_people.json
  def create
    @person_person = PersonPerson.new(person_person_params)

    respond_to do |format|
      if @person_person.save
        format.html { redirect_to @person_person, notice: 'Person person was successfully created.' }
        format.json { render :show, status: :created, location: @person_person }
      else
        format.html { render :new }
        format.json { render json: @person_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_people/1
  # PATCH/PUT /person_people/1.json
  def update
    respond_to do |format|
      if @person_person.update(person_person_params)
        format.html { redirect_to @person_person, notice: 'Person person was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_person }
      else
        format.html { render :edit }
        format.json { render json: @person_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_people/1
  # DELETE /person_people/1.json
  def destroy
    @person_person.destroy
    respond_to do |format|
      format.html { redirect_to person_people_url, notice: 'Person person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_person
      @person_person = PersonPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_person_params
      params.require(:person_person).permit(:first_name, :last_name, :age)
    end
end
