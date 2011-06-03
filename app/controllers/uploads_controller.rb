class UploadsController < ApplicationController
  def index
    @uploads = Upload.all
  end

  def show
    @upload = Upload.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @upload }
    end
  end

  def new
    @upload = Upload.new
  end

  def create
    @upload = Upload.new(params[:upload])

    respond_to do |format|
      if @upload.save
        format.html { redirect_to(@upload, :notice => 'Upload was successfully added.') }
        format.xml  { render :xml => @upload, :status => :created, :location => @upload }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end

  def edit
    @upload = Upload.find(params[:id])
  end
  
  def destroy
    @upload = Upload.find(params[:id])
    @upload.destroy
    
    respond_to do |format|
      format.html { redirect_to(uploads_url) }
      format.xml  { head :ok }
    end
  end

  def update
    @upload = Discussion.find(params[:id])

    respond_to do |format|
      if @upload.update_attributes(params[:discussion])
        format.html { redirect_to(@upload, :notice => 'Discussion was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @upload.errors, :status => :unprocessable_entity }
      end
    end
  end
end
