class InstitutionMastersController < InheritedResources::Base
	def new
  		@institution_master = InstitutionMaster.new(:employee_id => params[:id])
	end

	def create
		@institution_master = InstitutionMaster.new(params[:institution_master])
		    respond_to do |format|
		      if @institution_master.save
		        format.html { redirect_to @institution_master, notice: 'institution_master was successfully created.' }
		        format.json { render json: @institution_master, status: :created, location: @institution_master }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @institution_master.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
