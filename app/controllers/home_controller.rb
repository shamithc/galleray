class HomeController < ApplicationController
  def index
    @data_entry =DataEntry.new
    #@cat=DataEntryCategory
    @data_entry_image=DataEntryImage.new
  end

  def save_data
    #render :text=>params['Add'] and return
    if params[:Add]=='Save'
      @data_entry=DataEntry.new(params[:data_entry])
      @data_entry_image=DataEntryImage.new(params[:data_entry_image])
      if @data_entry.save
        if @data_entry_image.save
          @data_entry_image.update_attributes(:data_entry_id=> @data_entry.id)
        else
          @data_entry.delete
          #render :text=>"no image" and return
          render :action => "index" and return
        end
        redirect_to :action => "show_gallery"
      else
        render :action => "index"
      end
    else
      redirect_to :action=>"index"
    end
  end

  def show_gallery
    @data_entry=DataEntry.find(:all)
  end
end
