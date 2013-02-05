class PostingsController < InheritedResources::Base
	def new
  		@posting = Posting.new(:employee_id => params[:id])
	end

	def create
		@posting = Posting.new(params[:posting])
		    respond_to do |format|
		      if @posting.save
		        format.html { redirect_to @posting, notice: 'Posting was successfully created.' }
		        format.json { render json: @posting, status: :created, location: @posting }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @posting.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
