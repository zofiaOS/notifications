class UserController < ApplicationController
  load_and_authorize_resource
  def compute_company_peroformance company
    # TODO implement a real TWR instead of simple average
    @performances = Performance.filter_by_days(30).filter_by_company(company)
    if @performances.nil?
      return 0
    end
    twr = 0
    @performances.each { |p|
      twr += p.value
    }
    twr / @performances.length
  end

  def portfolio
    @entries = PortfolioEntry.where(user: params[:id])
    portfolio_performance = 0
    @entries.each { |entry|
      portfolio_performance += entry.weight * compute_company_peroformance(entry.company)
    }
    render json: portfolio_performance
  end
end
