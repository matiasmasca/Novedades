require 'open-uri'

class AttachmentsController < ApplicationController
  before_action :set_attachment, only: [:show, :edit, :update, :destroy, :download]
  before_action :set_notification, only: [:edit, :new]

  # GET /attachments
  # GET /attachments.json
  def index
    if !current_user.is_admin? || ( params[:notification_id] && current_user.is_admin?) #Un cliente
     @attachments = Attachment.where(notification_id: params[:notification_id]).order('created_at DESC')
   else
     @attachments = Attachment.all.order('created_at DESC')
   end
  end

  # GET /attachments/1
  # GET /attachments/1.json
  def show
  end

  # GET /attachments/new
  def new
    @attachment = Attachment.new
  end

  # GET /attachments/1/edit
  def edit
  end

  # POST /attachments
  # POST /attachments.json
  def create
    @notification = Notification.find(@_params[:attachment][:notification_id].to_i)
    @attachment = @notification.attachments.build(attachment_params)

    respond_to do |format|
      if @attachment.save
        format.html { redirect_to @attachment, notice: 'Attachment was successfully created.' }
        format.json { render :show, status: :created, location: @attachment }
      else
        format.html { render :new }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attachments/1
  # PATCH/PUT /attachments/1.json
  def update
    respond_to do |format|
      if @attachment.update(attachment_params)
        format.html { redirect_to @attachment, notice: 'Attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @attachment }
      else
        format.html { render :edit }
        format.json { render json: @attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attachments/1
  # DELETE /attachments/1.json
  def destroy
    @attachment.destroy
    respond_to do |format|
      format.html { redirect_to attachments_url, notice: 'Attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def download
    #El send_file falla con esta versión de Refile.
    #dire = (URI.parse(URI.encode(request.base_url + Refile.attachment_url(@attachment, :profile_image)))).to_s
    #send_file Refile.attachment_url(@attachment, :profile_image), filename: @attachment.profile_image_filename, type: @attachment.profile_image_content_type, disposition: :attachment
    file = Refile.store.get(@attachment.profile_image_id).download
    send_file file, filename: @attachment.profile_image_filename, type: @attachment.profile_image_content_type, disposition: :attachment
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attachment
      @attachment = Attachment.find(params[:id])
    end

    def set_notification
      @notification = Notification.find(params[:notification_id]) if params[:notification_id]
      @notification = Notification.find(@attachment.notification_id) if @attachment
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attachment_params
      params.require(:attachment).permit(:id, :title, :notification_id, :profile_image, :remove_profile_image)
    end
end
