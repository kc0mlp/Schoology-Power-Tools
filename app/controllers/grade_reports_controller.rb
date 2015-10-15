require "#{Rails.root}/lib/schoology_module/schoology_student"
class GradeReportsController < ApplicationController
  before_filter :ensure_admin!

  def generate_report

    #Fake User Credentials
    getter = SchoologyStudent('student-1','cca123456','http://schoology.ccaschools.org/login?&school=111100897')

    getter.openSession



    # Setup Oauth consumer info for header
    # ToDo: Convert this to environment config
    consumer = OAuth::Consumer.new('6bef9cd9f459440b429c1d9186c180d5055aeb4b9', '6dbf4181976a60b0ea93a61e48fcb99f',
                                   {
                                       :site => 'https://api.schoology.com/v1',
                                       :scheme => :header,
                                       :http_method => :get
                                   })
    resp = consumer.request(:get, '/schools/111100897/buildings')

    json = JSON.parse(resp.body)

    @buildings = json['building']


  end
end
