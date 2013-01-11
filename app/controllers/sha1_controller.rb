class Sha1Controller < ApplicationController
  # GET /textos
  # GET /textos.json
  def index
    @texto = params[:texto]
    @sha1 = Digest::SHA1.hexdigest params[:texto] if !params[:texto].nil? && !params[:texto].blank?
    @md5 = Digest::MD5.hexdigest params[:texto] if !params[:texto].nil? && !params[:texto].blank?
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def create
    @texto = params[:texto]
    @sha1 = Digest::SHA1.hexdigest params[:texto] if !params[:texto].nil? && !params[:texto].blank?
    @md5 = Digest::MD5.hexdigest params[:texto] if !params[:texto].nil? && !params[:texto].blank?
    render :index
  end

end
