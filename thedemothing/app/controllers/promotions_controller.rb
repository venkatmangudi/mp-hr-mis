class PromotionsController < InheritedResources::Base
	def new
  		@promotion = Promotion.new(:employee_id => params[:id])
	end

	def create
		@promotion = Promotion.new(params[:promotion])
		    respond_to do |format|
		      if @promotion.save
		        format.html { redirect_to @promotion, notice: 'promotion was successfully created.' }
		        format.json { render json: @promotion, status: :created, location: @promotion }
		      else
		        format.html { render action: "new" }
		        format.json { render json: @promotion.errors, status: :unprocessable_entity }
		      end
    		end
	end
end
