# encoding: utf-8
class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user , only: [ :index , :show , :edit , :update , :destroy ]
  before_filter :is_admin

  # GET /users
  # GET /users.json
  def index
    @users = User.all

     respond_to do |format|
        format.html { render 'devise/index' }
        format.json { render 'devise/index' }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
  	respond_to do |format|
        format.html { render 'devise/show' }
        format.json { render 'devise/show' }
    end
  end

  # GET /users/new
  def new
    @user = User.new
    respond_to do |format|
        format.html { render 'devise/new' }
        format.json { render 'devise/new' }
    end
  end

  # GET /users/1/edit
  def edit
  	respond_to do |format|
        format.html { render 'devise/edit' }
        format.json { render 'devise/edit' }
    end
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user , notice: 'Usuario registrado correctamente.' }
        format.json { render 'devise/show' , status: :created, location: @user }
      else
        format.html { render 'devise/new' }
        format.json { render json: @user.errors , status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    # Para que devise no de error si falta el pass.
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user , notice: 'Información actualizada correctamente.' }
        format.json { head :no_content }
      else
        format.html { render 'devise/edit' }
        format.json { render json: @user.errors , status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to :back , status: 303 , notice: 'Usuario borrado correctamente.' }
      # format.html { redirect_to users_url, notice: 'Usuario borrado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      if !params[:id].blank?
        @user = User.find_by_id(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit( :email , :nombre , :tipo , :habilitado, :password , :password_confirmation )
    end

    def is_admin
      unless current_user.is_admin?
        respond_to do |format|
          format.html do
             redirect_to(root_path, alert: 'Acceso denegado para su usuario.')
             return false
          end
        end
      end
    end

end
