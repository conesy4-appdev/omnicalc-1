class ApplicationController < ActionController::Base
  def blank_square_form

    render({ :template => "calculation_templates/square_form.html.erb"})
  end

  def calculate_square

    # params = {"number"=>42}

    @num = params.fetch("number").to_f
    @square = @num * @num

    render({ :template => "calculation_templates/square_results.html.erb"})
  end

  def sqrt_form

    render({ :template => "calculation_templates/sqrt_form.html.erb"})
  end

  def calculate_sqrt

    @num = params.fetch("number").to_f
    @sqrt = @num ** 0.5
    
    render({ :template => "calculation_templates/sqrt_results.html.erb"})
  end

  def random_form

    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random

    @lower = params.fetch("min").to_f
    @upper = params.fetch("max").to_f
    @result = rand(@lower..@upper)

    render({ :template => "calculation_templates/random_results.html.erb"})
  end

end
