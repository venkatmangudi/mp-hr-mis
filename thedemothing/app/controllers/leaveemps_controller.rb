class LeaveempsController < InheritedResources::Base
	def new
  		@leaveemp = Leaveemp.new(:employee_id => params[:id])
	end

	def create
		@leaveemp = Leaveemp.new(params[:leaveemp])
		    respond_to do |format|
		      if @leaveemp.save
		        format.html { redirect_to @leaveemp, notice: 'leaveemp was successfully created.' }
		        format.json { render json: @leaveemp, status: :created, location: @leaveemp }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @leaveemp.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
