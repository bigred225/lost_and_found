class FoundItemsController < ApplicationController
  before_action :set_found_item, only: %i[ show edit update destroy ]

  # GET /found_items or /found_items.json
  def index
    @found_items = FoundItem.all
  end

  # GET /found_items/1 or /found_items/1.json
  def show
  end

  # GET /found_items/new
  def new
    @found_item = FoundItem.new
  end

  # GET /found_items/1/edit
  def edit
  end

  # POST /found_items or /found_items.json
  def create
    @found_item = FoundItem.new(found_item_params)

    respond_to do |format|
      if @found_item.save
        format.html { redirect_to @found_item, notice: "Found item was successfully created." }
        format.json { render :show, status: :created, location: @found_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @found_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /found_items/1 or /found_items/1.json
  def update
    respond_to do |format|
      if @found_item.update(found_item_params)
        format.html { redirect_to @found_item, notice: "Found item was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @found_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @found_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /found_items/1 or /found_items/1.json
  def destroy
    @found_item.destroy!

    respond_to do |format|
      format.html { redirect_to found_items_path, notice: "Found item was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_found_item
      @found_item = FoundItem.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def found_item_params
      params.expect(found_item: [ :name, :description, :location, :date_found, :expiration_date ])
    end
end
