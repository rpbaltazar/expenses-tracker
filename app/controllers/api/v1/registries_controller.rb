module Api
  module V1
    class RegistriesController < ApplicationController
      skip_before_filter  :verify_authenticity_token
      before_action :authorized_params, only: [:create]

      def index
        registries = Registry.all
        render json: registries.to_json
      end

      def show
        registry = Registry.find(params[:id])
        render json: registry.to_json
      end

      def create
        registry = Registry.new(
          total_value: @value,
          reg_date: @date,
          description: @description,
          reg_type: 'Outcome'
        )

        registry = registry.save
        render json: registry
      end

      def edit
        render json: { message: "Pick it up" }
      end

      def update
        render json: { message: "Pick it up" }
      end

      def destroy
        render json: { message: "Pick it up" }
      end

      private

      def authorized_params
        @value = params['total_value']
        @date = params['reg_date']
        @description = params['description']
      end
    end
  end
end
