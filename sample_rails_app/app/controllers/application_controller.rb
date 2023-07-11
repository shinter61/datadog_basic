class ApplicationController < ActionController::Base
  def index
    Datadog::Tracing.trace('index', service: 'sre-onboarding-shinta', resource: 'GET /') do |span|
      render status: :ok, json: { body: 'Hello, OKuRa!' }
    end
  end
end
