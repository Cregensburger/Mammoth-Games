class CommentsController < ApplicationController
	before_action :set_comment, only: [:show, :edit, :update, :destroy]

  	before_filter :authenticate_user!, except: [:index]
	#security so that only the proper user can edit/delete posts
	def set_pin
	  @pin = current_user.pins.find(params[:id])
	end

	# GET /pins
	# GET /pins.json
	def index
		@comment = Comment.all
	end
	# GET /pins/1
	# GET /pins/1.json
	def show
		@comment = Comment.find(params[:id])
	end
	# GET /pins/new
	def new
		@comment = current_user.comments.new
	end

	# GET /pins/1/edit
	def edit
	end

  # POST /pins
  # POST /pins.json
	def create
		@comment = current_user.pins.new(comment_params)
			respond_to do |format|
			  if @comment.save
			    format.html { redirect_to @comment, notice: 'Pin was successfully created.' }
			    format.json { render action: 'show', status: :created, location: @comment }
			  else
			    format.html { render action: 'new' }
			    format.json { render json: @comment.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /pins/1
	# PATCH/PUT /pins/1.json
	def update
	    respond_to do |format|
	      if @comment.update(comment_params)
	        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: 'comment' }
	        format.json { render json: @comment.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /pins/1
	# DELETE /pins/1.json
	  def destroy
	    @pin.destroy
	    respond_to do |format|
	      format.html { redirect_to pins_url }
	      format.json { head :no_content }
	    end
	  end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_pin
		@pin = Pin.find(params[:id])
	end

   def comment_params
        params.require(:comment).permit(:user_id, :title, :body)
   end
end