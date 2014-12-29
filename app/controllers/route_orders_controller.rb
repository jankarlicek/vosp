class RouteOrdersController < ApplicationController
  before_action :set_route_order, only: [:show, :edit, :update, :destroy]

  # GET /route_orders
  # GET /route_orders.json
  def index
    @route_orders = RouteOrder.all

    #sql = "Select * from route_orders"
    #@routy = ActiveRecord::Base.connection.execute(sql)
    #@coordinaty = RouteOrder.Coordinates.all
    @nodes = Node.all

  end

  # GET /route_orders/1
  # GET /route_orders/1.json
  def show
  end

  # GET /route_orders/new
  def new
    @route_order = RouteOrder.new
  end

  # GET /route_orders/1/edit
  def edit
  end

  # POST /route_orders
  # POST /route_orders.json
  def create
    @route_order = RouteOrder.new(route_order_params)

    respond_to do |format|
      if @route_order.save
        format.html { redirect_to @route_order, notice: 'Route order was successfully created.' }
        format.json { render :show, status: :created, location: @route_order }
      else
        format.html { render :new }
        format.json { render json: @route_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /route_orders/1
  # PATCH/PUT /route_orders/1.json
  def update
    respond_to do |format|
      if @route_order.update(route_order_params)
        format.html { redirect_to @route_order, notice: 'Route order was successfully updated.' }
        format.json { render :show, status: :ok, location: @route_order }
      else
        format.html { render :edit }
        format.json { render json: @route_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_orders/1
  # DELETE /route_orders/1.json
  def destroy
    @route_order.destroy
    respond_to do |format|
      format.html { redirect_to route_orders_url, notice: 'Route order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_order
      @route_order = RouteOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_order_params
      params[:route_order]
    end
end
