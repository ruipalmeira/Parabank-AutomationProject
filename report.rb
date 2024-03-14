require 'report_builder'

time = Time.now

puts "Generating report..."
ARGV.each do |path|
  ReportBuilder.configure do |config|
    config.json_path = "#{path}/report.json"
    config.report_path = "#{path}/report"
    config.report_types = [:html]
    config.report_title = 'Parabank Website Automated Test Report'
    config.compress_images = true
    config.additional_info = { 'Generated at' => time }
  end
  ReportBuilder.build_report
end
puts "Report generated."
