class ClientsController < ApplicationController
  layout false

  def show
    @client = Client.find_by_slug(params[:id])
    raise ActiveRecord::RecordNotFound if @client.blank?
    I18n.locale = @client.language if @client.language.present?
  end

end
