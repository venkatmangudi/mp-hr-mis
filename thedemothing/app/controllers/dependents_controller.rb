class DependentsController < InheritedResources::Base
	def new
  		@dependent = Dependent.new(:employee_id => params[:id])
	end

	def create
		@dependent = Dependent.new(params[:dependent])
		    respond_to do |format|
		      if @dependent.save
		        format.html { redirect_to @dependent, notice: 'Dependent was successfully created.' }
		        format.json { render json: @dependent, status: :created, location: @dependent }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @dependent.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
