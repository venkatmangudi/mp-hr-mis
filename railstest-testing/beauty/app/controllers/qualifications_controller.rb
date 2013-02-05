class QualificationsController < InheritedResources::Base
	def new
  		@qualification = Qualification.new(:employee_id => params[:id])
	end

	def create
		@qualification = Qualification.new(params[:qualification])
		    respond_to do |format|
		      if @qualification.save
		        format.html { redirect_to @qualification, notice: 'Qualification was successfully created.' }
		        format.json { render json: @qualification, status: :created, location: @qualification }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @qualification.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
