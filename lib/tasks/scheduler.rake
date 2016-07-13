require 'net/http'
desc "This task is called by the Heroku scheduler add-on"
task :send_sms => :environment do
    unless Date.today.thursday?
        url = URI.parse('http://bolosexta.herokuapp.com/messages/reply')
        req = Net::HTTP::Get.new(url.to_s)
        res = Net::HTTP.start(url.host, url.port) {|http|
            http.request(req)
        }
    end
end

