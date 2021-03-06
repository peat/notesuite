class NotesController < ApplicationController
  # GET /notes
  # GET /notes.xml
  def index
    # ToDo figure out how to get #sort_key into ARel; it's a series of long joins!
    # @notes = Note.all.sort {|a,b| a.sort_key <=> b.sort_key }.paginate :page => params[:page]
    @notes = NoteCatalog.order('currency_region, master_code').paginate :page => params[:page]

    @note = Note.new

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @notes }
      format.txt
    end
  end
  
  def search
    @notes = NoteCatalog.search( params[:q] ).paginate :page => params[:page]
    @note = Note.new

    respond_to do |format|
      format.html { render :action => 'index' }
      format.xml  { render :xml => @notes }
    end    
  end

  # GET /notes/1
  # GET /notes/1.xml
  def show
    @note = Note.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @note }
    end
  end

  # GET /notes/new
  # GET /notes/new.xml
  def new
    @note = Note.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @note }
    end
  end

  # GET /notes/1/edit
  def edit
    @note = Note.find(params[:id])
  end

  # POST /notes
  # POST /notes.xml
  def create
    @note = Note.new(params[:note])

    respond_to do |format|
      if @note.save
        session[:last_note] = @note.id
        session[:last_master] = @note.master.id
        session[:last_currency] = @note.currency.id
        flash[:notice] = "Note '#{@note.master.name}' was successfully created."
        format.html {  redirect_to :back  }
        format.xml  { render :xml => @note, :status => :created, :location => @note }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /notes/1
  # PUT /notes/1.xml
  def update
    @note = Note.find(params[:id])

    respond_to do |format|
      if @note.update_attributes(params[:note])
        flash[:notice] = 'Note was successfully updated.'
        format.html { redirect_to(@note) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @note.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.xml
  def destroy
    @note = Note.find(params[:id])
    @note.destroy

    respond_to do |format|
      format.html { redirect_to(notes_url) }
      format.xml  { head :ok }
    end
  end
end
