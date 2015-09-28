class GradeReportsController < ApplicationController
  before_filter :ensure_admin!

  def generate_report
  end
end
