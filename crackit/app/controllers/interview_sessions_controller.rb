class InterviewSessionsController < ApplicationController
  # GET /interview_sessions
  # GET /interview_sessions.json
  def index
    @interview_sessions = InterviewSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @interview_sessions }
    end
  end

  # GET /interview_sessions/1
  # GET /interview_sessions/1.json
  def show
    @interview_session = InterviewSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interview_session }
    end
  end

  # GET /interview_sessions/new
  # GET /interview_sessions/new.json
  def new
    @interview_session = InterviewSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interview_session }
    end
  end

  # GET /interview_sessions/1/edit
  def edit
    @interview_session = InterviewSession.find(params[:id])
  end

  # POST /interview_sessions
  # POST /interview_sessions.json
  def create
    @interview_session = InterviewSession.new(params[:interview_session])

    respond_to do |format|
      if @interview_session.save
        format.html { redirect_to @interview_session, notice: 'Interview session was successfully created.' }
        format.json { render json: @interview_session, status: :created, location: @interview_session }
      else
        format.html { render action: "new" }
        format.json { render json: @interview_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /interview_sessions/1
  # PUT /interview_sessions/1.json
  def update
    @interview_session = InterviewSession.find(params[:id])

    respond_to do |format|
      if @interview_session.update_attributes(params[:interview_session])
        format.html { redirect_to @interview_session, notice: 'Interview session was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @interview_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interview_sessions/1
  # DELETE /interview_sessions/1.json
  def destroy
    @interview_session = InterviewSession.find(params[:id])
    @interview_session.destroy

    respond_to do |format|
      format.html { redirect_to interview_sessions_url }
      format.json { head :no_content }
    end
  end
end
