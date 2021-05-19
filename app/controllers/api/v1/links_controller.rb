class Api::V1::LinksController < ApplicationController
  before_action :set_link, only: [:show, :update, :destroy]

  def index
    @links = Link.all
    render json: {status: 'SUCCESS', message: 'Loaded links', data: @links}, status: :ok
  end

  def show
    @link = Link.find(params[:id])
    render json: {status: 'SUCCESS', message: 'Loaded link', data: @link}, status: :ok
  end

  def create
    @link = Link.new(link_params)

    if @link.save
      render json: {status: 'SUCCESS', message: 'Created link', data: @link}, status: :created
    else
      render json: {status: 'ERROR', message: 'Link not created', data: @link.errors}, status: :unprocessable_entity
    end
  end

  def update
    if @link.update(link_params)
      render json: {status: 'SUCCESS', message: 'Updated link', data: @link}, status: :created
    else
      render json: {status: 'ERROR', message: 'Link not updated', data: @link.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    @link.destroy
    render json: {status: 'SUCCESS', message: 'Deleted link', data: @link}, status: :ok
  end

  private
    def set_link
      @link = Link.find(params[:id])
    end

    def link_params
      params.require(:link).permit(:title, :text)
    end
end
