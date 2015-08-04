class NotificationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_notification, only: [:show, :edit, :update, :destroy]
  before_action :set_customers, only: [:edit, :new]
  before_action :set_project, only: [:edit, :new]

  # GET /notifications
  # GET /notifications.json
  def index
    if !current_user.is_admin? || ( params[:project_id] && current_user.is_admin?) #Un cliente
     @notifications = Notification.where(project_id: params[:project_id]).order('date DESC')
     #raise 'Oops'
   else
     @notifications = Notification.all.order('date DESC')
   end
  end

  # GET /notifications/1
  # GET /notifications/1.json
  def show
    @attachments = Attachment.where(notification_id: @_params[:id])

    @notification.mark_as_read!(true) if params[:cambiar_estado] == 'Leida'
    @notification.mark_as_read!(false) if params[:cambiar_estado] == 'NoLeida'
  end

  # GET /notifications/new
  def new
    @notification = Notification.new
  end

  # GET /notifications/1/edit
  def edit
    @project = @notification.project
    params[:project_id] = @project.id
  end

  # POST /notifications
  # POST /notifications.json
  def create
    @project = Project.find(@_params[:notification][:project_id].to_i)
    @notification = @project.notifications.build(notification_params)
    #@notification = Notification.new(notification_params)

    respond_to do |format|
      if @notification.save
        # Tell the NotificationMailer to send a notification email after save
        NotificationMailer.new_notification_email(@project).deliver_now

        format.html { redirect_to @notification, notice: 'Notification was successfully created.' }
        format.json { render :show, status: :created, location: @notification }
      else
        format.html { render :new }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notifications/1
  # PATCH/PUT /notifications/1.json
  def update
    respond_to do |format|
      if @notification.update(notification_params)
        format.html { redirect_to @notification, notice: 'Notification was successfully updated.' }
        format.json { render :show, status: :ok, location: @notification }
      else
        format.html { render :edit }
        format.json { render json: @notification.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notifications/1
  # DELETE /notifications/1.json
  def destroy
    @notification.destroy
    respond_to do |format|
      format.html { redirect_to project_notifications_url, notice: 'Notification was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_project
      @projects = Project.where("user_id = ?", params[:user_id])
      respond_to do |format|
        format.js
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notification
      @notification = Notification.find(params[:id])
    end

    def set_customers
      #User.includes("projects").where(projects: {user_id: id})
      @customers = User.where(tipo: 2)
    end

    def set_project
      if params[:project_id]
        @project = Project.find(params[:project_id])
      else
        @projects = Project.all
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notification_params
      params.require(:notification).permit(:project_id, :title, :date, :message, :user_id)
    end
end
