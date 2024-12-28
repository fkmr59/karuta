class UserMatchesController < ApplicationController
  before_action :set_user_match, only: %i[ show edit update destroy ]

  # GET /user_matches or /user_matches.json
  def index
    @user_matches = UserMatch.all
  end

  # GET /user_matches/1 or /user_matches/1.json
  def show
  end

  # GET /user_matches/new
  def new
    @user_match = UserMatch.new
  end

  # GET /user_matches/1/edit
  def edit
  end

  # POST /user_matches or /user_matches.json
  def create
    @user_match = UserMatch.new(user_match_params)

    respond_to do |format|
      if @user_match.save
        format.html { redirect_to @user_match, notice: "User match was successfully created." }
        format.json { render :show, status: :created, location: @user_match }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_matches/1 or /user_matches/1.json
  def update
    respond_to do |format|
      if @user_match.update(user_match_params)
        format.html { redirect_to @user_match, notice: "User match was successfully updated." }
        format.json { render :show, status: :ok, location: @user_match }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_match.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_matches/1 or /user_matches/1.json
  def destroy
    @user_match.destroy!

    respond_to do |format|
      format.html { redirect_to user_matches_path, status: :see_other, notice: "User match was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_match
      @user_match = UserMatch.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def user_match_params
      params.expect(user_match: [ :user_id, :match_id ])
    end
end
